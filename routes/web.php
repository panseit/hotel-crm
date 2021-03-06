<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/reservations', 'ReservationsController@index')->name('reservations');
Route::get('/rooms', 'RoomsController@index')->name('rooms');
Route::get('/services', 'ServicesController@index')->name('services');
Route::get('/customers', 'CustomerController@index')->name('customers');
Route::get('/invoices', 'InvoiceController@index')->name('invoices');
