<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('form_id');
            $table->foreign('form_id')->references('id')->on('forms');
            $table->string('name');
            $table->enum('choice_type', ['short_answer', 'paragraph', 'date', 'time', 'multiple_choice', 'dropdown', 'checkboxes']);
            $table->string('choices')->nullable();
            $table->tinyInteger('is_required');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('questions');
    }
};
