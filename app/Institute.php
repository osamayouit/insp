<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Institute extends Model
{
    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_institutes', 'institute_id', 'course_id');
    }
}
