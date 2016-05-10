<?php

class Faq extends Echobot
{
    public function process($data)
    {
        $message = $this->_extractMessage($data);
        $sql = "SELECT * FROM faq WHERE MATCH(question) AGAINST (? IN NATURAL LANGUAGE MODE) LIMIT 1";
        $result = $this->app['db']->fetchAssoc($sql, array($message));
        $answer = !empty($result) ? $result['answer'] : '';

        return array('text' => $answer);
    }
}