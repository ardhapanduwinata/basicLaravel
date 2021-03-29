<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Murid extends Model
{
    protected $table = "murid";

    public function waliMurid(){
        return $this->hasOne('App\Models\WaliMurid');
    }
}
