<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UniversityController;
use App\Http\Controllers\InstituteController;


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
//Route::get('/institutes', [InstituteController::class, 'index']);

Route::get('/institutes', [InstituteController::class, 'index'])->name('institutes.index');
Route::get('/request/{institute_id}/{course_id}', [InstituteController::class, 'showRequestForm'])
    ->name('institutes.requestForm');
    Route::post('/submit-request', [InstituteController::class, 'submitRequest'])->name('institutes.submitRequest');