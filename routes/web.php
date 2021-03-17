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
    return view('welcome');
});

Route::get('/fastfood', function (){
    //get data from db
    $menu = [
        'type' => 'Chicken Nugget',
        'price' => 15000
    ];

    return view('fastfood', $menu);
});

use App\Http\Controllers\ordersController;

use App\Http\Controllers\PetaniWebController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\SiswaController;

//edit
Route::get('/siswa/edit/{params}', [SiswaController::class, 'edit']);
Route::post('/siswa/update', [SiswaController::class, 'update']);
//get all
Route::get('/siswa', [SiswaController::class, 'index']);
//menambah data
Route::get('/siswa/tambah', [SiswaController::class, 'tambah']);
Route::post('/siswa/store', [SiswaController::class, 'store']);
//edit


Route::get('/contact', [PetaniWebController::class, 'index']);
Route::get('/blog', [BlogController::class, 'home']);
Route::get('/blog/tentang', [BlogController::class, 'tentang']);

Route::get('/orders', [ordersController::class, 'index']);