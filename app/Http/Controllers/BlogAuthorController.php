<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Penulis;

class BlogAuthorController extends Controller
{
    public function index(){
        $penulis = Penulis::all();

        return view('blog-author', ['penulis' => $penulis]);
    }
}
