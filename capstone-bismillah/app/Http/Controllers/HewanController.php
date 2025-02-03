<?php

namespace App\Http\Controllers;

use App\Models\Hewan;
use Illuminate\Http\Request;

class HewanController extends Controller
{
    // Menampilkan data hewan
    public function create()
    {
        $data = Hewan::all();
        return view('hewan.hewan', compact('data')); // Pastikan view ini benar
    }

    // Menyimpan data hewan
    public function store(Request $request)
    {
        // Validasi input
        $request->validate([
            'gambar' => 'nullable|array', // Pastikan menerima array untuk multiple images
            'gambar.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validasi file gambar
            'kategori_hewan' => 'required|string',
            'nama_hewan' => 'required|string',
            'ras_hewan' => 'required|string',
            'jenis_kelamin' => 'required|string',
            'usia_hewan' => 'required|integer',
            'berat_hewan' => 'required|numeric',
            'temperature_hewan' => 'required|numeric',
            'makanan' => 'required|string',
            'jumlah_vaksinasi' => 'required|integer',
            'vaksinasi_terakhir' => 'required|string',
            'tanggal_vaksinasi' => 'required|date',
            'penyakit' => 'required|string',
            'obat' => 'required|string',
        ]);

        // Membuat objek Hewan baru
        $hewan = new Hewan();
        $hewan->user_id = auth()->user()->id;
        $hewan->kategori_hewan = $request->kategori_hewan;
        $hewan->nama_hewan = $request->nama_hewan;
        $hewan->ras_hewan = $request->ras_hewan;
        $hewan->jenis_kelamin = $request->jenis_kelamin;
        $hewan->usia_hewan = $request->usia_hewan;
        $hewan->berat_hewan = $request->berat_hewan;
        $hewan->temperature_hewan = $request->temperature_hewan;
        $hewan->makanan = $request->makanan;
        $hewan->jumlah_vaksinasi = $request->jumlah_vaksinasi;
        $hewan->vaksinasi_terakhir = $request->vaksinasi_terakhir;
        $hewan->tanggal_vaksinasi = $request->tanggal_vaksinasi;
        $hewan->penyakit = $request->penyakit;
        $hewan->obat = $request->obat;

        // Menyimpan gambar jika ada
        if ($request->hasFile('gambar')) {
            $imagePaths = [];

            foreach ($request->file('gambar') as $image) {
                // Validasi format file gambar
                if (in_array(strtolower($image->getClientOriginalExtension()), ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'])) {
                    // Membuat nama file yang unik
                    $fileName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Simpan gambar ke direktori 'uploads/hewan' di public storage
                    $path = $image->storeAs('uploads/hewan', $fileName, 'public');

                    // Tambahkan path gambar ke array
                    $imagePaths[] = $path;
                } else {
                    // Berikan pesan error jika file bukan gambar
                    return redirect()->back()->with('error', 'File yang diupload bukan gambar.');
                }
            }

            // Simpan array path gambar dalam format JSON ke database
            $hewan->gambar = json_encode($imagePaths);
        }

        // Simpan data hewan ke database
        $hewan->save();

        // Redirect dengan pesan sukses
        return redirect()->route('hewan.create')->with('success', 'Data hewan berhasil disimpan.');
    }

    // Menghapus data hewan
    public function destroy($id)
    {
        $hewan = Hewan::find($id);

        if ($hewan) {
            $hewan->delete(); // Menghapus data hewan dari database
            return response()->json(['success' => true]);
        }

        return response()->json(['success' => false], 404);
    }

    
}
