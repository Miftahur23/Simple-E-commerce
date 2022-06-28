<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Manager;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Spatie\DbDumper\Databases\MySql;
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
        $guard=auth()->guard();
        // dd($guard);
        
        // dd($userInfo);

        if(Auth::guard()->attempt($userInfo))
        {
            return view('admin.master')->with('message','Login successful.');
        }
        if( Auth::guard('customer')->attempt($userInfo)){
            return view('admin.master')->with('message','Login successful.');

        } if(Auth::guard('manager')->attempt($userInfo)){
            
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

    // localization
    public function changeLanguage($local)
    {
        App::setLocale($local);
        session()->put('applocale', $local);

        return redirect()->back();
    }

//export db
public function exportDB()
{
    // dd(config('database.connections.mysql.database'));
    MySql::create()
    ->setDbName(config('database.connections.mysql.database'))
    ->setUserName(config('database.connections.mysql.username'))
    ->setPassword(config('database.connections.mysql.password'))
    ->dumpToFile('ecommerce.sql');

return response()->download(public_path('/ecommerce.sql'));
}


}
