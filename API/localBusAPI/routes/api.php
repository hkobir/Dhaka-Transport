<?php
use Illuminate\Support\Facades\Route;

Route::get('/places/{r_id}','App\Http\Controllers\PlaceController@getPlace');
Route::get('/routes','App\Http\Controllers\PlaceController@getRoute');
Route::get('/buses/{route}/{source}/{destination}',"App\Http\Controllers\PlaceController@getBuses");
