<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use App\Http\Requests\ArtikelRequest;
use App\Http\Requests\UpdateArtikelRequest;
use App\Models\Artikel;
use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Storage;

class ArtikelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (request()->ajax()) {
            $artikel = Artikel::with('Kategori')->latest()->get();

            return DataTables::of($artikel)
                ->addIndexColumn()
                // custom kolom
                ->addColumn('kategori_id', function($artikel){
                    return $artikel->Kategori->nama;
                })
                ->addColumn('status', function($artikel){
                    if ($artikel->status == 0) {
                        return '<span class="badge bg-danger">Private</span>';
                    } else {
                        return '<span class="badge bg-success">Publish</span>';
                    }
                })
                ->addColumn('button', function($artikel){
                    return '<div class="text-center">
                                <a href="artikels/'.$artikel->id.'" class="btn btn-secondary">Detail</a>
                                <a href="artikels/'.$artikel->id.'/edit" class="btn btn-warning">Edit</a>
                                <a href="#" onclick="deleteArtikel(this)" data-id="'.$artikel->id.'" class="btn btn-danger"">Hapus</a>
                            </div>';
                })
                // panggil kolom
                ->rawColumns(['kategori_id' , 'status' , 'button'])
                ->make();
        }
        return view('back.artikel.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('back.artikel.create', [
            'kategoris' => Kategori::get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ArtikelRequest $request)
    {
        $data = $request->validated();

        $file = $request->file('img');
        $fileName = uniqid().'.'.$file->getClientOriginalExtension();
        $file->storeAs('public/back/', $fileName);

        $data['img'] = $fileName;
        $data['slug'] = Str::slug($data['judul']);

        Artikel::create($data);

        return redirect(url('artikels'))->with('success', 'Data Artikel Telah Dibuat');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('back.artikel.show' , [
            'artikel' => Artikel::find($id)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('back.artikel.update', [
            'artikel' => Artikel::find($id),
            'kategoris' => Kategori::get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateArtikelRequest $request, string $id)
    {
        $data = $request->validated();

        if ($request->hasFile('img')) {
            $file = $request->file('img');
            $fileName = uniqid().'.'.$file->getClientOriginalExtension();
            $file->storeAs('public/back/', $fileName);

            Storage::delete('public/back'.$request->oldImg);

            $data['img'] = $fileName;
        } else {
            $data['img'] = $request->oldImg;
        }



        $data['slug'] = Str::slug($data['judul']);

        Artikel::find($id)->update($data);

        return redirect(url('artikels'))->with('success', 'Data Artikel Telah Diedit');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $data = Artikel::find($id);
        Storage::delete('public/back/'.$data->img);
        $data->delete();

        return response()->json([
            'message' => 'Data Artikel Telah Dihapus'
        ]);
    }
}
