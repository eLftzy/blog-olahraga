@extends('front.layout.template-show')

@section('judul', 'Arikel - Sports.id')

@section('content')
        <!-- Page content-->
        <div class="container mt-5">
            <div class="mb-3 shadow">
                        <form action="{{ route('search') }}" method="POST">
                            @csrf
                            <div class="input-group">
                                <input class="form-control" type="text" name="keyword" placeholder="Cari Artikel...."/>
                                <button class="btn btn-primary" id="button-search" type="submit">Cari</button>
                            </div>
                        </form>
            </div>

            @if ($keyword)
                <p>Menampilkan Hasil Pencarian: <strong>{{ $keyword }}</strong></p>
            @endif

            <div class="row">
                @forelse ($artikel as $item)
                    <div class="col-4">
                        <div class="card mb-4 shadow">
                            <a href="{{ url('post/'.$item->slug) }}"><img class="card-img-top post-title-img" src="{{ asset('storage/back/'.$item->img) }}" alt="..." /></a>
                            <div class="card-body card-height">
                                <div class="small text-muted">
                                    {{ $item->created_at->format('d-m-Y') }}
                                    <a href="{{ url('kategori/'.$item->Kategori->slug) }}">{{ $item->Kategori->nama }}</a>
                                </div>
                                <h2 class="card-title h4">{{ $item->judul }}</h2>
                                <p class="card-text">{{ Str::limit(strip_tags($item->desc), 150, '...') }}</p>
                                <a class="btn btn-primary" href="{{ url('post/'.$item->slug) }}">Baca Selengkapnya →</a>
                            </div>
                        </div>
                    </div>
                @empty
                <h3>Tidak Ditemukan!</h3>
                @endforelse
            </div>
            <!-- Pagination-->
            <div class="pagination justify-content-center my-4">
                {{ $artikel->links() }}
            </div>
        </div>
@endsection
