<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UniversityController;
use App\Http\Controllers\InstituteController;
use App\Http\Controllers\ApplicationController;



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

Route::get('/universities', [UniversityController::class, 'index']);
Route::get('/institutes', [InstituteController::class, 'index']);


Route::get('/universities/{university}', [UniversityController::class, 'show'])->name('universities.show');

Route::post('/applications', [ApplicationController::class, 'store'])->name('applications.store');
