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


Route::view('/', 'admin.master')->name('root');
Route::view('/krafty', 'website.master')->name('website');
Route::view('/home', 'admin.home')->name('home');
Route::view('/customer', 'admin.customer')->name('customers');

