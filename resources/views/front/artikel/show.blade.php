@extends('front.layout.template-show')

@section('judul', 'Artikel - Sports.id')

@section('content')
        <!-- Page content-->
        <div class="container mt-5">
            <div class="row">
                <div class="">
                    <div class="card mb-4 shadow">

                        <div class="card-body">
                            <h2 class="card-title">{{ $artikel->judul }}</h2>
                            <div class="small text-muted">
                                <span class="ml-2">{{ $artikel->created_at->format('d-m-Y') }}</span>
                                <span class="ml-2">
                                    <a class="bg-primary badge text-white list-cat" href="{{ url('kategori/'.$artikel->Kategori->slug) }}">{{ $artikel->Kategori->nama }}</a>
                                </span>
                                <span class="ml-2">{{ $artikel->views }}</span>x
                            </div>
                        </div>

                        <a href="{{ url('post/'.$artikel->slug) }}">
                            <img class="card-img-top single-img" src="{{ asset('storage/back/'.$artikel->img) }}" alt="..." />
                        </a>

                        <div class="card-body">
                            <p class="card-text">
                                {!! $artikel->desc !!}
                            </p>
                        </div>
                    </div>
                    </div>
                </div>

                <!-- Side widgets-->
                @include('front.artikel.side-widget-show')
            </div>
        </div>
@endsection
