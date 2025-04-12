<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Message extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
        'university_name',
        'major_name',
        'institute_name',
        'course_name',
        'father_country',
        'target_country',
        'father_phone',
        'student_phone',
        'highschool_certificate',
        'university_certificate',
        'passport',
        'personal_photo',
        'extra_file',
    ];

}
