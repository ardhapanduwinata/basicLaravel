@extends('master')

@section('juduh_halaman', 'Tambah Mentor')

@section('konten')
    
<a href="/mentor">Kembali</a>

<br>
<br>

<form action="/mentor/store" method="POST">
    {{ csrf_field() }}
    Nama : <input type="text" name="nama" required="required"> <br><br>
    Umur : <input type="number" name="umur" required="required"> <br><br>
    Alamat : <textarea name="alamat" required="required"></textarea> <br><br>
    <input type="submit" value="Simpan Data">
</form>

@endsection
