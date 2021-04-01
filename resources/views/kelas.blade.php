@extends('master')

@section('konten')
<div class="container">
    <div class="card mt-5">
        <div class="card-header text-center">
            Data Kelas dan Member
        </div>
        <div class="card-body">
            <br>
            <br>
            <table class="table table-bordered table-hover table-striped">
                <thead>
                    <tr>
                        <th>Member</th>
                        <th>Kelas</th>
                        <th>Jumlah kelas/member</th>
                    </tr>
                </thead>
                <body>
                    @foreach ($member as $item)
                        <tr>
                            <td>{{ $item->nama }}</td>
                            <td>
                                @foreach($item->kelas as $k)
                                <li>{{ $k->nama }}</li>
                                @endforeach
                            </td>
                            <td>{{ $item->kelas->count() }}</td>
                        </tr>
                    @endforeach
                </body>
            </table>
        </div>
    </div>
</div>
@endsection
