@extends('back.layout.template')

@push('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
@endpush

@section('judul', 'Tambah Artikel - Admin')

@section('content')
    <!-- Content -->
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Tambah Artikel</h1>
    </div>

    <div class="mt-3">

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

        <form action="{{ url('artikels') }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="row">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="judul">Judul</label>
                        <input type="text" name="judul" id="judul" class="form-control" value="{{ old('judul') }}">
                    </div>
                </div>
                <div class="col-6">
                    <div class="mb-3">
                        <label for="judul">Kategori</label>
                        <select name="kategori_id" id="ketegori_id" class="form-control">
                            <option value="" hidden><---- Pilih Kategori ----></option>
                            @foreach ($kategoris as $item)
                                <option value="{{ $item->id }}">{{ $item->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label for="desc">Artikel</label>
                <textarea name="desc" id="editor" cols="30" rows="10" class="form-control"></textarea>
            </div>

            <div class="mb-3">
                <label for="img">Gambar (Maximal 5MB)</label>
                <input type="file" name="img" id="img" class="form-control">
                <div class="mt-1">
                    <img src="" alt="" class="img-thumnails img-preview" width="100px">
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <div class="mb-3">
                        <label for="status">Status</label>
                        <select name="status" id="status" class="form-control">
                            <option value="" hidden><---- Pilih Status ----></option>
                            <option value="1">Publish</option>
                            <option value="0">Private</option>
                        </select>
                    </div>
                    </div>

                    <div class="col-6">
                    <div class="mb-3">
                        <label for="tanggal_publikasi">Tanggal Publikasi</label>
                        <input type="date" name="tanggal_publikasi" id="tanggal_publikasi" class="form-control">
                    </div>
                </div>
            </div>

            <div class="float-end">
                <button type="submit" class="btn btn-success">Simpan</button>
            </div>

        </form>

    </div>

    </main>
    <!-- End Content -->
@endsection

@push('js')
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>

    <script>
        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token=',
            clipboard_handleImages: false
        }
    </script>

    <script>
        // ckeditor
        CKEDITOR.replace('editor', options);
        //img prev
        $("#img").change(function(){
            previewImage(this);
        });

        function previewImage(input){
            if (input.files && input.files[0]){
                var reader = new FileReader();

                reader.onload = function(e){
                    $('.img-preview').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
@endpush
