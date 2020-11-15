<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Biodatum extends Model
{
    protected $fillable = [
        'nama',
        'tempat_lahir',
        'tgl_lahir',
        'no_hp',
        'alamat',
        'keterangan',
        'email',

    ];


    protected $dates = [
        'tgl_lahir',
        'created_at',
        'updated_at',

    ];

    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/biodata/'.$this->getKey());
    }
}
