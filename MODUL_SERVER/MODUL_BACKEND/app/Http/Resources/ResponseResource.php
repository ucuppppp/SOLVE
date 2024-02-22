<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Answer;
use App\Models\Form;
use App\Models\Question;
use Illuminate\Http\Resources\Json\JsonResource;

class ResponseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $user = User::where('id', $this->user_id)->first()->toArray();
        $answers = Answer::where('response_id', $this->id)->with('question')->get();

        foreach ($answers as $answer) {
            $data[$answer['question']['name']] = $answer['value'];
        }

        return [
            "date" => $this->date,
            "user" => [
                "id" => $user['id'],
                "name" => $user['name'],
                "email" => $user['email'],
                "email_verified_at" => date("Y-m-d H:i:s", strtotime($user['email_verified_at'])),
            ],
            "answers" => $data
        ];
    }
}
