<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Murid;

class MuridController extends Controller
{
    public function index(){
        $murid = Murid::all();

        return view('murid', ['murid' => $murid]);
    }
}
