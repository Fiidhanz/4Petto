<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BlogSeeder extends Seeder
{
    public function run()
    {
        Blog::create([
            'title' => 'Tips Kesehatan Anjing',
            'content' => 'Berikan makanan berkualitas dan rutin cek kesehatan.',
            'image_url' => 'blogs/anjing.jpg', // Path gambar
        ]);

        Blog::create([
            'title' => 'Kebersihan Kucing',
            'content' => 'Pastikan litter box bersih setiap hari.',
            'image_url' => 'blogs/kucing.jpg', // Path gambar
        ]);
    }
}
