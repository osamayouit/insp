<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class University extends Model
{
    public function majors()
    {
        return $this->belongsToMany(Major::class, 'major_universities', 'university_id', 'major_id');
    }
}
