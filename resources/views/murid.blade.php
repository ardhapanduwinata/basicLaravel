@extends('master')

@section('konten')
<div class="container">
    <div class="card mt-5">
        <div class="card-header text-center">
            Data Murid
        </div>
        <div class="card-body">
            <br>
            <br>
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Murid</th>
                        <th>Wali Murid</th>
                    </tr>
                </thead>
                <body>
                    @foreach ($murid as $item)
                        <tr>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->nama }}</td>
                            <td>{{ $item->waliMurid->nama }}</td>
                        </tr>
                    @endforeach
                </body>
            </table>
        </div>
    </div>
</div>
@endsection
