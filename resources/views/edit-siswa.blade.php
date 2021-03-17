@extends('master')

@section('judul_halaman', 'Update data siswa')

@section('konten')
<a href="/siswa">Kembali</a> 
<br>
<br>
@foreach ($siswa as $item)
<form action="/siswa/update" method="POST">
    {{ csrf_field() }}
    <input type="hidden" name="id" value="{{ $item->id }}"> <br>
    Nama <input type="text" required="required" name="nama" value="{{ $item->nama }}"> <br><br>
    Umur <input type="number" required="required" name="umur" value="{{ $item->umur }}"> <br><br>
    Alamat <textarea required="required" name="alamat">{{ $item->alamat }}</textarea> <br><br>
    <input type="submit" value="Simpan Data">
</form>
    
@endforeach   

@endsection