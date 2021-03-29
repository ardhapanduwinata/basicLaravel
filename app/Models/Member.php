<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'member';

    public function kelas(){
        return $this->belongsToMany('App\Models\Kelas');
    }
}
