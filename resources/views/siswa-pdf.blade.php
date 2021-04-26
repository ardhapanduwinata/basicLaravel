<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    </head>
    <body>
        <h3 style="text-align: center">Data Siswa</h3>
        <table border="1" class="table table-bordered">
            <tr>
                <td>ID</td>
                <td>Nama</td>
                <td>Umur</td>
                <td>Alamat</td>
            </tr>

            @foreach($siswa as $data)
            <tr>
                <td>{{ $data->id }}</td>
                <td>{{ $data->nama }}</td>
                <td>{{ $data->umur }}</td>
                <td>{{ $data->alamat }}</td>
            </tr>
            @endforeach
        </table>
    </body>
</html>
