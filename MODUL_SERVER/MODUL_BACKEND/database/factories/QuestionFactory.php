<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Question>
 */
class QuestionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'form_id' => \App\Models\Form::factory(),
            'name' => $this->faker->sentence,
            'choice_type' => $this->faker->randomElement(['short answer', 'paragraph', 'date', 'time', 'multiple choice', 'dropdown', 'checkboxes']),
            'choices' => $this->faker->text,
            'is_required' => $this->faker->boolean,
        ];
    }
}
