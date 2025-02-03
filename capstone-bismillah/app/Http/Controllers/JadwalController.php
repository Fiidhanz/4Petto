<?php

// app/Http/Controllers/JadwalController.php

namespace App\Http\Controllers;
use App\Models\Jadwal;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class JadwalController extends Controller
{
    // Menampilkan daftar semua jadwal
    public function index()
    {
        // Ambil semua jadwal milik pengguna yang sedang login
        $jadwals = Auth::user()->jadwals; // Mengambil jadwal berdasarkan user yang login
        return view('penjadwalan.jadwal', compact('jadwals'));
    }

    // Menampilkan pengingat yang akan datang
    public function reminder()
    {
        // Ambil pengingat yang akan datang dalam waktu 1 hari dari sekarang
        $reminders = Jadwal::where('date', '>=', Carbon::now()->toDateString())
            ->where('date', '<=', Carbon::now()->addDay()->toDateString())
            ->get();
            
        // Pass data pengingat ke view
        return view('layout.template', compact('reminders'));
    }

    // Menyimpan data jadwal baru
   // app/Http/Controllers/JadwalController.php
   // Menggunakan redirect setelah menyimpan jadwal
public function store(Request $request)
{
    // Validasi data
    $request->validate([
        'type' => 'required|string',
        'title' => 'required|string',
        'date' => 'required|date',
        'description' => 'nullable|string',
    ]);
   
    // Simpan data ke dalam database
    $jadwal = Jadwal::create([
        'type' => $request->type,
        'title' => $request->title,
        'date' => $request->date,
        'description' => $request->description,
        'user_id' => Auth::id(),  // Menyimpan ID user yang sedang login
    ]);
   
    // Redirect ke halaman index setelah menyimpan
    return redirect()->route('jadwal.index')->with('success', 'Jadwal berhasil ditambahkan!');
}

   
    // Menghapus jadwal
    public function destroy(Jadwal $jadwal)
    {
        try {
            // Pastikan hanya pengguna yang membuat jadwal yang dapat menghapusnya
            if ($jadwal->user_id === Auth::id()) {
                $jadwal->delete();
                return response()->json(['success' => true, 'id' => $jadwal->id]);
            } else {
                return response()->json(['success' => false, 'message' => 'Anda tidak memiliki akses untuk menghapus jadwal ini'], 403);
            }
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'Pengingat gagal dihapus'], 500);
        }
    }
}

