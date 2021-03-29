<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Mentor;

class MentorController extends Controller
{
    public function index(){
        $mentor = Mentor::all();
        return view('mentor', ['mentor' => $mentor]);
    }

    public function tambah(){
        return view('tambah-mentor');
    }

    public function store(Request $request){
        Mentor::create([
            'nama' => $request->nama,
            'umur' => $request->umur,
            'alamat' => $request->alamat
        ]);
        return redirect('/mentor');
    }

    public function edit($id){
        $mentor = Mentor::where('id', $id)->get();
        return view('edit-mentor', ['mentor' => $mentor]);
    }

    public function update(Request $request){
        $mentor = Mentor::find($request->id);

        $mentor->nama = $request->nama;
        $mentor->umur = $request->umur;
        $mentor->alamat = $request->alamat;

        $mentor->save();
        return redirect('/mentor');
    }

    public function hapus($id){
        $mentor = Mentor::find($id);
        $mentor->delete();
        return redirect('/mentor');
    }
}
