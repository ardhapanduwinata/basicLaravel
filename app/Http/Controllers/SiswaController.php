<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SiswaController extends Controller
{
    public function index(){
        // mengambil data dari tabel siswa
        $siswa = DB::table('siswa')->paginate(10);

        //mengirim data siswa ke view siswa
        return view('siswa', ['siswa' => $siswa]);
    }

    public function cari(Request $request){
        //menerima kata kunci
        $cari = $request->cari;

        //mengambil data pencarian
        $siswa = DB::table('siswa')
        ->where('nama', 'like', '%'.$cari.'%')
        ->paginate();

        //mengirim data ke view
        return view('siswa', ['siswa' => $siswa]);
    }

    public function tambah(){
        //memanggil halaman tambah siswa
        return view('tambah-siswa');
    }

    public function store(Request $request){
        // validasi data yg diinput user
        $this->validate($request, [
            'nama' => 'required',
            'umur' => 'required|numeric|min:1|max:70',
            'alamat' => 'required'
        ]);

        //insert data ke table siswa
        DB::table('siswa')->insert([
            'nama' => $request->nama,
            'umur' => $request->umur,
            'alamat' => $request->alamat
        ]);
        //mengalihkan halaman ke halaman siswa
        return redirect('/siswa');
    }

    public function edit($id){
        //mengambil data siswa berdasarkan id yang dipilih
        $siswa = DB::table('siswa')->where('id', $id)->get();

        //mengirim data siswa yg didapatkan ke view edit.blade.php
        return view('edit-siswa', ['siswa' => $siswa]);
    }

    public function update(Request $request){
        //update data siswa
        DB::table('siswa')->where('id', $request->id)->update([
            'nama' => $request->nama,
            'umur' => $request->umur,
            'alamat' => $request->alamat
        ]);
        //mengalihkan ke halaman siswa
        return redirect('/siswa');
    }

    public function hapus($id){
        //menghapus data siswa berdasarkan id yg dipilih
        DB::table('siswa')->where('id', $id)->delete();

        //mengalihkan ke halaman siswa
        return redirect('/siswa');
    }
}
