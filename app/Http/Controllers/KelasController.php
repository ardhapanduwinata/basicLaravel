<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kelas;
use App\Models\Member;

class KelasController extends Controller
{
    public function index(){
        $member = Member::get();

        return view('kelas', ['member' => $member]);
    }
}
