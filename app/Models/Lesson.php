<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    public function lesson_audio()
    {
        return $this->hasMany('App\Models\LessonAudio','lesson_id','id');
    }
}
