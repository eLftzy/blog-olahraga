<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{ route('welcome') }}">
            <img src="{{ asset('front/img/favicon.ico') }}" alt="" width="50" height="50">
            <strong>Sports.id</strong>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="{{ route('welcome') }}">Home</a></li>
                <li class="nav-item"><a class="nav-link" style="margin-right: 10px" href="{{ url('/artikel') }}">Artikel</a></li>
                <li class="nav-item"><a class="nav-link btn btn-light text-dark" href="{{ url('/login') }}"><strong>Login</strong></a></li>
            </ul>
        </div>
    </div>
</nav>
