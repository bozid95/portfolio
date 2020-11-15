<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home;

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

Route::get('/', [Home::class,'index'])->name('home.index');


/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('admin-users')->name('admin-users/')->group(static function() {
            Route::get('/',                                             'AdminUsersController@index')->name('index');
            Route::get('/create',                                       'AdminUsersController@create')->name('create');
            Route::post('/',                                            'AdminUsersController@store')->name('store');
            Route::get('/{adminUser}/impersonal-login',                 'AdminUsersController@impersonalLogin')->name('impersonal-login');
            Route::get('/{adminUser}/edit',                             'AdminUsersController@edit')->name('edit');
            Route::post('/{adminUser}',                                 'AdminUsersController@update')->name('update');
            Route::delete('/{adminUser}',                               'AdminUsersController@destroy')->name('destroy');
            Route::get('/{adminUser}/resend-activation',                'AdminUsersController@resendActivationEmail')->name('resendActivationEmail');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::get('/profile',                                      'ProfileController@editProfile')->name('edit-profile');
        Route::post('/profile',                                     'ProfileController@updateProfile')->name('update-profile');
        Route::get('/password',                                     'ProfileController@editPassword')->name('edit-password');
        Route::post('/password',                                    'ProfileController@updatePassword')->name('update-password');
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('biodata')->name('biodata/')->group(static function() {
            Route::get('/',                                             'BiodataController@index')->name('index');
            Route::get('/create',                                       'BiodataController@create')->name('create');
            Route::post('/',                                            'BiodataController@store')->name('store');
            Route::get('/{biodatum}/edit',                              'BiodataController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'BiodataController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{biodatum}',                                  'BiodataController@update')->name('update');
            Route::delete('/{biodatum}',                                'BiodataController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('skills')->name('skills/')->group(static function() {
            Route::get('/',                                             'SkillController@index')->name('index');
            Route::get('/create',                                       'SkillController@create')->name('create');
            Route::post('/',                                            'SkillController@store')->name('store');
            Route::get('/{skill}/edit',                                 'SkillController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'SkillController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{skill}',                                     'SkillController@update')->name('update');
            Route::delete('/{skill}',                                   'SkillController@destroy')->name('destroy');
        });
    });
});

/* Auto-generated admin routes */
Route::middleware(['auth:' . config('admin-auth.defaults.guard'), 'admin'])->group(static function () {
    Route::prefix('admin')->namespace('App\Http\Controllers\Admin')->name('admin/')->group(static function() {
        Route::prefix('projects')->name('projects/')->group(static function() {
            Route::get('/',                                             'ProjectController@index')->name('index');
            Route::get('/create',                                       'ProjectController@create')->name('create');
            Route::post('/',                                            'ProjectController@store')->name('store');
            Route::get('/{project}/edit',                               'ProjectController@edit')->name('edit');
            Route::post('/bulk-destroy',                                'ProjectController@bulkDestroy')->name('bulk-destroy');
            Route::post('/{project}',                                   'ProjectController@update')->name('update');
            Route::delete('/{project}',                                 'ProjectController@destroy')->name('destroy');
        });
    });
});
