<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('show/{code}','API\ApiCrap@show');
Route::post('save/result','API\ApiResult@upsertlist');
Route::post('update/get/profile','API\ApiResult@update_get_profile');
Route::post('result/detail','API\ApiResult@show');
Route::post('result/update','API\ApiResult@update');

Route::post('transpool/create','API\ApiTranspool@store');
Route::get('transpool/delete','API\ApiTranspool@delete');
Route::get('transpool','API\ApiTranspool@index');
