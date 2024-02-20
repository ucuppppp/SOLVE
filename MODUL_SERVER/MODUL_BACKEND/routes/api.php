<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\QuestionController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::prefix('/v1')->group(function () {
    // LOGIN
    Route::post('/auth/login', [AuthController::class, 'login']);

    Route::middleware('auth:sanctum')->group(function () {
        // LOGOUT
        Route::post('/auth/logout', [AuthController::class, 'logout']);

        Route::prefix('forms')->group(function () {
            // FORMS
            Route::get('/', [FormController::class, 'index']);
            Route::post('/', [FormController::class, 'store']);
            Route::post('/{slug}', [FormController::class, 'show']);

            // QUESTIONS FORMS
            Route::post('{slug}/questions', [QuestionController::class, 'store']);
            Route::post('{slug}/questions/{id}', [QuestionController::class, 'destroy']);

            // RESPONSES FORMS
            Route::post('{slug}/responses', [FormController::class, 'store']);
            Route::get('{slug}/responses', [FormController::class, 'index']);

        });

    });

});