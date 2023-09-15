<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserCourses extends Model
{
    use HasFactory;

    public function course_info()
    {
        return $this->belongsTo('App\Models\Course', 'course_id');
    }


}
