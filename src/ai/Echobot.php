<?php

use GuzzleHttp\Client;

class Echobot implements AiInterface
{
    protected $app;
    protected $userData;

    public function __construct($app)
    {
        $this->app = $app;
    }

    public function process($data)
    {
        $message = $this->_extractMessage($data);

        if (!empty($message)) {
            return array('text' => 'I forwarded your message: "'. $message .'" to our Customer Service.');
        } else {
            return array('dispatched' => true);
        }
    }

    protected function _extractMessage($data)
    {
        if (!empty($data[0]['messaging'][0]['message']['text'])) {
            return $data[0]['messaging'][0]['message']['text'];
        } else {
            return null;
        }
    }

    protected function _extractUserId($data)
    {
        if (!empty($data[0]['messaging'][0]['sender']['id'])) {
            return $data[0]['messaging'][0]['sender']['id'];
        } else {
            return null;
        }
    }

    protected function _extractPayload($data)
    {
        if (!empty($data[0]['messaging'][0]['postback']['payload'])) {
            return $data[0]['messaging'][0]['postback']['payload'];
        } else {
            return null;
        }
    }

    /**
     * @return array(first_name, last_name, profile_pic)
     */
    protected function _getUserData($userId)
    {
        if (null !== $this->userData[$userId]) {
            return $this->userData[$userId];
        }

        $url = sprintf(FACEBOOK_PROFILE_URL, $userId);
        $client = new Client(array(
            'base_uri' => FACEBOOK_SEND_BASE_URI,
            'timeout'  => 2.0,
        ));
        $response = $client->request('GET', $url);
        $this->userData[$userId] = json_decode($response->getBody()->getContents(), true);

        return $this->userData[$userId];
    }

    protected function _getUserField($userId, $field)
    {
        $data = $this->_getUserData($userId);
        $result = !empty($data[$field]) ? $data[$field] : '';
        
        return $result;
    }
}