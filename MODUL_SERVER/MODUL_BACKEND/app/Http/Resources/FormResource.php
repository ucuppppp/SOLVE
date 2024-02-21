<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use App\Models\AllowedDomain;
use Illuminate\Http\Resources\Json\JsonResource;

class FormResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {

        $allowed_domains = AllowedDomain::where('form_id', $this->id)->pluck('domain');

        return [
            'id' => $this->id,
            'name' => $this->name,
            'slug' => $this->slug,
            'description' => $this->description,
            'limit_one_response' => $this->limit_one_response,
            'creator_id' => $this->creator_id,
            'allowed_domains' => $allowed_domains,
            'questions'=> $this->questions
        ];
    }
}
