<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use App\Models\Kategori;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\Return_;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('back.kategori.index', ['kategoris' => Kategori::latest()->get()]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'nama' => 'required|min:3'
        ]);

        $data['slug'] = Str::slug($data['nama']);

        Kategori::create($data);

        return back()->with('success','Kategori Berhasil Ditambahkan');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([
            'nama' => 'required|min:3'
        ]);

        $data['slug'] = Str::slug($data['nama']);

        Kategori::find($id)->update($data);

        return back()->with('success','Kategori Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Kategori::find($id)->delete();

        return back()->with('success','Kategori Berhasil Dihapus');
    }
}
