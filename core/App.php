<?php

namespace Core;

class App
{
    public static array $routes;

    public function start()
    {
        $route = $this->parseUrl();

        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            $action = App::$routes['post'][$route];
        }
        else if($_SERVER['REQUEST_METHOD'] === 'GET') {
            $action = App::$routes['get'][$route];
        }

        if(is_array($action)) {
            $action = [new $action[0], $action[1]];
        }

        if(!is_callable($action)) {
            throw new \Exception('route - "' . $route . '" is not callable');
        }

        return call_user_func($action, $_REQUEST);
    }

    static public function get(string $route, Callable|array $action)
    {
        self::$routes['get'][$route] = $action;
    }

    static public function post(string $route, Callable|array $action)
    {
        self::$routes['post'][$route] = $action;
    }

    private function parseUrl()
    {
        return explode('?', $_SERVER['REQUEST_URI'])[0];
    }



}