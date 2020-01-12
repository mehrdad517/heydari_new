<?php

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// in group url invalid symbol is -_
Route::group(['prefix' => 'backend', 'middleware' => ['auth:api']], function () {

    Route::group(['prefix' => 'filter'], function () {

        // Filter Tags
        Route::get('/tags', function (Request $request) {
            $response = \App\Tag::select('id', 'name')
                ->where('name', 'like', '%'.$request->get('term').'%')
                ->take(10)
                ->get();
            return response($response);
        });

        Route::get('/price-parameter', function (Request $request) {

            $response = [];

            if ($request->get('term')) {

                $response =  \App\ProductPriceParameter::select('value', 'label')
                    ->where('label', 'like', '%'.$request->get('term').'%')
                    ->whereIn('value', \App\ProductPriceParameter::descendantsOf($request->get('parent'))->pluck('value'))
                    ->where('status', 1)
                    ->take(10)
                    ->get();
            }

            return response($response);
        });

        //Auto Complete User Table
        Route::get('/users', function (Request $request) {
            $response = \App\User::select('id', 'name', 'mobile')
                ->where('name', 'like', '%'.$request->get('term').'%')
                ->orWhere('mobile', 'like', '%'.$request->get('mobile').'%')
                ->where("status", 1)
                ->take(10)
                ->get();
            return response($response);
        });

        // Auto Complete User Table
        Route::get('/users/accessible', function (Request $request) {
            $response = \App\User::select('id', 'name', 'mobile')
                ->where("status", 1)
                ->where('role_key', '<>', 'guest')
                ->get();
            return response($response);
        });


    });


    /*
    |-------------------------------------------------------------------------
    |  All File And Media Router
    |--------------------------------------------------------------------------
    |
    | Store File In Attachment Directory
    | This Directory Contain All Media
    | Before Insert In DataBase
    | Original File Save
    | Past Parameters Are file,Directory
    |
    */
    Route::group(['prefix' => 'attachment'], function () {

        Route::post('/', function (Request $request) { // Get Form Data


            // Check File Mime Type
            if (in_array($request->file('file')->getMimeType(), ['image/gif', 'image/png', 'image/jpg', 'image/jpeg'])) {
                // Image Size Larger Than 1MB
                if ($request->file('file')->getSize() / 1024 > 1024) {
                    return response()->json(['status' => false, 'msg' => 'حداکثر حجم فایل 1 مگابایت است']);
                }
                //Video Check Mime Type
            }
            elseif (in_array($request->file('file')->getMimeType(), ['video/mp4', 'video/ogv', 'video/webm', 'video/3gpp'])) {
                if ($request->file('file')->getSize() / 1024 > 8388608) {
                    return response()->json(['status' => false, 'msg' => 'حداکثر حجم فایل 8 مگابایت است']);
                }
            }
            elseif (in_array($request->file('file')->getMimeType(), ['application/zip', 'application/x-rar'])) {
                if ($request->file('file')->getSize() > 8388608) {
                    return response()->json(['status' => false, 'msg' => 'حداکثر حجم فایل 8 مگابایت است']);
                }
            }
            elseif (in_array($request->file('file')->getMimeType(), ['application/pdf'])) {
                if ($request->file('file')->getSize() > 8388608) {
                    return response()->json(['status' => false, 'msg' => 'حداکثر حجم فایل 8 مگابایت است']);
                }
            }
            else { // Other Format is InValid
                return response()->json(['status' => false, 'msg' => 'فرمت غیر مجاز است.']);
            }


            //With Storage Laravel File System Save File In Attachment Directory
            $path = $request->file('file')->store($request->has('directory') ? $request->get('directory') : 'attachment', 'public');

            // Water Mark
            if (in_array($request->file('file')->getMimeType(), ['image/gif', 'image/png', 'image/jpg', 'image/jpeg'])) {
                \Intervention\Image\Facades\Image::make(storage_path('app/public/' . $path))->insert(public_path('logo.png'), 'bottom-right', 30, 30)->save();
            }

            return response()->json([
                'status' => true,
                'msg' => 'ok',
                'path' => Storage::url($path) ,
                'file' => last(explode('/', $path))
            ]);
        });

        /**
        | Delete Files From Storage
        | Past Parameters Are file,Directory
         */
        Route::delete('/', function (Request $request) {

            $status = false;
            // File with Address or Http etc ...
            $file = last(explode('/', $request->get('file')));

            $db_file = \App\File::where('file', $file)->first();

            if ($db_file) {

                if ($db_file->created_by != \Illuminate\Support\Facades\Auth::id()) {
                    return response()->json(['status' => false, 'msg' => 'شما نمیتوانید این فایل را حذف کنید.'], 401);
                }

                if ($db_file->size) {
                    foreach (json_decode($db_file->size, true) as $size) {
                        Storage::delete($db_file->directory . '/' . $db_file->fileable_id . '/' . $size .  '/' . $file);
                    }
                }

                $status = Storage::delete($db_file->directory . '/' . $db_file->fileable_id . '/' . $file);
                if ($status) {
                    $db_file->delete();
                }

            } else {
                // Directory Find
                $status = Storage::delete(($request->get('directory') ?? 'attachment'). '/' . $file);
            }

            // Status Delete File True Or False
            return response()->json(['status' => $status]);
        });
    });

    Route::group(['prefix' => '/users'], function () {


        Route::group(['prefix' => '/permissions'], function () {
            Route::get('/', 'Backend\PermissionController@index');
        });

        Route::group(['prefix' => '/roles'], function () {
            Route::get('/{role}/permissions', 'Backend\RoleController@permissions');
            Route::put('/{role}/permissions', 'Backend\RoleController@setPermission');
            Route::get('/', 'Backend\RoleController@index');
            Route::post('/', 'Backend\RoleController@store');
        });

        Route::get('/', 'Backend\UserController@index');
        Route::post('/', 'Backend\UserController@store');
        Route::get('/{id}', 'Backend\UserController@show');
        Route::put('/{id}', 'Backend\UserController@update');
        Route::put('/{id}/change-password', 'Backend\UserController@changePassword');

    });

    Route::group(['prefix' => 'setting'], function () {
        Route::get('/', 'Backend\DomainController@read');
        Route::put('/', 'Backend\DomainController@update');
        Route::get('/sticky-setting', 'Backend\DomainController@readSticky');
        Route::put('/sticky-setting', 'Backend\DomainController@updateSticky');
    });

    Route::group(['prefix' => 'socialMedias'], function () {
        Route::get('/', function () {
            $response = \App\SocialMedia::all();
            return response($response);
        });
    });

    Route::group(['prefix' => 'communicationChannels'], function () {

        Route::get('/', function () {
            $response = \App\CommunicationChannel::all();
            return response($response);
        });
    });

    Route::group(['prefix' => 'reports'], function () {
        Route::get('/map-reports', 'Backend\ReportController@mapReports');
    });

    Route::group([ 'prefix' => 'galleries'], function () {
        Route::get('/', 'Backend\GalleryController@index');
        Route::post('/', 'Backend\GalleryController@store');
        Route::get('/{id}', 'Backend\GalleryController@show');
        Route::put('/{id}', 'Backend\GalleryController@update');
    });

    Route::group([ 'prefix' => 'blog'], function () {


        Route::group(['prefix' => '/categories'], function () {
            Route::get('/', 'Backend\BlogCategoryController@index');
            Route::post('/', 'Backend\BlogCategoryController@store');
            Route::get('/{id}', 'Backend\BlogCategoryController@show');
            Route::put('/{id}', 'Backend\BlogCategoryController@update');
        });


        Route::group(['prefix' => 'contents'], function () {
            Route::get('/', 'Backend\BlogContentController@index');
            Route::post('/', 'Backend\BlogContentController@store');
            Route::get('/{id}', 'Backend\BlogContentController@show');
            Route::put('/{id}', 'Backend\BlogContentController@update');
        });
    });

    Route::group(['prefix' => 'tickets'], function() {

        Route::group(['prefix' => '/categories'], function () {
            Route::get('/', 'Backend\TicketCategoryController@index');
            Route::post('/', 'Backend\TicketCategoryController@store');
            Route::get('/{id}', 'Backend\TicketCategoryController@show');
            Route::put('/{id}', 'Backend\TicketCategoryController@update');
        });

        Route::get('/', 'Backend\TicketController@index');
        Route::post('/', 'Backend\TicketController@store');
        Route::get('/{id}/conversations', 'Backend\TicketController@conversations');
        Route::post('/{id}/conversations', 'Backend\TicketController@storeConversations');
        Route::delete('/{ticket}/conversations/{id}', 'Backend\TicketController@deleteConversation');
        Route::put('/{id}', 'Backend\TicketController@update');
    });


});

/*,
 * Auth Api
 */

Route::post('/login', 'Auth\LoginController@login');
Route::get('/logout', 'Auth\LoginController@logout')->middleware('auth:api');
Route::group(['prefix' => 'validation-code'], function () {
    Route::post('/send', function (Request $request) {

        $validator = \Validator::make($request->all(), [
            'mobile' => 'required',
        ]);

        if ($validator->fails()) {

            return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
        }

        $user = User::where('mobile', $request->get('mobile'))->where('status', 1);
        // check user status
        if ($user->count() == 1) {
            $rand = rand(10000, 99999);

            $token = bcrypt('@#$!~'. rand(1, 100000) .'*()+=' .time() . '@#$%^^&*((#$$$$)__45454&&^^@@@$#md54532515');
            // send sms to user

            try {
                $verify = new \MahdiMajidzadeh\Kavenegar\KavenegarVerify();
                $res = $verify->lookup($request->get('mobile'), 'PasswordRecovery', $rand, null, null, 'sms');

                if (@$res[0]->status) {
                    // to do
                    $user->update([
                        'validation_code' => $rand,
                        'remember_token' => $token
                    ]);

                    return Response()->json(['status' => true, 'msg' => 'کد تایید به موبایل شما ارسال شد.', 'token' => $token]);

                }
            } catch (Exception $exception) {
                return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.مجددا تلاش کنید']);
            }




        } elseif ($user->count() == 0) {
            return Response()->json(['status' => false, 'msg' => 'شماره موبایل در سیستم وجود ندارد.']);
        } else {
            return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.']);
        }
    });
    Route::post('/verify', function (Request $request) {

        $validator = \Validator::make($request->all(), [
            'token' => 'required',
            'mobile' => 'required',
            'code' => 'required',
        ]);

        if ($validator->fails()) {

            return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
        }

        $user = User::where('mobile', $request->get('mobile'))
            ->where('remember_token', $request->get('token'))
            ->where('validation_code', $request->get('code'))
            ->where('status', 1)
        ;

        // check user status
        if ($user->count() == 1) {

            $token = bcrypt('@#$!~'. rand(1, 100000) .'*()+=' .time() . '@#$%^^&*((#$$$$)__45454&&^^@@@$#md54532515');

            $user->update([
                'verify_account' => true,
                'remember_token' => $token
            ]);

            return Response()->json(['status' => true, 'msg' => 'رمز جدید خود را وارد کنید', 'token' => $token]);

        } elseif ($user->count() == 0) {
            return Response()->json(['status' => false, 'msg' => 'کد وارد شده نادرست است.']);
        } else {
            return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.']);
        }
    });
    Route::post('/change-password', function (Request $request) {

        $validator = \Validator::make($request->all(), [
            'password' => 'required|min:6',
            'token' => 'required',
            'mobile' => 'required',
            'code' => 'required',
        ]);

        if ($validator->fails()) {

            return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
        }

        $user = User::where('mobile', $request->get('mobile'))
            ->where('remember_token', $request->get('token'))
            ->where('validation_code', $request->get('code'))
            ->where('status', 1)
        ;

        // check user status
        if ($user->count() == 1) {

            $token = bcrypt('@#$!~'. rand(1, 100000) .'*()+=' .time() . '@#$%^^&*((#$$$$)__45454&&^^@@@$#md54532515');

            $user->update([
                'remember_token' => $token,
                'password' => bcrypt($request->get('password'))
            ]);

            return Response()->json(['status' => true, 'msg' => 'رمز با موفقیت تغیر کرد.', 'token' => $token]);

        } elseif ($user->count() == 0) {
            return Response()->json(['status' => false, 'msg' => 'به جای فرستادن اسپم کتاب بخوانید.']);
        } else {
            return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.']);
        }
    });
});
Route::post('/change-password', function (Request $request) {

    $validator = \Validator::make($request->all(), [
        'password' => 'required|min:6',
    ]);

    if ($validator->fails()) {

        return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
    }

    $model = $request->user()->update([
        'password' => bcrypt($request->get('password'))
    ]);

    if ($model) {

        return Response()->json(['status' => true, 'msg' => 'عملیات موفقیت آمیز بود.']);
    }
    return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.']);

})->middleware('auth:api');
Route::post('/change-profile', function (Request $request) {

    $validator = \Validator::make($request->all(), [
        'name' => 'required|min:3',
    ]);

    if ($validator->fails()) {

        return Response()->json(['status' => false, 'msg' => $validator->errors()->first()]);
    }

    $user  = $request->user();

    $model = $user->update([
        'name' => $request->get('name')
    ]);


    if ($model) {

        return Response()->json(['status' => true, 'msg' => 'عملیات موفقیت آمیز بود.', 'user' => [
            'name' => $user->name,
            'mobile' => $user->mobile
        ]]);
    }
    return Response()->json(['status' => false, 'msg' => 'خطایی رخ داده است.']);

})->middleware('auth:api');



// Permission Initail
Route::get('/initial', 'Backend\PermissionController@initial');

Route::get('/linker', function () {
    $targetFolder = $_SERVER['DOCUMENT_ROOT'].'/storage/app/public';
    $linkFolder = $_SERVER['DOCUMENT_ROOT'].'/public/storage';
    symlink($targetFolder,$linkFolder);
    echo 'Symlink process successfully completed';
});

