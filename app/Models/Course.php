<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function category_info()
    {
        return $this->belongsTo('App\Models\CategoryCourses', 'category_id');
    }
}
