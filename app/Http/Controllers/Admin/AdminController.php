<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Manager;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class AdminController extends Controller
{



    public function index()
    {
        return view('admin.master');
    }
    public function login()
    {
        return view('admin.login');
    }
    public function doLogin(Request $req)
    {
        $userInfo=$req->except('_token');
        // dd($userInfo);

        if(Auth::guard('web')->attempt($userInfo) || Auth::guard('manager')->attempt($userInfo)){
            return view('admin.master')->with('message','Login successful.');
        }
        return redirect()->back()->with('error','Invalid user credentials');
    }
    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login')->with('message','Logged out.');
    }

    //socialite facebook
    public function facebookRedirect()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function loginWithFacebook()
    {
        try {
            $user = Socialite::driver('facebook')->user();
            $isUser = User::where('facebook_id', $user->id)->first();

            if($isUser){
                Auth::login($isUser);
                return redirect()->route('root');
            }else{
                $createUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'role_id' => 1,
                    'facebook_id' => $user->id,
                    'password' => bcrypt('123456')
                ]);

                Auth::login($createUser);
                return redirect()->route('root');
            }

        } catch (\Throwable $exception) {
            dd($exception->getMessage());
        }
    }


    //socialite github
    public function githubRedirect()
    {
        return Socialite::driver('github')->redirect();
    }

    public function loginWithGithub()
    {
        try {
            $user = Socialite::driver('github')->user();
            $isUser = User::where('github_id', $user->id)->first();

            if($isUser){
                Auth::login($isUser);
                return redirect()->route('root');
            }else{
                $createUser = User::create([
                    'name' => $user->nickname,
                    'email' => $user->email,
                    'role_id' => 1,
                    'github_id' => $user->id,
                    'password' => bcrypt('123456')
                ]);

                Auth::login($createUser);
                return redirect()->route('root');
            }

        } catch (\Throwable $exception) {
            dd($exception->getMessage());
        }
    }




}
