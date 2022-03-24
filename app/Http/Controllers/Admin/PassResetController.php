<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;

class PassResetController extends Controller
{
    public function forgetPassword()
    {
        return view('admin.pages.reset-pass.forget');
    }
    public function forgetPasswordEmailPost(Request $req)
    {
        $req->validate([
            'email'=>'required|exists:users'

        ]);
        $token=Str::random(20);
        $user=User::where('email',$req->email)->first();
        $user->update([
            'reset_token'=>$token,
            'reset_token_expire_at'=>Carbon::now()->addMinute(2),
        ]);
        $link=route('admin.reset.password',$token);
        dd($link);
        // return redirect()->back()->with('msg','Email sent to : '. $req->email);




    }
}
