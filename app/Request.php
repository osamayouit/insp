<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Request extends Model
{
    protected $fillable = [
        'name', 'nationality', 'email', 'country_of_residence', 'contact_number', 'city_of_residence',
        'preferred_programme', 'guardian_name', 'guardian_email', 'guardian_contact',
        'high_school_certificate', 'white_background_photo', 'additional_documents', 'passport_info_page'
    ];
}
