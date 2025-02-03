<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Hewan;  // Pastikan Anda mengimpor model Hewan
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
    public function dashboard()
    {
        $user = Auth::user(); // Ambil pengguna yang login
        $data = Hewan::where('user_id', $user->id)->get(); // Ambil hewan milik pengguna ini
        return view('dashboard', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $hewan = Hewan::where('id', $id)
    ->where('user_id', Auth::id())
    ->firstOrFail();

        // Validate input data
        $request->validate([
            'gambar' => 'nullable|array', // Allow array of images (nullable)
            'gambar.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validation for each image
            'nama_hewan' => 'required|string',
            'ras_hewan' => 'required|string',
            'jenis_kelamin' => 'required|string',
            'usia_hewan' => 'required|integer',
            'berat_hewan' => 'required|numeric',
            'temperature_hewan' => 'required|numeric',
            'makanan' => 'required|string',
            'jumlah_vaksinasi' => 'required|integer',
            'vaksinasi_terakhir' => 'required|integer',
            'tanggal_vaksinasi' => 'required|date',
            'penyakit' => 'required|string',
            'obat' => 'required|string',
            'kategori_hewan' => 'required|string',  
        ]);
    
        // Find the animal by ID or fail
        $hewan = Hewan::findOrFail($id);
    
        // Handle image upload if provided
        if ($request->hasFile('gambar')) {
            // Process the image upload
            $gambar = $request->file('gambar');
            $gambarPath = $gambar->store('gambar', 'public'); // Save the image in 'public/hewan_images' directory
            
            // Update the image path in the database
            $hewan->gambar = $gambarPath;
        }
    
        // Update the rest of the animal data
        $hewan->update([
            'nama_hewan' => $request->input('nama_hewan'),
            'ras_hewan' => $request->input('ras_hewan'),
            'jenis_kelamin' => $request->input('jenis_kelamin'),
            'usia_hewan' => $request->input('usia_hewan'),
            'berat_hewan' => $request->input('berat_hewan'),
            'temperature_hewan' => $request->input('temperature_hewan'),
            'makanan' => $request->input('makanan'),
            'jumlah_vaksinasi' => $request->input('jumlah_vaksinasi'),
            'vaksinasi_terakhir' => $request->input('vaksinasi_terakhir'),
            'tanggal_vaksinasi' => $request->input('tanggal_vaksinasi'),
            'penyakit' => $request->input('penyakit'),
            'obat' => $request->input('obat'),
            'kategori_hewan' => $request->input('kategori_hewan'),
        ]);
    
        // Return response with a success message
        return redirect()->route('dashboard')->with('success', 'Data hewan berhasil diperbarui!');
    }
    
}
