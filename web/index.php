<?php

require_once __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/../src/ai/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use GuzzleHttp\Client;

if (file_exists(__DIR__ .'/../config.local.php')) {
    require_once __DIR__ .'/../config.local.php';
} else {
    require_once __DIR__ .'/../config.default.php';
}

// proper constants
define('FACEBOOK_SEND_BASE_URI', 'https://graph.facebook.com');
define('FACEBOOK_SEND_URL', FACEBOOK_SEND_BASE_URI . '/v2.6/me/messages?access_token=' . PAGE_ACCESS_TOKEN);
define('FACEBOOK_PROFILE_URL', FACEBOOK_SEND_BASE_URI . '/v2.6/%s?fields=first_name,last_name,profile_pic&access_token=' . PAGE_ACCESS_TOKEN);

$app = new Silex\Application();

$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array(
        'driver'    => 'pdo_mysql',
        'host'      => DB_HOST,
        'dbname'    => DB_NAME,
        'user'      => DB_USER,
        'password'  => DB_PASS
    ),
));

/**
 * Webhook verification
 */
$app->get('/', function (Request $request) {
    $challenge = $request->get('hub_challenge');
    $token = $request->get('hub_verify_token');
    $response = (VERIFY_TOKEN === $token) ? $challenge : 'ERROR';

    return new Response($response, 200);
});

/**
 * Preprocess Facebook JSON request, not normal POST request
 */
$app->before(function (Request $request) {
    if (0 === strpos($request->headers->get('Content-Type'), 'application/json')) {
        $data = json_decode($request->getContent(), true);
        $request->request->replace(is_array($data) ? $data : array());
    }
});

/**
 * Listen and respond to user messages
 */
$app->post('/', function (Request $request) use ($app) {
    $entry = $request->request->get('entry');
    // $entry[0]['messaging'][0]['sender']['id'] = 123;
    // $entry[0]['messaging'][0]['message']['text'] = 'help me';
    $userId = $entry[0]['messaging'][0]['sender']['id'];
    $userMessage = $entry[0]['messaging'][0]['message']['text'];

    if (!empty($userId)) {
        // Setup AI - sort by priority desc
        $aiCollection = array(new Upsell($app), new Faq($app), new Echobot($app));
        $botResponse = array();
        foreach ($aiCollection as $ai) {
            $botResponse = $ai->process($entry);
            if (!empty($botResponse['dispatched'])) {
                return new Response('dispatched', 200);
            }
            if (!empty($botResponse['text']) || !empty($botResponse['attachment'])) {
                break;
            }
        }

        // Log
        //$app['db']->insert('log', array('content' => var_export($botResponse, true)));

        // Send message to user
        $client = new Client(array(
            'base_uri' => FACEBOOK_SEND_BASE_URI,
            'timeout'  => 2.5,
        ));
        $data = array(
            'recipient' => array('id' => $userId),
            'message' => $botResponse
        );
        $response = $client->request('POST', FACEBOOK_SEND_URL, array('json' => $data));
    }

    return new Response('done', 200);
});

$app->run();
