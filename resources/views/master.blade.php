<!DOCTYPE html>
<html>
    <head>
        <title>Template Blade Laravel</title>

        <link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
        <script type="text/javascript" src="{{ asset('/js/app.js') }}"></script>

        <style type="text/css">
            .pagination li{
                float: left;
                list-style-type: none;
                margin: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <header>
                        <h2>Petani Blog</h2>
                            <nav>
                                <a href="/">INDEX</a>
                                <a href="/dashboard">HOME</a>
                                <a href="/blog/tentang">TENTANG</a>
                                <a href="/contact">CONTACT</a>
                            </nav>
                    </header>
                </div>
            </div>
        </div>
        <br>
        <br>

        <!-- Bagian judul halaman blog -->
        <h3> @yield('judul_halaman') </h3>

        <!-- Bagian isi konten blog -->
        <h3> @yield('konten') </h3>

        <footer>
            <p style="padding-left: 3rem">&copy; 
                <a href="https://petaniweb-f07e5.web.app">
                    www.petaniweb.com
                </a>
                . 2015-2021
            </p>
        </footer>
    </body>
</html>

