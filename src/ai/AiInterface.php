<?php

interface AiInterface
{
    public function __construct($app);
    public function process($data);
}