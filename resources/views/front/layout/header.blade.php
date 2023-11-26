<header class="shadow">

    <!-- This div is  intentionally blank. It creates the transparent black overlay over the video which you can modify in the CSS -->
    <div class="overlay"></div>

    <!-- The HTML5 video element that will create the background video on the header -->
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        <source src="{{ asset('front/img/background.mp4') }}" type="video/mp4">
    </video>

    <!-- The header content -->
    <div class="container h-100">
        <div class="d-flex h-100 text-center align-items-center">
        <div class="w-100 text-white">
            <h1 class="display-3">Selamat Datang di Blog <strong>Sports.id</strong></h1>
            <p class="lead mb-0">Sebuah Blog yang membahas seputar olahraga</p>
        </div>
        </div>
    </div>
</header>
