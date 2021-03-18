@extends('master')

@section('judul_halaman', 'Data Siswa')

@section('konten')

<a href="/siswa/tambah">+ Tambah Siswa Baru</a>

<br>
<br>

<table border="1">
    <tr>
        <th>Nama</th>
        <th>Umur</th>
        <th>Alamat</th>
        <th>Opsi</th>
    </tr>
    @foreach ($siswa as $item)
    <tr>
        <td>{{ $item->nama }}</td>
        <td>{{ $item->umur }}</td>
        <td>{{ $item->alamat }}</td>
        <td>
            <a href="/siswa/edit/{{ $item->id }}">Edit</a>
            ||
            <a href="/siswa/hapus/{{ $item->id }}">Hapus</a>
        </td>
    </tr>
    @endforeach
</table>
    
<br>
Halaman: {{ $siswa->currentPage() }} <br>
Jumlah data: {{ $siswa->total() }} <br>
Data Per Halaman: {{ $siswa->perPage() }} <br>
{{ $siswa->links() }}
@endsection

