<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/queries', 'QueriesController@index');
Route::get('/queries/1', 'QueriesController@query1');
Route::get('/queries/2', 'QueriesController@query2');
Route::get('/queries/3', 'QueriesController@query3');
Route::get('/queries/4', 'QueriesController@query4');
