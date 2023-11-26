<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Artikel extends Model
{
    use HasFactory;

    protected $fillable = ['kategori_id', 'judul', 'slug', 'desc', 'img', 'views', 'status', 'tanggal_publikasi'];

    // relasi ke kategori
    public function Kategori(): BelongsTo
    {
        return $this->belongsTo(Kategori::class);
    }
}
