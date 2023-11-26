<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Artikel;
use App\Models\Kategori;
use Illuminate\Http\Request;

class FrontKategoriController extends Controller
{
    public function index($slugKategori){
        return view('front.kategori.index', [
            'artikel' => Artikel::with('Kategori')->whereHas('Kategori', function($q) use ($slugKategori){
                $q->where('slug', $slugKategori);
            }) -> latest()->paginate(3),
            'kategori' => $slugKategori
        ]);
    }
}
