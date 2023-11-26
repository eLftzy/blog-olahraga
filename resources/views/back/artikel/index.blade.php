@extends('back.layout.template')

@push('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
@endpush

@section('judul', 'List Artikel - Admin')

@section('content')
    <!-- Content -->
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Artikel</h1>
    </div>

    <div class="mt-3">
        <a href="{{ url('artikels/create') }}" class="btn btn-success mb-3">Tambah</a>

        @if ($errors->any())
        <div class="my-3">
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        </div>
        @endif

        <!-- sucess alert -->
        <div class="swal" data-swal="{{ session('success') }}"></div>

        <table class="table table-striped table-bordered" id="dataTable">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Judul</th>
                    <th>Kategori</th>
                    <th>Views</th>
                    <th>Status</th>
                    <th>Tanggal Publikasi</th>
                    <th>Function</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>

    </main>
    <!-- End Content -->
@endsection

@push('js')
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- alert scc -->
    <script>
        const swal = $('.swal').data('swal');

        if (swal){
            Swal.fire({
                'title': 'Berhasil',
                'text': swal,
                'icon': 'success',
                'showConfirmButton': false,
                'timer': 2000
            })
        }

        function deleteArtikel(e) {
            let id = e.getAttribute('data-id');

            Swal.fire({
                title: 'Hapus',
                text: "Yakin Ingin Menghapus Artikel Ini?",
                icon: 'question',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancleButtonColor: '#3085d6',
                confirmButtonText: 'Hapus!',
                cancleButtonText: 'Batal',
            }).then((result)=>{
                if(result.value){
                    $.ajax({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        type: 'DELETE',
                        url: '/artikels/' + id,
                        dataType: "json",
                        success: function(response) {
                            Swal.fire({
                                title: "Berhasil",
                                text: response.message,
                                icon: 'success',
                            }).then((result) => {
                                window.location.href = '/artikels';
                            })
                        },
                        error: function(xhr, ajaxOptions, thrownError){
                            alert(xhr.status + "\n" + xhr.responseText + "\n" + thrownError);
                        }
                    });
                }
            })
        }

    </script>

    <!-- data tabel -->
    <script>
        $(document).ready(function()    {
            $('#dataTable').dataTable({
                processing: true,
                serverside: true,
                ajax: '{{  url()->current() }}',
                columns: [
                    {
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'judul',
                        name: 'judul'
                    },
                    {
                        data: 'kategori_id',
                        name: 'kategoti_id'
                    },
                    {
                        data: 'views',
                        name: 'views'
                    },
                    {
                        data: 'status',
                        name: 'status'
                    },
                    {
                        data: 'tanggal_publikasi',
                        name: 'tanggal_publikasi'
                    },
                    {
                        data: 'button',
                        name: 'button'
                    },
                ]
            });
        });
    </script>
@endpush
