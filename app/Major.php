<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Major extends Model
{
    public function universities()
    {
        return $this->belongsToMany(University::class, 'major_universities', 'major_id', 'university_id');
    }
}
