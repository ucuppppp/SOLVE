<?php

namespace App\Http\Controllers;

use App\Models\Response;
use App\Models\Question;
use App\Models\AllowedDomain;
use App\Models\Answer;
use App\Models\Form;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\ResponseResource;

class ResponseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $slug)
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

        if($form->creator_id !== $user->id){
            return \response()->json([
              "message" => "Forbidden access"
        ], 403);
        }

        $responses = Response::where('form_id', $form->id)->get();

        return \response()->json([
            "message" => "Get responses success",
            "responses" => ResponseResource::collection($responses)
        ], 200);

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
    public function store(Request $request, $slug)
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

    $questionsRequired = Question::where('form_id', $form->id)->pluck('is_required')->toArray();

    $allowedDomain = AllowedDomain::where('form_id', $form->id)->pluck('domain')->toArray();

    $userDomain = implode(',',array_slice(explode('@',$user->email),1));

    $currentResponse = Response::where('user_id', $user->id)->where('form_id', $form->id)->first();

    if($currentResponse){
        return response()->json([
            "message" => "You can not submit form twice"
    ], 422);
    }

    if(!in_array($userDomain, $allowedDomain)){
       return response()->json([
           "message" => "Forbidden access"
    ], 403);
    }

    if(in_array(true, $questionsRequired)){
        $required = "required";
    } else {
        $required = "";
    }

    if(empty($questionsRequired)) {
    return response()->json([
        "message" => "No questions found for the form"
    ], 422);
    }

    $validator = Validator::make($request->all(), [
        'answers' => 'array|'.$required
    ]);

    if ($validator->fails()) {
        return \response()->json([
            "message" => "Invalid field",
            "errors" => $validator->errors()
        ], 422);

    }

    $answers = $request->answers;

    $responses = Response::create([
        'user_id' => $user->id,
        'form_id' => $form->id,
        'date' => now()->format('Y-m-d H:i:s')
    ]);

    foreach ($answers as $answer) {
        Answer::create([
            'response_id' => $responses->id,
            'question_id' => $answer['question_id'],
            'value' => $answer['value']
        ]);
    }

    return response()->json([
        "message" => "Submit response success"
]);

    }
    /**
     * Display the specified resource.
     */
    public function show(Response $response)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Response $response)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Response $response)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Response $response)
    {
        //
    }
}
