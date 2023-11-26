<?php

use App\Http\Controllers\Back\ArtikelController;
use App\Http\Controllers\Back\DashboardController;
use App\Http\Controllers\Back\KategoriController;
use App\Http\Controllers\Back\UserController;
use App\Http\Controllers\Front\FrontArtikelController;
use App\Http\Controllers\Front\FrontKategoriController;
use App\Http\Controllers\Front\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [HomeController::class, 'index'])->name('welcome');

Route::get('/post/{slug}', [FrontArtikelController::class, 'show']);

Route::get('/artikel', [FrontArtikelController::class, 'index']);

Route::post('/artikels/search', [FrontArtikelController::class, 'index'])->name('search');

Route::get('kategori/{slug}', [FrontKategoriController::class, 'index']);

Route::middleware('auth')->group(function(){

    Route::get('/dashboard', [DashboardController::class, 'index']);

    Route::resource('artikels', ArtikelController::class);

    Route::resource('/kategoris', KategoriController::class)->only(['index','store','update','destroy']);

    Route::resource('/users', UserController::class);

    Route::group(['prefix' => 'laravel-filemanager'], function () {
        \UniSharp\LaravelFilemanager\Lfm::routes();
    });

});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


