@extends('master')

@section('judul_halaman', 'Data Mentor')

@section('konten')

<a href="/mentor/tambah">+ Tambah Mentor Baru</a>

<br>
<br>

<table border="1">
    <tr>
        <th>Nama</th>
        <th>Umur</th>
        <th>Alamat</th>
        <th>Opsi</th>
    </tr>
    @foreach ($mentor as $item)
    <tr>
        <td>{{ $item->nama }}</td>
        <td>{{ $item->umur }}</td>
        <td>{{ $item->alamat }}</td>
        <td>
            <a href="/mentor/edit/{{ $item->id }}">Edit</a>
            ||
            <a href="/mentor/hapus/{{ $item->id }}">Hapus</a>
        </td>
    </tr>
    @endforeach
</table>
    
@endsection

