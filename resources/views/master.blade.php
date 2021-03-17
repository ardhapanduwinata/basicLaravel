<!DOCTYPE html>
<html>
    <head>
        <title>Template Blade Laravel</title>
    </head>
    <body>
        <header>
            <h2>Petani Blog</h2>
                <nav>
                    <a href="/">INDEX</a>
                    <a href="/blog">HOME</a>
                    <a href="/blog/tentang">TENTANG</a>
                    <a href="/contact">CONTACT</a>
                </nav>
        </header>
        <br>
        <br>

        <!-- Bagian judul halaman blog -->
        <h3> @yield('judul_halaman') </h3>

        <!-- Bagian isi konten blog -->
        <h3> @yield('konten') </h3>

        <footer>
            <p>&copy; 
                <a href="https://petaniweb-f07e5.web.app">
                    www.petaniweb.com
                </a>
                . 2015-2021
            </p>
        </footer>
    </body>
</html>

