<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'content',
        'image_url',
        'category', // Misalnya, kategori sebagai string
        'animal', 
    ];
    public function getCategoryNameAttribute()
    {
        $categories = [
            'food' => 'Makanan',
            'health' => 'Kesehatan',
            'cleaning' => 'Kebersihan',
        ];

        return $categories[$this->category] ?? 'Kategori Tidak Dikenal';
    }

    /**
     * Mendapatkan nama hewan
     */
    public function getAnimalNameAttribute()
    {
        $animals = [
            'dog' => 'Anjing',
            'cat' => 'Kucing',
        ];

        return $animals[$this->animal] ?? 'Hewan Tidak Dikenal';
    }
}

