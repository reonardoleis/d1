<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserEntry extends Model
{
    protected $fillable = [
        'question_id', 'answer_id',
    ];
}
