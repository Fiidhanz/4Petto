<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('blogs', function (Blueprint $table) {
            $table->string('category')->nullable(); // Tambahkan kolom kategori
            $table->string('animal')->nullable();   // Tambahkan kolom jenis hewan
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('blogs', function (Blueprint $table) {
            $table->dropColumn('category');  // Menghapus kolom kategori
            $table->dropColumn('animal');    // Menghapus kolom jenis hewan
        });
    }
};
