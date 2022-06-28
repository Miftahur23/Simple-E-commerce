<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\admin\HomeController;
// use App\Http\Controllers\admin\AdminController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\admin\CauseController;
use App\Http\Controllers\admin\DonorController;
use App\Http\Controllers\website\UserController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\PassResetController;
use App\Http\Controllers\admin\VolunteerController;
use App\Http\Controllers\admin\UserController as AdminUserController;



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
Route::get('/admin/login',[AdminController::class,'login'])->name('admin.login');
Route::post('/check/login',[AdminController::class,'doLogin'])->name('admin.doLogin');
Route::controller(PassResetController::class)->group(function()
//forget password
{
Route::get('admin/forget-password','forgetPassword')->name('admin.forget.password');
Route::post('admin/forget-password','forgetPasswordEmailPost')->name('admin.forget.password.post');
Route::get('admin/reset-password/{token}','resetPassword')->name('admin.reset.password');
Route::post('admin/reset-password','resetPasswordPost')->name('admin.reset.password.post');

});

//socialite
// facebook
Route::get('auth/facebook', [AdminController::class, 'facebookRedirect'])->name('login.facebook');
Route::get('auth/facebook/callback', [AdminController::class, 'loginWithFacebook']);
// github
Route::get('auth/github', [AdminController::class, 'githubRedirect'])->name('login.github');
Route::get('auth/github/callback', [AdminController::class, 'loginWithGithub']);

Route::group(['prefix'=>'admin','middleware'=>['auth:web,,manager,customer']],function(){


Route::get('/home', [AdminController::class, 'index'])->name('index');

Route::get('/logout',[AdminController::class,'logout'])->name('logout');

//localization
Route::get('/language/{local}', [AdminController::class, 'changeLanguage'])->name('language');


//Role using 'resources'
Route::resource('roles',RoleController::class);
Route::resource('products',ProductsController::class);


Route::controller(RoleController::class)->group(function () {
    Route::get('/assign_permision/{role_id}','assignPermission')->name('assign.permission');
    Route::post('/store_permision','storePermission')->name('store.permission');
    Route::get('/assign_permision/edit','editPermission')->name('edit.permission');
    Route::put('/assign_permision/update','updatePermission')->name('update.permission');
    Route::get('/view/assign/permission/list/{id}',[RoleController::class,'viewAssignPermission'])->name('view.assign.permission');
});



// Category

Route::controller(CategoryController::class)->group(function () {

    Route::get('/showcategory','showcategory')->name('show.category');
    Route::get('/yajra/category','yajraCategory')->name('yajra.category');
    Route::get('/createcategory','creatcategory')->name('create.category');
    Route::post('/storecategory','storecategory')->name('store.category');

    // Category view,update,delete

    Route::get('/viewcategory/{id}','Viewcategory')->name('view.category');
    Route::get('/Edit/category/{categoryr_id}','editcategory')->name('edit.category');
    Route::put('/Update/category/{categoryr_id}','Updatecategory')->name('update.category');
    Route::get('/deletecategoryr/{id}','Deletecategory')->name('delete.category');

});
Route::get('/order/index',[OrderController::class,'index'])->name('order');








Route::view('/', 'admin.master')->name('root');
Route::view('/krafty', 'website.master')->name('website');
Route::view('/home', 'admin.home')->name('home');
Route::view('/customer', 'admin.customer')->name('customers');

//Export DB
Route::get('/export-db',[AdminController::class,'exportDB'])->name('export.db');


// Route::get('/donationform', [AdminController::class, 'CreateDonation'])->name('create.donation');

});