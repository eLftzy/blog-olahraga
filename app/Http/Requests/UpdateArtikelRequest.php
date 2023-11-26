<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateArtikelRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'kategori_id' => 'required',
            'judul' => 'required',
            'desc' => 'required',
            'img' => 'nullable|image|file|mimes:png,jpg,webp|max:5024',
            'status' => 'required',
            'tanggal_publikasi' => 'required',
        ];
    }
}
