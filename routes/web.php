<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


//matches localhost:8888/lumen/public/index.php
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/albums', 'AlbumController@getAll');
$router->get('/albums/{id}', 'AlbumController@getOne');
$router->post('/albums/add', 'AlbumController@save');
$router->delete('/albums/delete/{id}', 'AlbumController@delete');


$router->get('/album_intro', 'AlbumIntroController@getAll');
$router->get('/album_intro/{id}', 'AlbumIntroController@getOne');
$router->post('/album_intro/add', 'AlbumIntroController@save');
$router->delete('/album_intro/delete/{id}', 'AlbumIntroController@delete');














