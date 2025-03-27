<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Course extends Model
{
    public function institutes()
    {
        return $this->belongsToMany(Institute::class, 'course_institutes', 'course_id', 'institute_id');
    }
}
