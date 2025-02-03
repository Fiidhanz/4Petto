<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hewan extends Model
{
    use HasFactory;
    protected $table = 'hewans';
    
    protected $fillable = [
        'id',
        'gambar',
        'nama_hewan',
        'ras_hewan',
        'jenis_kelamin',
        'usia_hewan',
        'berat_hewan',
        'temperature_hewan',
        'makanan',
        'jumlah_vaksinasi',
        'vaksinasi_terakhir',
        'tanggal_vaksinasi',
        'penyakit',
        'obat',
        'kategori_hewan',
        'user_id',
    ];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
