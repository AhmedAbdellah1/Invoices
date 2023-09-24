<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

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
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    /**
     * when a user attempts to log in, the credentials method is called to
     * determine if the provided email, password, and 'مفعل' status match a user in the database. If
     * they do, the user is successfully authenticated
     */

    /**
     * Define the authentication credentials for a login attempt.
     *
     * This method is used to customize the authentication process during login.
     *
     * @param \Illuminate\Http\Request $request
     * @return array An array containing the authentication criteria.
     */
    protected function credentials(\Illuminate\Http\Request $request)
    {
        // Return an array with email, password, and status for authentication.
        return ['email' => $request->email, 'password' => $request->password, 'Status' => 'مفعل'];
    }
}
