@extends('layout.template')

@section('content')
  <div class="container mx-auto px-4 py-6">
    <div class="w-full max-w-4xl mx-auto bg-white shadow-lg rounded-lg p-6">
      <h4 class="text-xl font-semibold text-gray-800 mb-4">Data Riwayat Hewan</h4>
      <p class="text-gray-600 mb-6">Data Hewan</p>

      <form method="POST" action="{{ route('hewan.store') }}" enctype="multipart/form-data">
        @csrf

        <!-- Foto Upload -->
        <div class="mb-6">
          <label for="gambar" class="block text-sm font-medium text-gray-700">Photo Upload</label>
          <input 
            type="file" 
            name="gambar[]" 
            id="gambar" 
            class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 transition-all duration-300 transform hover:scale-105"
            multiple 
            accept="image/*" 
            required>
          <small class="text-gray-500">You can upload multiple images (JPEG, PNG, JPG, GIF).</small>
          @error('gambar')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <!-- Grid Layout for Input Fields -->
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">

          <!-- Kategori Hewan -->
          <div class="mb-6">
            <label for="kategori_hewan" class="block text-sm font-medium text-gray-700">Kategori Hewan</label>
            <select class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="kategori_hewan" id="kategori_hewan" required>
              <option value="Anjing" {{ old('kategori_hewan') == 'Anjing' ? 'selected' : '' }}>Anjing</option>
              <option value="Kucing" {{ old('kategori_hewan') == 'Kucing' ? 'selected' : '' }}>Kucing</option>
            </select>
            @error('kategori_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Nama Hewan -->
          <div class="mb-6">
            <label for="nama_hewan" class="block text-sm font-medium text-gray-700">Nama Hewan</label>
            <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="nama_hewan" id="nama_hewan" placeholder="Nama Hewan" value="{{ old('nama_hewan') }}" required>
            @error('nama_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Ras Hewan -->
          <div class="mb-6">
            <label for="ras_hewan" class="block text-sm font-medium text-gray-700">Ras Hewan</label>
            <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="ras_hewan" id="ras_hewan" placeholder="Ras Hewan" value="{{ old('ras_hewan') }}" required>
            @error('ras_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Jenis Kelamin -->
          <div class="mb-6">
            <label for="jenis_kelamin" class="block text-sm font-medium text-gray-700">Jenis Kelamin</label>
            <select class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="jenis_kelamin" id="jenis_kelamin" required>
              <option value="Jantan" {{ old('jenis_kelamin') == 'Jantan' ? 'selected' : '' }}>Jantan</option>
              <option value="Betina" {{ old('jenis_kelamin') == 'Betina' ? 'selected' : '' }}>Betina</option>
            </select>
            @error('jenis_kelamin')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Usia Hewan -->
          <div class="mb-6">
            <label for="usia_hewan" class="block text-sm font-medium text-gray-700">Usia Hewan</label>
            <input type="number" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="usia_hewan" id="usia_hewan" placeholder="Usia Hewan" value="{{ old('usia_hewan') }}" required>
            @error('usia_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Berat Hewan -->
          <div class="mb-6">
            <label for="berat_hewan" class="block text-sm font-medium text-gray-700">Berat Hewan</label>
            <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="berat_hewan" id="berat_hewan" placeholder="Berat Hewan" value="{{ old('berat_hewan') }}" required>
            @error('berat_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Suhu Hewan -->
          <div class="mb-6">
            <label for="temperature_hewan" class="block text-sm font-medium text-gray-700">Suhu Hewan</label>
            <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="temperature_hewan" id="temperature_hewan" placeholder="Suhu Hewan" value="{{ old('temperature_hewan') }}" required>
            @error('temperature_hewan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

          <!-- Makanan Hewan -->
          <div class="mb-6">
            <label for="makanan" class="block text-sm font-medium text-gray-700">Makanan Hewan</label>
            <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="makanan" id="makanan" placeholder="Makanan Hewan" value="{{ old('makanan') }}" required>
            @error('makanan')
              <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
            @enderror
          </div>

        </div>

        <p class="text-gray-600 mb-6">Riwayat Hewan</p>

        <!-- Total Vaksinasi -->
        <div class="mb-6">
          <label for="jumlah_vaksinasi" class="block text-sm font-medium text-gray-700">Total Vaksinasi</label>
          <input type="number" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="jumlah_vaksinasi" id="jumlah_vaksinasi" placeholder="Total Vaksinasi" value="{{ old('jumlah_vaksinasi') }}" required>
          @error('jumlah_vaksinasi')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <!-- Vaksinasi Terakhir -->
        <div class="mb-6">
          <label for="vaksinasi_terakhir" class="block text-sm font-medium text-gray-700">Vaksinasi Terakhir</label>
          <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="vaksinasi_terakhir" id="vaksinasi_terakhir" placeholder="Vaksinasi Terakhir" value="{{ old('vaksinasi_terakhir') }}" required>
          @error('vaksinasi_terakhir')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <!-- Tanggal Vaksinasi -->
        <div class="mb-6">
          <label for="tanggal_vaksinasi" class="block text-sm font-medium text-gray-700">Tanggal Vaksinasi</label>
          <input type="date" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="tanggal_vaksinasi" id="tanggal_vaksinasi" value="{{ old('tanggal_vaksinasi') }}" required>
          @error('tanggal_vaksinasi')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <!-- Penyakit -->
        <div class="mb-6">
          <label for="penyakit" class="block text-sm font-medium text-gray-700">Penyakit</label>
          <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="penyakit" id="penyakit" placeholder="Penyakit" value="{{ old('penyakit') }}" required>
          @error('penyakit')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <div class="mb-6">
          <label for="obat" class="block text-sm font-medium text-gray-700">Obat</label>
          <input type="text" class="mt-2 block w-full text-gray-800 border border-gray-300 rounded-lg shadow-sm focus:ring-indigo-500 focus:border-indigo-500 h-12 px-4 py-2 transition-all duration-300 transform hover:scale-105" name="obat" id="obat" placeholder="Obat" value="{{ old('obat') }}" required>
          @error('obat')
            <div class="text-red-500 mt-2 text-sm">{{ $message }}</div>
          @enderror
        </div>

        <!-- Button -->
        <button type="submit" class="w-full bg-[#221177] hover:bg-blue-600 text-white py-3 rounded-lg mt-6 transition-all duration-300 transform hover:scale-105">
          Submit
        </button>
      </form>
    </div>
  </div>
@endsection
