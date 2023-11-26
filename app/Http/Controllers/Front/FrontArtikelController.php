<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Artikel;
use App\Models\Kategori;
use Illuminate\Http\Request;

class FrontArtikelController extends Controller
{
    public function index(){

        $keyword = request()->keyword;

        if ($keyword) {
            $artikel = Artikel::with('Kategori')
            ->whereStatus(1)
            ->where('judul', 'like', '%' . $keyword . '%')
            ->latest()
            ->simplepaginate(3);
        } else {
            $artikel = Artikel::with('Kategori')->whereStatus(1)->latest()->simplepaginate(3);
        }

        return view('front.artikel.index', [
            'artikel' => $artikel,
            'keyword' => $keyword
        ]);

    }

    public function show($slug){
        $artikel = Artikel::whereSlug($slug)->firstOrFail();
        $artikel->increment('views');
        return view('front.artikel.show', [
            'artikel' => $artikel,
            'kategori' => Kategori::latest()->get()
        ]);
    }
}
