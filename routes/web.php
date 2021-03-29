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
use App\Http\Controllers\MentorController;
use App\Http\Controllers\SiswaController;

use App\Http\Controllers\KelasController;

//relation many to many
Route::get('/kelas', [KelasController::class, 'index']);

use App\Http\Controllers\BlogAuthorController;

//relation one to many
Route::get('/blog-author', [BlogAuthorController::class, 'index']);

use App\Http\Controllers\MuridController;

//relation one to one
Route::get('/murid', [MuridController::class, 'index']);

//searching
Route::get('/siswa/cari', [SiswaController::class, 'cari']);

//Eloquent ORM CRUD
//get all data
Route::get('/mentor', [MentorController::class, 'index']);
//input
Route::get('/mentor/tambah', [MentorController::class, 'tambah']);
Route::post('/mentor/store', [MentorController::class, 'store']);
//edit
Route::get('/mentor/edit/{params}', [MentorController::class, 'edit']);
Route::post('/mentor/update', [MentorController::class, 'update']);
//delete
Route::get('/mentor/hapus/{params}', [MentorController::class, 'hapus']);

//delete
Route::get('/siswa/hapus/{params}', [SiswaController::class, 'hapus']);
//edit
Route::get('/siswa/edit/{params}', [SiswaController::class, 'edit']);
Route::post('/siswa/update', [SiswaController::class, 'update']);
//get all
Route::get('/siswa', [SiswaController::class, 'index']);
//menambah data
Route::get('/siswa/tambah', [SiswaController::class, 'tambah']);
Route::post('/siswa/store', [SiswaController::class, 'store']);


Route::get('/contact', [PetaniWebController::class, 'index']);
Route::get('/blog', [BlogController::class, 'home']);
Route::get('/blog/tentang', [BlogController::class, 'tentang']);

Route::get('/orders', [ordersController::class, 'index']);