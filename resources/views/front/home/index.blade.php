@extends('front.layout.template')

@section('judul', 'Sports.id')

@section('content')
        <!-- Page content-->
        <div class="container mt-5">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">
                    <!-- Featured blog post-->
                    <div class="card mb-4 shadow">
                        <a href="{{ url('post/'.$latest_post->slug) }}">
                            <img class="card-img-top featured-img" src="{{ asset('storage/back/'.$latest_post->img) }}" alt="..." />
                        </a>

                        <div class="card-body">
                            <div class="small text-muted">{{ $latest_post->created_at->format('d-m-Y') }}</div>
                            <h2 class="card-title">{{ $latest_post->judul }}</h2>
                            <p class="card-text">{{ Str::limit(strip_tags($latest_post->desc), 300, '...') }}</p>
                            <a class="btn btn-primary" href="{{ url('post/'.$latest_post->slug) }}">Baca Selengkapnya →</a>
                        </div>
                    </div>
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        @foreach ($artikel as $item)
                        <div class="col-lg-6">
                            <!-- Blog post-->
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
                        @endforeach
                    </div>
                    <!-- Pagination-->
                    <div class="pagination justify-content-center my-4">
                        {{ $artikel->links() }}
                    </div>
                </div>
                <!-- Side widgets-->
                @include('front.layout.side-widget')
            </div>
        </div>
@endsection
