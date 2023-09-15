<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseLesson extends Model
{
    use HasFactory;

    public function course_info()
    {
        return $this->belongsTo('App\Models\Course', 'course_id');
    }

    public function lesson_info()
    {
        return $this->belongsTo('App\Models\Vendor', 'lesson_id');
    }
}
