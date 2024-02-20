<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    //

    public function login(Request $request){
        // dd($request);
        $validator = Validator::make($request->all(), [
        "email" => "required|email|ends_with:webtech.id,worldskills.org",
        "password" => "required",
    ]);

        if($validator->fails()){
            return response()->json([
                "message" => "Invalid field",
                "errors" => $validator->errors()
        ]);
        }

        return $request;
    }


}