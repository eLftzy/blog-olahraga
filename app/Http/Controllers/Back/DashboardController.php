<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use App\Models\Artikel;
use App\Models\Kategori;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
        return view('back.dashboard.index', [
            'total_artikel' => Artikel::count(),
            'total_kategori' => Kategori::count(),
            'latest_artikel' => Artikel::with('kategori')->whereStatus('1')->latest()->take(5)->get(),
            'populer_artikel' => Artikel::with('kategori')->whereStatus('1')->orderBy('views', 'desc')->take(5)->get()
        ]);
    }
}
