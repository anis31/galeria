<?php

use Illuminate\Support\Facades\Route;

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
    return view('child');
});

Route::get('/album', 'AlbumController@index');
Route::get('/album/create', 'AlbumController@create')->name('album.create');
Route::post('/album', 'AlbumController@store')->name('album.store');
Route::get('/album/edit/{id}', 'AlbumController@edit')->name('album.edit');
Route::post('/album/update/{id}', 'AlbumController@update')->name('album.update');
Route::post('/album/delete/{id}', 'AlbumController@destroy')->name('album.destroy');