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
// e.g. GET /api/queries/5/customer=25category=10
Route::get('/queries/5/customer={customer_id}category={category}', 'QueriesController@query5');
// e.g. GET /api/queries/6/5
Route::get('/queries/6/{roomCategory}', 'QueriesController@query6');
// e.g. GET /api/queries/7/adults=2children=2
Route::get('/queries/7/adults={adults}children={children}', 'QueriesController@query7');
