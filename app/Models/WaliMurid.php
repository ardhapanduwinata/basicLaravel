<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WaliMurid extends Model
{
    protected $table = 'wali_murid';

    public function murid(){
        return $this->belongsTo('App\Models\Murid');
    }
}
