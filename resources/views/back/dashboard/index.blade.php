    @extends('back.layout.template')

    @section('judul', 'Dashboard - Admin')

    @section('content')
        <!-- Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Dashboard</h1>
        </div>
        <div class="row">
            <div class="col-6">
                <div class="card text-bg-dark mb-3" style="max-width: 100%;">
                    <div class="card-header">Total Artikel</div>
                    <div class="card-body">
                        <h5 class="card-title">{{  $total_artikel }} Artikel</h5>
                        <p class="card-text">
                            <a href="{{ url('artikels') }}" class="text-black btn btn-light">Lihat</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="card text-bg-dark mb-3" style="max-width: 100%;">
                    <div class="card-header">Total Kategori</div>
                    <div class="card-body">
                        <h5 class="card-title">{{  $total_kategori }} Kategori</h5>
                        <p class="card-text">
                            <a href="{{ url('kategoris') }}" class="text-black btn btn-light">Lihat</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-6">
                <h4>Artikel Terbaru</h4>
                <hr>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Kategori</th>
                            <th>Tanggal Dibuat</th>
                            <th>Function</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($latest_artikel as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->judul }}</td>
                                <td>{{ $item->kategori->nama }}</td>
                                <td>{{ $item->tanggal_publikasi }}</td>
                                <td>
                                    <a href="{{ url('artikels/'.$item->id) }}" class="btn btn-secondary">Detail</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="col-6">
                <h4>Artikel Populer</h4>
                <hr>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Judul</th>
                            <th>Kategori</th>
                            <th>Views</th>
                            <th>Function</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($populer_artikel as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->judul }}</td>
                                <td>{{ $item->kategori->nama }}</td>
                                <td>{{ $item->views }}</td>
                                <td>
                                    <a href="{{ url('artikels/'.$item->id) }}" class="btn btn-secondary">Detail</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        </main>
        <!-- End Content -->
    @endsection


