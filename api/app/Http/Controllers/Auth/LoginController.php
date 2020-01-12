<?php

namespace App\Http\Controllers\Auth;

use App\Domain;
use App\Http\Controllers\Controller;

use App\Role;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Lcobucci\JWT\Parser;
use phpseclib\Crypt\Hash;
use Prophecy\Util\StringUtil;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {

        $validator = \Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required',
            'domain' => 'required'
        ]);

        if ( $validator->fails() ) {
            return Response()->json(['status' => false, 'message' => $validator->errors()->first()]);
        }

        // first time check domain active
        $domain = Domain::select('maintenance_mode','admin_panel')->where('status', 1)->first();

        // fetch user with domain
        if(!Auth::attempt(['mobile' => $request->get('username'), 'password' => $request->get('password')])) {
            return response()->json([
                'status' => false,
                'message' => 'نام کاربری و کلمه عبور اشتباه است.'
            ], 200);
        }

        $user = $request->user();

        if (! in_array($user->role_key, Role::where('full_access', 1)->pluck('key')->toArray()) ) {

            if ( ! $domain->admin_panel ) {
                return response()->json([
                    'status' => false,
                    'message' => 'پنل ادمین در حال حاضر در دسترس نیست.'
                ], 200);
            }
        }

        if ( ! $user->status ) {
            return response()->json([
                'status' => false,
                'message' => 'کاربر غیرفعال است.'
            ], 200);
        }


        // create token
        $token = $user->createToken('Token Name')->accessToken;


        return response()->json([
            'status' => true,
            'token' => $token,
            'user' => [
                'name' => $user->name,
                'mobile' => $user->mobile,
            ],
            'permissions' => Role::getPermissions(Auth::user()->role_key, false),
            'setting' => $domain,
        ]);


    }

    public function logout(Request $request)
    {

        $bearer = $request->bearerToken();
        $id = (new Parser())->parse($bearer)->getHeaders('jti');
        $token = $request->user()->tokens->find($id);
        foreach ($token as $t) {
            $t->revoke();
        }

        return response(['status' => true]);
    }
}
