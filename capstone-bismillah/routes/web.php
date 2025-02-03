<?php
use App\Http\Controllers\Controller;
use App\Http\Controllers\HewanController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\logincontroller;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\JadwalController;
use App\Http\Controllers\RekomendasiController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::get('/dashboard', function () {
    return view('layout/template');
});

Route::get('/dashboard', [Controller::class, 'dashboard'])->name('dashboard');
Route::get('/hewan/{id}/edit', [Controller::class, 'edit'])->name('hewan.edit');
Route::put('/hewan/{id}', [Controller::class, 'update'])->name('update');

//HEWAN
Route::get('/hewan', [HewanController::class, 'index'])->name('hewan.index');
Route::post('/hewan', [HewanController::class, 'store'])->name('hewan.store');
Route::get('/hewan', [HewanController::class, 'create'])->name('hewan.create');
Route::delete('/hewan/{id}', [HewanController::class, 'destroy'])->name('hewan.destroy');



//LOGIN
Route::get('/login', [logincontroller::class, 'showLoginForm'])->name('login');
// Proses login
Route::post('/login', [logincontroller::class, 'login']);

//REGISTER
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
// Route untuk menangani proses registrasi
Route::post('/register', [RegisterController::class, 'register']);

//JADWAL
Route::post('/jadwal/store', [JadwalController::class, 'store'])->name('jadwal.store');
Route::delete('/jadwal/{jadwal}', [JadwalController::class, 'destroy'])->name('jadwal.destroy');
Route::get('/jadwal', [JadwalController::class, 'index'])->name('jadwal.index');
Route::get('/reminder', [JadwalController::class, 'reminder'])->name('jadwal.reminder');


//REKOMENDASI
Route::get('/blogs', [BlogController::class, 'index'])->name('blogs');


//PROFIL
Route::get('/profil', [ProfilController::class, 'show'])->name('profil.show');
Route::put('/profil/{id}', [ProfilController::class, 'update'])->name('profil.update');


//FEEDBACK
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');
