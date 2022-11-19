<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Crap extends Model
{
    protected $table = 'crap';

    protected $casts = [
        'id' => 'string'
    ];
}
