<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class jadwal extends Model
{
    use HasFactory;

    protected $fillable = ['type', 'title', 'date', 'description','user_id'];
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}




