@extends('layout.template')

@section('content')
<script src="https://cdn.tailwindcss.com"></script>
<div class="flex min-h-screen justify-center items-center bg-gray-100">
    <div class="bg-white p-8 rounded shadow-lg w-full max-w-4xl">
        <!-- Profile Header -->
        <div class="relative bg-gradient-to-r from-blue-500 via-blue-300 to-pink-300 rounded-t-lg p-8 mb-6 shadow-lg transform transition-transform duration-500 ease-in-out hover:scale-105">
            <!-- Informasi Pengguna -->
            <div class="flex items-center">
                <!-- Foto Profil -->
                <div class="relative">
                    <img src="{{ asset('style/images/logoprofil.jpg') }}" alt="User" class="w-32 h-32 rounded-full border-4 border-white shadow-xl animate__animated animate__fadeIn">
                    <div class="absolute bottom-0 right-0 bg-green-500 border-2 border-white w-6 h-6 rounded-full"></div>
                </div>

                <!-- Detail Pengguna -->
                <div class="ml-6">
                    <h1 class="text-4xl font-bold text-white">{{ $user->name }}</h1>
                    <p class="text-lg text-blue-100">{{ count($hewan) }} Hewan Peliharaan</p>
                </div>
            </div>
        </div>

        <!-- Edit Profile Form (Hidden initially) -->
        <div id="edit-profile-form" class="hidden bg-gray-50 p-6 rounded-lg shadow-md animate__animated animate__fadeInUp">
            <h3 class="text-2xl font-semibold text-gray-800 mb-4">Edit Profil</h3>
            <form action="{{ route('profil.update', $user->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <!-- Username -->
                <div class="mb-4">
                    <label for="name" class="block text-lg font-semibold text-gray-800">Username</label>
                    <input type="text" name="name" id="name" value="{{ $user->name }}" class="w-full px-4 py-2 mt-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                </div>

                <!-- Email -->
                <div class="mb-4">
                    <label for="email" class="block text-lg font-semibold text-gray-800">Email</label>
                    <input type="email" name="email" id="email" value="{{ $user->email }}" class="w-full px-4 py-2 mt-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
                </div>

                <!-- Buttons -->
            </form>
        </div>

        <!-- Pet Section -->
        <div class="my-6">
            <h2 class="text-2xl font-bold mb-4">Peliharaan</h2>
            <div class="flex space-x-4" id="pet-list">
                @foreach($hewan as $pet)
                    <div class="flex flex-col items-center cursor-pointer transform transition-transform duration-500 ease-in-out hover:scale-110">
                        <!-- Cek apakah gambar ada dan formatnya JSON -->
                        @if(!empty($pet->gambar))
                            @php
                                $gambarArray = json_decode($pet->gambar, true);
                            @endphp
                            <!-- Menampilkan gambar hewan -->
                            @foreach($gambarArray as $gambar)
                                <img src="{{ asset('storage/' . $gambar) }}" alt="{{ $pet->nama_hewan }}" class="w-20 h-20 rounded-full border-2 border-gray-300 shadow-md mb-2 animate__animated animate__fadeInUp">
                            @endforeach
                        @else
                            <!-- Menampilkan gambar default jika tidak ada gambar -->
                            <img src="default_pet_icon.png" alt="Pet" class="w-20 h-20 rounded-full border-2 border-gray-300 shadow-md mb-2 animate__animated animate__fadeInUp">
                        @endif
                        <p class="mt-2">{{ $pet->nama_hewan }}</p>
                    </div>
                @endforeach
            </div>
        </div>

        <!-- Profile Details -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 bg-gray-50 p-6 rounded-lg shadow-md">
            <!-- Left Column -->
            <div>
                <h3 class="text-xl font-semibold text-gray-800 mb-4">Identitas Diri</h3>
                <p><strong>Nama:</strong> {{ $user->name }}</p>
                <p><strong>Email:</strong> {{ $user->email }}</p>
            </div>
        </div>

        <!-- Logout Section -->
        <div class="mt-8 text-center">
            <button onclick="showLogoutConfirmation()" class="bg-[#221177] text-white px-6 py-3 rounded-lg hover:bg-[#1a0e5b] transition duration-300 ease-in-out w-full transform transition-transform duration-300 ease-in-out hover:scale-105">
                Logout
            </button>
        </div>
    </div>
</div>

<!-- Modal for Logout Confirmation -->
<div id="logout-modal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center hidden animate__animated animate__fadeIn">
    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-md">
        <h3 class="text-xl font-semibold text-gray-800 mb-4">Are you sure you want to logout?</h3>
        <div class="flex justify-end space-x-4">
            <button onclick="logout()" class="bg-red-500 text-white px-6 py-2 rounded-lg hover:bg-red-600">Logout</button>
            <button onclick="closeLogoutModal()" class="bg-gray-500 text-white px-6 py-2 rounded-lg hover:bg-gray-600">Cancel</button>
        </div>
    </div>
</div>

<script>
function showLogoutConfirmation() {
    const modal = document.getElementById('logout-modal');
    modal.classList.remove('hidden');
}

function closeLogoutModal() {
    const modal = document.getElementById('logout-modal');
    modal.classList.add('hidden');
}

function logout() {
    window.location.href = "{{ route('welcome') }}"; // Redirect to the welcome page after logout
}
</script>
@endsection
