@extends('master')

@section('judul_halaman', 'Data Siswa')

@section('konten')

<a href="/siswa/tambah">+ Tambah Siswa Baru</a>

<br>
<br>

<div class="form-group">
    <p>Cari Data Siswa</p>
    <form action="/siswa/cari" method="GET" class="form-inline">
        <input class="form-control" type="text" name="cari" placeholder="Cari siswa..." value="{{ old('cari') }}">
        <input class="btn btn-primary ml-3" type="submit" value="CARI">
    </form>
</div>
<br>

<a href="/siswa/print-pdf" class="btn-lg btn-primary" target="_blank" style="float:right; margin:2%">PRINT PDF</a>
<a href="/siswa/print-excel" class="btn-lg btn-success" target="_blank" style="float:right; margin:2%">PRINT EXCEL</a>

<form action="{{ url('siswa') }}" method="GET" >
    Filter Umur:
    <a href="/siswa/umur/30">30</a> |
    <a href="/siswa/umur/34">34</a> |
    <a href="/siswa/umur/35">35</a> |
    <a href="/siswa">Reset</a>
</form>

<table border="1" class="table table-bodered">
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
            <a class="btn btn-warning btn-sm" href="/siswa/edit/{{ $item->id }}">Edit</a>
            ||
            <a class="btn btn-danger btn-sm" href="/siswa/hapus/{{ $item->id }}">Hapus</a>
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

