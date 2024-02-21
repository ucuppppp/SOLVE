<?php

namespace App\Http\Controllers;

use App\Http\Resources\FormResource;
use App\Models\Form;
use App\Models\Question;
use Illuminate\Http\Request;
use App\Models\AllowedDomain;
use Illuminate\Support\Facades\Validator;

class FormController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = auth()->user();
        $forms = Form::where('creator_id', $user->id)->get();

        if(!$forms || \sizeof($forms) == 0){
            return \response()->json([
                "message" => "You dont have any form yet!"
            ], 404);
        }

        return \response()->json([
            "message" => "Get all forms success",
            "forms" => $forms
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            "name" => "required",
            "slug" => "required|unique:forms,slug|regex:/^[a-zA-Z0-9.-]+$/",
            "allowed_domains" => "array"
        ]);

        if($validator->fails()) {
            return response()->json([
                "message" => "Invalid field",
                "errors" => $validator->errors()
            ], 422);
        }

        $user = auth()->user();

        $request['creator_id'] = $user->id;

        $form = Form::create($request->all());

        $domain['domain'] = $request->allowed_domains[0];
        $domain['form_id'] = $form->id;
        $allowed_domains = AllowedDomain::create($domain);

        return \response()->json([
            "message" => "Create form success",
            "form" => $form
        ]);

    }


    /**
     * Display the specified resource.
     */
    public function show(Request $request, $slug)
    {

        $user = auth()->user();

        if(!$slug){
            return \response()->json([
                "message" => "Form not found"
            ], 404);
        }

        $form = Form::where('slug', $slug)->with('questions')->first();

        if(!$form){
            return \response()->json([
                "message" => "Form not found"
            ], 404);
        }

        $userDomain = implode(array_slice(explode('@',$user->email), 1));


        $allowed_domains = AllowedDomain::where('form_id', $form->id)->pluck('domain')->toArray();


        if(!in_array($userDomain, $allowed_domains)){
            return \response()->json([
                "message" => "Forbidden access"
            ], 403);
        }

        if(!$form || $form == 0){
            return \response()->json([
                "message" => "Form not found"
            ], 404);
        }

        return \response()->json([
            "message" => "Get form success",
            "form" => new FormResource($form)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Form $form)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Form $form)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Form $form)
    {
        //
    }
}
