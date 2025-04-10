<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    protected $fillable = [
        'name',
        'university_name',
        'major_name',
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
