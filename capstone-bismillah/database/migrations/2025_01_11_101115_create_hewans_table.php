<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('hewans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('gambar')->nullable(); // Path untuk gambar
            $table->string('nama_hewan', 50);
            $table->string('ras_hewan', 50);
            $table->string('jenis_kelamin', 50);
            $table->integer('usia_hewan'); // Mengubah tipe data menjadi integer jika usia hewan adalah angka
            $table->decimal('berat_hewan', 8, 2); // Mengubah menjadi decimal untuk berat (misalnya 15.50 kg)
            $table->decimal('temperature_hewan', 5, 2); // Menggunakan decimal untuk suhu (misalnya 37.5°C)
            $table->string('makanan', 100); // Makanan bisa lebih panjang, jadi perlu penyesuaian panjang kolom
            $table->integer('jumlah_vaksinasi'); // Mengubah menjadi integer jika jumlah vaksinasi adalah angka
            $table->string('vaksinasi_terakhir', 50);
            $table->date('tanggal_vaksinasi'); // Menggunakan tipe date untuk tanggal vaksinasi
            $table->string('penyakit', 100);
            $table->string('obat', 100); // Panjang kolom obat disesuaikan
            $table->string('kategori_hewan', 50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('hewans');
    }
};
