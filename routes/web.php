<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\UserAccountController;


Route::get('/',[HomeController::class,'index'])->name('home');

Route::controller(EmployeeController::class)
    ->prefix('/employees')
    ->group(function () {
        Route::get('/','index')->name('employees.index');
        Route::get('/create','create')->name('employees.create');
        Route::post('/','store')->name('employees.store');
        Route::get('/{employee}/edit','edit')->name('employees.edit');
        Route::put('/{employee}/update','update')->name('employees.update');
        Route::delete('/{employee}/destroy','destroy')->name('employees.destroy');
    });

Route::get('login', [AuthController::class, 'create'])
    ->name('login');
Route::post('login', [AuthController::class, 'store'])
    ->name('login.store');
Route::delete('logout', [AuthController::class, 'destroy'])
    ->name('logout');

Route::get('register', [UserAccountController::class,'create'])->name('register.create');

Route::post('register', [UserAccountController::class,'store'])->name('register.store');