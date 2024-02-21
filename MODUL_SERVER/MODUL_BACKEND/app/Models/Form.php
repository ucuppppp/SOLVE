<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Form extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $guarded = ['id'];

    /**
     * Get all of the comments for the Form
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function questions(): HasMany
    {
        return $this->hasMany(Question::class);
    }

    /**
     * Get the allowed_domains that owns the Form
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function allowed_domains(): BelongsTo
    {
        return $this->belongsTo(AllowedDomain::class);
    }

}
