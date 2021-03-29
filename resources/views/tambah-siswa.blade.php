@extends('master')

@section('juduh_halaman', 'Tambah Siswa')

@section('konten')
    
<a href="/siswa" style="padding-left: 3rem">Kembali</a>

{{-- menampilkan error validasi --}}
@if (count($errors) > 0)
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<br>
<br>

<form action="/siswa/store" method="POST">
    {{ csrf_field() }}
    <div class="form-group">
        <label for="nama">Nama</label>
        <input class="form-control" type="text" value="{{ old('nama') }}">
    </div>
    <div class="form-group">
        <label for="umur">Umur</label>
        <input class="form-control" type="number" value="{{ old('umur') }}">
    </div>
    <div class="form-group">
        <label for="alamat">Alamat</label>
        <textarea class="form-control" name="alamat">{{ old('alamat') }}</textarea>
    </div>
    <div class="form-group">
        <input class="btn btn-primary" type="submit" value="Simpan Data">
    </div>
</form>

@endsection
