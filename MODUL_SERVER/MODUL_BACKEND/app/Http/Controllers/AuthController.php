<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    //

    public function login(Request $request){
        // dd($request);
        $validator = Validator::make($request->all(), [
        "email" => "required|email",
        "password" => "required",
    ]);

    if($validator->fails()){
        return response()->json([
            "message" => "Invalid field",
            "errors" => $validator->errors()
    ], 422);
    }

    $user = User::where("email", $request->email)->first();

    if(!$user || !Hash::check($request->password, $user->password)){
        return response()->json([
            "message" => "Email or Password incorrect"
        ], 401);
    }

    $token = $user->createToken("auth_token")->plainTextToken;

    return response()->json([
        "message" => "Login success",
        "user" => [
            "name" => $user->name,
            "email" => $user->email,
            "accessToken" => $token
        ]
        ]);
    }

    public function logout(Request $request){


        $request->user()->currentAccessToken()->delete();

        return response()->json([
            "message" => "Logout success"
        ], 200);

    }


}
