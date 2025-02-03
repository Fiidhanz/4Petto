@extends('layout.template')

@section('content')

<!-- Header Section -->
<div class="w-full mb-6">
    <div class="flex flex-col justify-start items-start space-y-2">
    <h2 class="text-4xl font-semibold text-[#221177] animate__animated animate__fadeIn">Animal Health Monitoring</h2>
    <p class="text-lg text-gray-600 mt-2 animate__animated animate__fadeIn animate__delay-1s">Solusi Terbaik Untuk Kesehatan dan Kebahagiaan Hewan Peliharaan</p>
    </div>
</div>

<!-- Data Hewan Section -->
<div class="grid grid-cols-1 gap-6 mt-6" id="hewanCards">
    @if($data->isEmpty())
        <div class="w-full bg-white shadow-lg rounded-lg p-6">
            <h5 class="text-2xl font-semibold text-gray-800">Informasi Hewan</h5>
            <p class="text-gray-600">Data hewan tidak tersedia.</p>
        </div>
    @else
        @foreach($data as $index => $hewan)
            <div class="hewan-card" data-index="{{ $index }}" 
                style="{{ $index > 0 ? 'display: none;' : '' }}">

                <!-- Card with Navigation Buttons -->
                <div class="relative bg-white shadow-xl rounded-lg overflow-hidden transition-all duration-500 transform hover:scale-105 hover:shadow-2xl">
                    <div class="absolute top-4 right-4 space-x-3">
                        <button class="bg-gray-300 text-white p-2.5 rounded-full prev-card" data-index="{{ $index }}">
                            <i class="fa fa-arrow-left"></i>
                        </button>
                        <button class="bg-[#221177] text-white p-2.5 rounded-full next-card" data-index="{{ $index }}">
                            <i class="fa fa-arrow-right"></i>
                        </button>
                    </div>
                    <div class="p-8">
                        <div class="flex justify-center items-center space-x-6">
                            <div class="w-full xl:w-3/12 mb-6 xl:mb-0">
                                <div class="text-center">
                                    <p class="text-lg font-medium text-gray-700 mb-2">{{ $hewan->kategori_hewan }}</p>
                                    <h1 class="text-[#221177] text-5xl font-[nama_font] font-semibold">{{ $hewan->nama_hewan }}</h1>
                                    <h2 class="text-gray-700 text-1xl font-medium mb-4">{{ $hewan->ras_hewan }}</h3>
                                    <p class="text-gray-500">{{ $hewan->penyakit ?? 'Tidak ada penyakit' }}</p>
                                </div>  
                            </div>
                            <div class="w-full xl:w-9/12">
                                <div class="grid grid-cols-1 xl:grid-cols-2 gap-8">
                                    <div class="border-r pr-6">
                                        <table class="table-auto w-full text-gray-600">
                                            <tr>
                                                <td class="py-2 font-medium">Ras</td>
                                                <td class="py-2">{{ $hewan->ras_hewan }}</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 font-medium">Jenis Kelamin</td>
                                                <td class="py-2">{{ $hewan->jenis_kelamin }}</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 font-medium">Usia</td>
                                                <td class="py-2">{{ $hewan->usia_hewan }} tahun</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 font-medium">Berat</td>
                                                <td class="py-2">{{ $hewan->berat_hewan }} kg</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 font-medium">Suhu</td>
                                                <td class="py-2">{{ $hewan->temperature_hewan }}°C</td>
                                            </tr>
                                            <tr>
                                                <td class="py-2 font-medium">Jenis Makanan</td>
                                                <td class="py-2">{{ $hewan->makanan }}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="mt-6">
                                        <!-- Menampilkan Foto Hewan -->
                                        @if(!empty($hewan->gambar))
                                            @php
                                                $gambarArray = json_decode($hewan->gambar, true);
                                            @endphp
                                            <div class="flex flex-wrap space-x-4">
                                                @foreach($gambarArray as $gambar)
                                                    <img src="{{ asset('storage/' . $gambar) }}" alt="Foto Hewan" class="w-48 h-48 object-cover rounded-lg mb-4 transition-transform duration-300 hover:scale-110" onclick="openModal({{ $hewan->id }}, '{{ $hewan->nama_hewan }}', '{{ $hewan->ras_hewan }}', '{{ $hewan->jenis_kelamin }}', {{ $hewan->usia_hewan }}, {{ $hewan->berat_hewan }}, {{ $hewan->temperature_hewan }}, '{{ $hewan->makanan }}', '{{ $hewan->penyakit ?? 'Tidak ada penyakit' }}')">
                                                @endforeach
                                            </div>
                                        @else
                                            <p class="text-gray-600">Foto tidak tersedia</p>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Move Delete and Edit Buttons to the Bottom-Right -->
                    <div class="absolute bottom-4 right-4 space-x-3">
                        <!-- Edit Button -->
                        <button class="bg-blue-600 text-white p-2.5 rounded-full hover:bg-yellow-700 transition-all transform hover:scale-105" onclick="openEditModal({{ $hewan->id }}, '{{ $hewan->nama_hewan }}', '{{ $hewan->ras_hewan }}', '{{ $hewan->jenis_kelamin }}', {{ $hewan->usia_hewan }}, {{ $hewan->berat_hewan }}, {{ $hewan->temperature_hewan }}, '{{ $hewan->makanan }}')">
                            <i class="fa fa-pencil-alt"></i>
                        </button>
                        <!-- Delete Button -->
                        <button class="bg-red-600 text-white p-2.5 rounded-full hover:bg-red-700 transition-all transform hover:scale-105" onclick="deleteHewan({{ $hewan->id }}, {{ $index }})">
                            <i class="fa fa-trash-alt"></i>
                        </button>
                    </div>
                </div>
            </div>
        @endforeach
    @endif
</div>

<!-- Riwayat Kesehatan Section -->
<div class="mt-6">
    <div class="w-full bg-white shadow-lg rounded-lg p-6 transition-all duration-500 transform hover:scale-105 hover:shadow-2xl">
        <p class="text-2xl font-semibold text-gray-800 mb-4">Riwayat Kesehatan</p>
        <div class="overflow-x-auto shadow-lg rounded-lg">
    <table class="table-auto w-full text-gray-600">
        <thead class="bg-gray-200 text-gray-700">
            <tr>
                <th class="px-6 py-3 text-left text-sm font-semibold">Nama</th>
                <th class="px-6 py-3 text-left text-sm font-semibold">Jumlah Vaksinasi</th>
                <th class="px-6 py-3 text-left text-sm font-semibold">Vaksinasi Terakhir ke-</th>
                <th class="px-6 py-3 text-left text-sm font-semibold">Tanggal Vaksinasi Terakhir</th>
                <th class="px-6 py-3 text-left text-sm font-semibold">Status</th>
            </tr>
        </thead>
        <tbody>
            @forelse($data as $hewan)
                <tr class="border-t border-gray-200 hover:bg-gray-100 transition-all duration-300">
                    <td class="px-6 py-4 text-sm">{{ $hewan->nama_hewan }}</td>
                    <td class="px-6 py-4 text-sm">{{ $hewan->jumlah_vaksinasi ?? 'Kosong' }}</td>
                    <td class="px-6 py-4 text-sm">{{ $hewan->vaksinasi_terakhir ?? '-' }}</td>
                    <td class="px-6 py-4 text-sm">{{ $hewan->tanggal_vaksinasi ?? '-' }}</td>
                    <td class="px-6 py-4 text-sm">
                        <span class="px-4 py-2 rounded-full text-white
                            @if($hewan->jumlah_vaksinasi == $hewan->vaksinasi_terakhir && !($hewan->jumlah_vaksinasi == 0 && $hewan->vaksinasi_terakhir == 0)) bg-green-500
                            @elseif($hewan->jumlah_vaksinasi > $hewan->vaksinasi_terakhir) bg-yellow-400
                            @else bg-red-500 @endif transition-all duration-300 transform hover:scale-105">
                            @if($hewan->jumlah_vaksinasi == $hewan->vaksinasi_terakhir && !($hewan->jumlah_vaksinasi == 0 && $hewan->vaksinasi_terakhir == 0))
                                Completed
                            @elseif($hewan->jumlah_vaksinasi > $hewan->vaksinasi_terakhir) 
                                Sisa ({{ $hewan->jumlah_vaksinasi - $hewan->vaksinasi_terakhir }})
                            @else
                                Belum Vaksinasi
                            @endif
                        </span>
                    </td>
                </tr>
            @empty
                <tr class="transition-all duration-300">
                    <td colspan="5" class="text-center px-6 py-4 text-sm text-gray-500">Riwayat vaksinasi tidak tersedia</td>
                </tr>
            @endforelse
        </tbody>
    </table>
</div>

    </div>
</div>


<!-- Edit Modal (Pop-up) -->
<div id="editModal" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex ju   stify-center items-center">
    <div class="bg-white p-8 rounded-lg w-1/3 max-h-[80%] overflow-y-auto">
        <h3 class="text-xl font-semibold text-gray-800 mb-4">Edit Data Hewan</h3>
        <form id="editForm" method="POST">
            @csrf
            @method('PUT')
            <input type="hidden" id="editHewanId" name="id">
            <div class="mb-4">
                <label for="editNamaHewan" class="block text-gray-700">Nama Hewan</label>
                <input type="text" id="editNamaHewan" name="nama_hewan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editRasHewan" class="block text-gray-700">Ras Hewan</label>
                <input type="text" id="editRasHewan" name="ras_hewan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editJenisKelamin" class="block text-gray-700">Jenis Kelamin</label>
                <input type="text" id="editJenisKelamin" name="jenis_kelamin" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editUsiaHewan" class="block text-gray-700">Usia Hewan</label>
                <input type="number" id="editUsiaHewan" name="usia_hewan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editBeratHewan" class="block text-gray-700">Berat Hewan (kg)</label>
                <input type="text" id="editBeratHewan" name="berat_hewan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editSuhuHewan" class="block text-gray-700">Suhu Hewan (°C)</label>
                <input type="text" id="editSuhuHewan" name="temperature_hewan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editMakanan" class="block text-gray-700">Jenis Makanan</label>
                <input type="text" id="editMakanan" name="makanan" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editJumlah" class="block text-gray-700">Jumlah Vaksinasi</label>
                <input type="number" id="editJumlah" name="jumlah_vaksinasi" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editTerakhir" class="block text-gray-700">Vaksinasi Terakhir</label>
                <input type="number" id="editTerakhir" name="vaksinasi_terakhir" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editTanggal" class="block text-gray-700">Tanggal</label>
                <input type="date" id="editTanggal" name="tanggal_vaksinasi" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editPenyakit" class="block text-gray-700">Penyakit</label>
                <input type="text" id="editPenyakit" name="penyakit" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="editObat" class="block text-gray-700">Obat</label>
                <input type="text" id="editObat" name="obat" class="w-full p-2 border rounded-md" required>
            </div>
            <div class="flex justify-between">
                <button type="button" class="bg-gray-500 text-white px-4 py-2 rounded-md" onclick="closeEditModal()">Batal</button>
                <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded-md">Simpan</button>
            </div>
        </form>
    </div>
</div>

<script>
    // Fungsi membuka modal dengan data yang diisi
    function openEditModal(id, nama_hewan, ras_hewan, jenis_kelamin, usia_hewan, berat_hewan, temperature_hewan, makanan, jumlah_vaksinasi, vaksinasi_terakhir, tanggal_vaksinasi, penyakit, obat) {
        // Isi input tersembunyi dengan ID
        document.getElementById('editHewanId').value = id;

        // Perbarui action form dengan URL yang sesuai
        const form = document.getElementById('editForm');
        form.action = `/hewan/${id}`;

        // Isi input lainnya
        document.getElementById('editNamaHewan').value = nama_hewan;
        document.getElementById('editRasHewan').value = ras_hewan;
        document.getElementById('editJenisKelamin').value = jenis_kelamin;
        document.getElementById('editUsiaHewan').value = usia_hewan;
        document.getElementById('editBeratHewan').value = berat_hewan;
        document.getElementById('editSuhuHewan').value = temperature_hewan;
        document.getElementById('editMakanan').value = makanan;
        document.getElementById('editJumlah').value = jumlah_vaksinasi;
        document.getElementById('editTerakhir').value = vaksinasi_terakhir;
        document.getElementById('editTanggal').value = tanggal_vaksinasi;
        document.getElementById('editPenyakit').value = penyakit;
        document.getElementById('editObat').value = obat;

        // Tampilkan modal
        document.getElementById('editModal').classList.remove('hidden');
    }

    function closeEditModal() {
        document.getElementById('editModal').classList.add('hidden');
    }

    // Penanganan pengiriman form
    document.getElementById('editForm').addEventListener('submit', function(event) {
        event.preventDefault();
        const formData = new FormData(this);
        const id = document.getElementById('editHewanId').value;

        fetch(`/hewan/${id}`, {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            },
            body: formData,
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Data hewan berhasil diperbarui.');
                location.reload();
            } else {
                alert('Gagal memperbarui data hewan.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Terjadi kesalahan saat memperbarui data.');
        });
    });

    // Delete Function (unchanged)
    function deleteHewan(hewanId, index) {
        if (confirm("Apakah Anda yakin ingin menghapus data hewan ini?")) {
            const hewanCard = document.querySelector(`.hewan-card[data-index="${index}"]`);
            hewanCard.classList.add('removed');
            setTimeout(() => {
                fetch(`/hewan/${hewanId}`, {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                    }
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert("Hewan berhasil dihapus.");
                    } else {
                        alert("Gagal menghapus data hewan.");
                        hewanCard.classList.remove('removed');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert("Terjadi kesalahan saat menghapus data hewan.");
                    hewanCard.classList.remove('removed');
                });
            }, 500);
        }
    }

    // Navigation Functions for Next and Prev
    document.querySelectorAll('.next-card').forEach(button => {
        button.addEventListener('click', () => {
            const currentIndex = parseInt(button.getAttribute('data-index'));
            const nextIndex = currentIndex + 1;
            const currentCard = document.querySelector(`.hewan-card[data-index="${currentIndex}"]`);
            const nextCard = document.querySelector(`.hewan-card[data-index="${nextIndex}"]`);

            if (nextCard) {
                currentCard.style.display = 'none';
                nextCard.style.display = 'block';
                updateNavButtons(currentIndex, nextIndex);
            }
        });
    });

    document.querySelectorAll('.prev-card').forEach(button => {
        button.addEventListener('click', () => {
            const currentIndex = parseInt(button.getAttribute('data-index'));
            const prevIndex = currentIndex - 1;
            const currentCard = document.querySelector(`.hewan-card[data-index="${currentIndex}"]`);
            const prevCard = document.querySelector(`.hewan-card[data-index="${prevIndex}"]`);

            if (prevCard) {
                currentCard.style.display = 'none';
                prevCard.style.display = 'block';
                updateNavButtons(currentIndex, prevIndex);
            }
        });
    });

    function updateNavButtons(currentIndex, newIndex) {
        const prevButton = document.querySelector(`.prev-card[data-index="${newIndex}"]`);
        const nextButton = document.querySelector(`.next-card[data-index="${newIndex}"]`);

        if (newIndex === 0) {
            prevButton.disabled = true;
        } else {
            prevButton.disabled = false;
        }

        if (newIndex === {{ count($data) - 1 }}) {
            nextButton.disabled = true;
        } else {
            nextButton.disabled = false;
        }
    }

</script>

@endsection
