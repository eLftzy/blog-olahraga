<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Artikel;
use App\Models\Kategori;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){

        return view('front.home.index', [
            'latest_post' => Artikel::latest()->first(),
            'artikel' => Artikel::with('Kategori')->whereStatus(1)->latest()->simplepaginate(4),
            'kategori' => Kategori::latest()->get()
        ]);
    }
}
