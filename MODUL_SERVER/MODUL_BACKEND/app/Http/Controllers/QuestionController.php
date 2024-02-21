<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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

        $validator = Validator::make($request->all(), [
            "name" => "required",
            "choice_type" => "required|in:short answer,paragraph,date,multiple choice,dropdown,checkboxes",
            "choices" => [
                "required", function ($attribute, $value, $fail) {
                        if (!is_array($value)) {
                            $fail("The $attribute must be an array.");
                            $fail("The $attribute must be a string.");
                        }
                        if (is_array($value) && array_filter($value, 'is_string') !== $value) {
                            $fail("The $attribute must be a string.");
                        }
                    },
                ],
            ]
        );

        if ($validator->fails()) {
            $errors = $validator->errors()->toArray();
            return response()->json([
                "message" => "Invalid field",
                "errors" => $errors
            ], 422);
        }

        $form = Form::where('slug',$slug)->first();

        $request['form_id'] = $form->id;
        $request['choices'] = \implode(',', $request->choices);

        $question = Question::create($request->all());

        return \response()->json([
            "message" => "Add question success",
            "questions" => $question
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Question $question)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Question $question)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Question $question)
    {
        //
    }
}
