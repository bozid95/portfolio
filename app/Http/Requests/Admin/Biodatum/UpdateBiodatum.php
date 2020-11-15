<?php

namespace App\Http\Requests\Admin\Biodatum;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Gate;
use Illuminate\Validation\Rule;

class UpdateBiodatum extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return Gate::allows('admin.biodatum.edit', $this->biodatum);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'nama' => ['nullable', 'string'],
            'tempat_lahir' => ['nullable', 'string'],
            'tgl_lahir' => ['nullable', 'date'],
             'no_hp' => ['nullable', 'string'],
            'alamat' => ['nullable', 'string'],
            'keterangan' => ['nullable', 'string'],
            'email' => ['nullable', 'string'],

        ];
    }

    /**
     * Modify input data
     *
     * @return array
     */
    public function getSanitized(): array
    {
        $sanitized = $this->validated();


        //Add your code for manipulation with request data here

        return $sanitized;
    }
}
