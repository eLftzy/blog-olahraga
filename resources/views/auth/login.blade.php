@extends('layouts.app')

@section('judul', 'Login - Sports.id')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card border-0 shadow rounded-3 my-5">

                <div class="card-body p-4 p-sm-5">
                    <div class="text-center mb-5">
                        <img src="{{ asset('front/img/logo_black.png') }}" height="100" width="100" alt="">
                        <h3><strong>Sports.id</strong></h3>
                    </div>

                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-floating mb-3">
                                <input type="email" class="form-control id="floatingEmail" @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                            <label for="floatingEmail" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>

                        <div class="form-floating mb-3">
                            <input id="floatingPassword" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                            <label for="floatingPassword" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-secondary btn-login text-uppercase fw-bold">
                                {{ __('Login') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
