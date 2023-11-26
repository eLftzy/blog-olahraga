<div class="col-lg-4">
    <!-- Search widget-->
    <div class="card mb-4 shadow">
        <div class="card-header">Search</div>
        <div class="card-body">
            <form action="{{ route('search') }}" method="POST">
                @csrf
                <div class="input-group">
                    <input class="form-control" type="text" name="keyword" placeholder="Cari Artikel...."/>
                    <button class="btn btn-primary" id="button-search" type="submit">Cari</button>
                </div>
            </form>
        </div>
    </div>
    <!-- Categories widget-->
    <div class="card mb-4 shadow">
        <div class="card-header">Kategori</div>
        <div class="card-body">
                    <div>
                        @foreach ($kategori as $item)
                            <span>
                                <a class="bg-primary badge text-white list-cat" href="{{ url('kategori/'.$item->slug) }}">{{ $item->nama }}</a>
                            </span>
                        @endforeach
                    </div>
        </div>
    </div>
    <!-- About -->
    <div class="card mb-4 shadow">
        <div class="card-header">Tentang Kami</div>
        <div class="card-body">
                    <div class="text-center">
                        <img src="{{ asset('front/img/logo_black.png') }}" height="150" width="150" alt="">
                        <h2><strong>Sports.id</strong></h2>
                    </div><br>
                    <div class="">
                        <p>Selamat datang di Sports.id!</p>
                        <p>
                            Kami adalah komunitas penggemar olahraga yang berkomitmen untuk memberikan informasi, wawasan, dan hiburan seputar dunia olahraga. Dengan semangat yang tak terbatas, kami menyajikan tips, manfaat, sejarah, dan semua yang Anda butuhkan untuk tetap terhubung dengan dunia olahraga.
                        </p>
                    </div>
        </div>
    </div>
</div>
