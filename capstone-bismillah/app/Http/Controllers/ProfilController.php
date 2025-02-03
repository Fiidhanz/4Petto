<?php

namespace App\Http\Controllers;
use App\Models\Profil;
use App\Models\Hewan;
use Illuminate\Http\Request;

class ProfilController extends Controller
{
    public function show()
{
    $user = auth()->user();
    $hewan = Hewan::where('user_id', $user->id)->get();

    return view('profil.profil', compact('user', 'hewan'));
}

public function update(Request $request, $id)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
    ]);

    $user = Profil::findOrFail($id);

    $user->name = $request->input('name');
    $user->email = $request->input('email');

    $user->save();

    return redirect()->route('profil.show')->with('success', 'Profil berhasil diperbarui');
}

}
