@extends('master')

@section('konten')
<div class="container">
    <div class="card mt-5">
        <div class="card-header text-center">
            Data Penulis dan Blog 
        </div>
        <div class="card-body">
            <br>
            <br>
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Penulis</th>
                        <th>Judul Blog</th>
                        <th>Jumlah Blog</th>
                    </tr>
                </thead>
                <body>
                    @foreach ($penulis as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->nama }}</td>
                            <td>
                                @foreach($item->blog as $a)
                                <li>{{ $a->judul }}</li>
                                @endforeach
                            </td>
                            <td>{{ $item->blog->count() }}</td>
                        </tr>
                    @endforeach
                </body>
            </table>
        </div>
    </div>
</div>
@endsection