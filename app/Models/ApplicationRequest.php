<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ApplicationRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'nationality',
        'email',
        'country_of_residence',
        'contact_number',
        'city_of_residence',
        'preferred_programme',
        'guardian_name',
        'guardian_email',
        'guardian_contact',
        'high_school_certificate',
        'white_background_photo',
        'additional_documents',
        'passport_info_page',
    ];
}