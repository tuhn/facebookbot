<?php

class Upsell extends Echobot
{
    const POSTBACK_BUY_YES = 'upsell_question_yes';
    const POSTBACK_BUY_NO = 'upsell_question_no';
    const POSTBACK_BENEFICIARY_SELF = 'beneficiary_self';
    const POSTBACK_BENEFICIARY_OTHER = 'beneficiary_other';
    const POSTBACK_GENDER_MALE= 'gender_male';
    const POSTBACK_GENDER_FEMALE = 'gender_femal';   

    public function process($data)
    {
        if ($callbackResponse = $this->_processQuestionCallback($data)) {
            return $callbackResponse;
        }

        $userId = $this->_extractUserId($data);
        $message = $this->_extractMessage($data);
        $message = trim(preg_replace("/[^A-Za-z0-9 ]/", '', $message));

        $greetingCheck = $this->_processGreeting($userId, $message);
        if (null !== $greetingCheck) {
            return $greetingCheck;
        }

        $promoCheck = $this->_processPromo($userId, $message);
        if (null !== $promoCheck) {
            return $promoCheck;
        }

        return null;
    }

    protected function _processGreeting($userId, $message)
    {
        $keywords = array('hey', 'hi', 'hello', 'hola', 'hallo');
        $keywordFound = false;
        foreach ($keywords as $word) {
            if ($message === $word || stripos($message, $word.' ') === 0) {
                $keywordFound = true;
                break;
            }
        }

        if ($keywordFound) {
            return $this->_buildUpsellQuestion($userId);
        }

        return null;
    }

    protected function _buildUpsellQuestion($userId)
    {
        $firstName = $this->_getUserField($userId, 'first_name');
        $greet = sprintf('Hi %s, are you looking for a gift?', $firstName);
        
        $question = array(
            'attachment' => array(
                'type' => 'template',
                'payload' => array(
                    'template_type' => 'button',
                    'text' => $greet,
                    'buttons' => array(
                        array(
                            'type' => 'postback',
                            'title' => 'YES',
                            'payload' => self::POSTBACK_BUY_YES
                        ),
                        array(
                            'type' => 'postback',
                            'title' => 'NO',
                            'payload' => self::POSTBACK_BUY_NO
                        ),
                    )
                )
            )
        );

        return $question;
    }

    protected function _processPromo($userId, $message)
    {
        $keywords = array('promotion', 'sales');
        $keywordFound = false;
        $userWords = array_filter(explode(' ', $message));
        foreach ($keywords as $word) {
            if (in_array($word, $userWords)) {
                $keywordFound = true;
            }
        }

        if ($keywordFound) {
            return $this->_buildPromoCarousel();
        }

        return null;
    }

    protected function _buildPromoCarousel()
    {
        $result = $this->app['db']->fetchAll('SELECT * FROM promotion LIMIT 10');
        $elements = array();
        foreach ($result as $row) {
            $elements[] = array(
                'title' => $row['title'],
                'image_url' => $row['image'],
                'subtitle' => $row['subtitle'],
                'buttons' => array(
                    array(
                        'type' => 'web_url',
                        'url' => $row['url'],
                        'title' => 'View'
                    )
                )
            );
        }

        $question = array(
            'attachment' => array(
                'type' => 'template',
                'payload' => array(
                    'template_type' => 'generic',
                    'elements' => $elements
                )
            )
        );

        return $question;
    }

    protected function _processQuestionCallback($data)
    {
        $userId = $this->_extractUserId($data);
        $payload = $this->_extractPayload($data);

        if (!empty($payload)) {
            switch ($payload) {
                case self::POSTBACK_BUY_YES:
                    $botResponse = $this->_buildQuestionBeneficiary();
                    break;
                case self::POSTBACK_BUY_NO:
                    // nothing
                    break;
                case self::POSTBACK_BENEFICIARY_SELF:
                    $botResponse = $this->_buildQuestionTheme();
                    break;
                case self::POSTBACK_BENEFICIARY_OTHER:
                    $botResponse = $this->_buildQuestionGender();
                    break;

            }

            $botResponse = empty($botResponse) ? array('text' => 'It is nice to talk with you.') : $botResponse;

            return $botResponse;
        }

        return null;
    }

    protected function _buildQuestionBeneficiary()
    {
        $question = array(
            'attachment' => array(
                'type' => 'template',
                'payload' => array(
                    'template_type' => 'button',
                    'text' => 'Is it for you for another?',
                    'buttons' => array(
                        array(
                            'type' => 'postback',
                            'title' => 'ME',
                            'payload' => self::POSTBACK_BENEFICIARY_SELF
                        ),
                        array(
                            'type' => 'postback',
                            'title' => 'ANOTHER',
                            'payload' => self::POSTBACK_BENEFICIARY_OTHER
                        ),
                    )
                )
            )
        );

        return $question;
    }

    protected function _buildQuestionGender()
    {
        $question = array(
            'attachment' => array(
                'type' => 'template',
                'payload' => array(
                    'template_type' => 'button',
                    'text' => 'What is gender of that person?',
                    'buttons' => array(
                        array(
                            'type' => 'web_url',
                            'title' => 'MALE',
                            'url' => 'http://www.smartbox.com/fr/coffret-cadeau-homme/'
                        ),
                        array(
                            'type' => 'web_url',
                            'title' => 'FEMALE',
                            'url' => 'http://www.smartbox.com/fr/coffret-cadeau-pour-femme/'
                        ),
                    )
                )
            )
        );

        return $question;
    }

    protected function _buildQuestionTheme()
    {
        $question = array(
            'attachment' => array(
                'type' => 'template',
                'payload' => array(
                    'template_type' => 'button',
                    'text' => 'Which theme do you prefer?',
                    'buttons' => array(
                        array(
                            'type' => 'web_url',
                            'title' => 'Restaurant',
                            'url' => 'http://www.smartbox.com/fr/nos-smartbox/gastronomie/'
                        ),
                        array(
                            'type' => 'web_url',
                            'title' => 'New adventure',
                            'url' => 'http://www.smartbox.com/fr/nos-smartbox/sport-et-aventure/'
                        ),
                        array(
                            'type' => 'web_url',
                            'title' => 'Body care or Spa',
                            'url' => 'http://www.smartbox.com/fr/nos-smartbox/bien-etre/'
                        ),
                    )
                )
            )
        );

        return $question;
    }
}