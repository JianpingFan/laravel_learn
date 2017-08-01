<?php

namespace App\Http\Controllers\Admin;

use App\Http\Models\Admin\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;


class LoginController extends CommonController
{
    public function login(Request $request)
    {
        if($request->isMethod('post'))
        {
            $input = Input::all();
            $rules = ['code' => 'required|captcha'];
            $validator = Validator::make($input,$rules);
            if($validator->fails())
            {
                return back()->with('msg','验证码错误');
            }
            $admin = User::where('user_name','admin')->first();
            //手动验证
            if($input['username'] != $admin->user_name  ||  $input['password'] != (Crypt::decrypt($admin->user_pass)))
            {
                return back()->with('msg','用户名或者密码错误');
            }
            dd("登陆成功");
        }
        else
        {
//            $user = User::all();
//            dd($user);exit;
//            echo Crypt::encrypt('123456');exit;
            return view('admin.login');
        }
    }
}
