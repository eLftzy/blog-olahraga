@extends('back.layout.template')

@section('judul', 'Detail Artikel - Admin')

@section('content')
    <!-- Content -->
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 mb-5">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Detail Artikel</h1>
    </div>

    <div class="mt-3">

        <table class="table table-striped table-bordered">
            <tr>
                <th width="150px">Judul</th>
                <td>: {{ $artikel->judul }}</td>
            </tr>
            <tr>
                <th>Kategori</th>
                <td>: {{ $artikel->Kategori->nama }}</td>
            </tr>
            <tr>
                <th>Deskripsi</th>
                <td>: {!! $artikel->desc !!}</td>
            </tr>
            <tr>
                <th>Image</th>
                <td>
                    <a href="{{ asset('storage/back/'.$artikel->img) }}" target="_blank" rel="noopener noreferrer">
                        <img src="{{ asset('storage/back/'.$artikel->img) }}" alt="" width="50%">
                    </a>
                </td>
            </tr>
            <tr>
                <th>Views</th>
                <td>: {{ $artikel->views }}</td>
            </tr>
            <tr>
                <th>Status</th>
                @if ($artikel->status == 1)
                    <td><span class="badge bg-success">Publish</span></td>
                @else
                <td><span class="badge bg-danger">Private</span></td>
                @endif
            </tr>
            <tr>
                <th>Tanggal Publikasi</th>
                <td>: {{ $artikel->tanggal_publikasi }}</td>
            </tr>
        </table>

        <div class="float-end">
            <a href="{{ url('artikels') }}" class="btn btn-secondary">Kembali</a>
        </div>
    </div>

    </main>
    <!-- End Content -->
@endsection
