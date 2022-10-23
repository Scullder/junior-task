<?php

namespace Core;

class Controller
{
    protected function view(string $view, array $parameters = null)
    {
        if($parameters !== null) {
            extract($parameters);
        }
        require 'app/views/' . $view;
    }

    protected function redirect($path)
    {
        header('Location: ' . $path);
        exit();
    }
}