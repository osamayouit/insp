<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UniversityController;
use App\Http\Controllers\InstituteController;
use App\Http\Controllers\ApplicationController;
use App\Http\Controllers\MessageController;



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

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::post('/messages', [MessageController::class, 'store'])->name('messages.store');

Route::get('/universities', [UniversityController::class, 'index']);
Route::get('/institutes', [InstituteController::class, 'index']);

Route::get('/universities/{university}', [UniversityController::class, 'show'])->name('universities.show');

Route::get('/institutes/{institute}', [InstituteController::class, 'show'])->name('institutes.show');

Route::post('/applications', [ApplicationController::class, 'store'])->name('applications.store');
