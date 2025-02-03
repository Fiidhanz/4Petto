<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Monitoring Kesehatan Hewan</title>
  <link rel="shortcut icon" href="{{ asset('style/images/paw.png') }}" />
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    function openModal(modalId) {
      document.getElementById(modalId).classList.remove('hidden');
    }

    function closeModal(modalId) {
      document.getElementById(modalId).classList.add('hidden');
    }
  </script>
</head>
<body class="text-gray-800 font-sans" style="background: linear-gradient(to bottom, #221177, #4b0082);">

  <!-- Navbar -->
  <nav id="navbar" class="bg-gray-50 fixed top-0 left-0 w-full p-4 shadow-lg z-50 transition duration-300 ease-in-out transform">
    <div class="container mx-auto flex items-center justify-between">
        <div class="flex items-center space-x-2">
            <img id="logo" src="{{ asset('style/images/paw.png') }}" alt="Logo Paw" class="w-8 h-8 transition-transform duration-500 ease-in-out hover:rotate-12">
            <a href="#" id="brand" class="text-[#221177] text-2xl font-bold transition-colors duration-300 ease-in-out hover:text-white">4Petto</a>
        </div>
        <div id="menu" class="space-x-6">
            <a href="#features" class="menu-item text-[#221177] hover:text-white transition duration-500 ease-in-out">Fitur</a>
            <a href="#about" class="menu-item text-[#221177] hover:text-white transition duration-500 ease-in-out">Tentang</a>
            <a href="#our-team" class="menu-item text-[#221177] hover:text-white transition duration-500 ease-in-out">Team</a>
            <a href="#contact" class="menu-item text-[#221177] hover:text-white transition duration-500 ease-in-out">Kontak</a>
            <a href="{{ route('register') }}" class="bg-[#221177] px-4 py-2 rounded-md hover:bg-white active:bg-gray-200 text-white hover:text-[#221177] transition-all duration-500 ease-in-out shadow-lg hover:shadow-2xl">
                Daftar
            </a>
        </div>
    </div>
</nav>

<script>
    // Navbar animation on scroll
    const navbar = document.getElementById('navbar');
    const brand = document.getElementById('brand');
    const menuItems = document.querySelectorAll('.menu-item');

    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            navbar.classList.add('bg-[#221177]', 'shadow-2xl');
            navbar.classList.remove('bg-gray-50');
            brand.classList.add('text-white');
            brand.classList.remove('text-[#221177]');
            menuItems.forEach(item => {
                item.classList.add('text-white');
                item.classList.remove('text-[#221177]');
            });
        } else {
            navbar.classList.remove('bg-[#221177]', 'shadow-2xl');
            navbar.classList.add('bg-gray-50');
            brand.classList.remove('text-white');
            brand.classList.add('text-[#221177]');
            menuItems.forEach(item => {
                item.classList.remove('text-white');
                item.classList.add('text-[#221177]');
            });
        }
    });
</script>


<!-- Hero Section -->
<section class="hero relative text-center py-24" style="background: url('{{ asset('style/images/pink.jpg') }}') center/cover no-repeat;">
  <!-- Overlay Background with Blur -->
  <div class="absolute inset-0 bg-gradient-to-r from-[#221177cc] to-[#ffffff33] backdrop-blur-md"></div>
  
  <div class="container mx-auto relative z-10">
    <!-- Heading -->
    <h1 class="text-5xl lg:text-6xl font-bold text-white mb-6 animate__animated animate__fadeIn animate__delay-0.5s">
      Monitoring Kesehatan Hewan
    </h1>
    <!-- Subheading -->
    <p class="text-lg lg:text-2xl text-gray-200 mb-10 animate__animated animate__fadeIn animate__delay-1s">
      Lacak kondisi hewan peliharaan Anda secara real-time, kapan saja, di mana saja.
    </p>
    <!-- Call-to-Action Button -->
    <a 
      href="#cta" 
      class="inline-block bg-gradient-to-r from-[#6a1b9a] to-[#8e24aa] text-white py-4 px-8 rounded-full text-lg font-medium hover:from-[#8e24aa] hover:to-[#6a1b9a] shadow-lg transition duration-300 ease-in-out">
      Mulai Sekarang
    </a>
  </div>
</section>
<section class="photo-slider py-16 bg-gray-100">
  <div class="container mx-auto">
    <h2 class="text-4xl font-bold text-center mb-8">Learn and Explore</h2>
    <!-- Swiper Container -->
    <div class="swiper">
      <div class="swiper-wrapper">
        <!-- Slide 1 -->
        <div class="swiper-slide">
          <img src="{{ asset('style/images/gambar1.png') }}" alt="Foto Hewan 1" class="w-full h-64 object-cover rounded-lg shadow-md">
        </div>
        <!-- Slide 2 -->
        <div class="swiper-slide">
          <img src="{{ asset('style/images/gambar2.png') }}" alt="Foto Hewan 2" class="w-full h-64 object-cover rounded-lg shadow-md">
        </div>
        <!-- Slide 3 -->
        <div class="swiper-slide">
          <img src="{{ asset('style/images/gambar3.png') }}" alt="Foto Hewan 3" class="w-full h-64 object-cover rounded-lg shadow-md">
        </div>
        <!-- Tambahkan slide lainnya -->
      </div>
      <!-- Navigation -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <!-- Pagination -->
      <div class="swiper-pagination"></div>
    </div>
  </div>
</section>

<!-- Tambahkan CSS untuk Swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">

<!-- Tambahkan JS untuk Swiper -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script>
  // Inisialisasi Swiper
  const swiper = new Swiper('.swiper', {
    loop: true,
    autoplay: {
      delay: 3000, // Durasi antar slide (ms)
      disableOnInteraction: false,
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
</script>



  <!-- Features Section -->
<section id="features" class="py-24 bg-gradient-to-r from-[#221177] via-blue-300 to-pink-100">
  <div class="container mx-auto text-center">
    <h2 class="text-3xl font-bold mb-8">Fitur Utama</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
      
      <!-- Feature 1: Pantau Kesehatan -->
      <div class="feature relative bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-transform transform hover:scale-105" onclick="openModal('modal1')">
        <img src="{{ asset('style/images/pantau.jpg') }}" alt="Pantau Kesehatan" class="w-full h-full object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-10 flex items-center justify-center">
          <h3 class="text-lg font-semibold text-white">Pantau Kesehatan</h3>
        </div>
      </div>

      <!-- Modal 1 -->
      <div id="modal1" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white p-6 rounded-lg w-96">
          <h3 class="text-2xl font-semibold mb-4">Pantau Kesehatan</h3>
          <p class="text-lg mb-4">Dengan fitur ini, Anda dapat memantau semua kondisi kesehatan hewan peliharaan Anda, dari suhu tubuh hingga aktivitas harian mereka, dengan laporan yang terperinci.</p>
          <button onclick="closeModal('modal1')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888]">Tutup</button>
        </div>
      </div>

      <!-- Feature 2: Jadwal Vaksinasi -->
      <div class="feature relative bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-transform transform hover:scale-105" onclick="openModal('modal2')">
        <img src="{{ asset('style/images/vaksin.jpg') }}" alt="Jadwal Vaksinasi" class="w-full h-full object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-10 flex items-center justify-center">
          <h3 class="text-lg font-semibold text-white">Jadwal Vaksinasi</h3>
        </div>
      </div>

      <!-- Modal 2 -->
      <div id="modal2" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white p-6 rounded-lg w-96">
          <h3 class="text-2xl font-semibold mb-4">Jadwal Vaksinasi</h3>
          <p class="text-lg mb-4">Fitur ini memungkinkan Anda untuk mengatur dan mengingatkan jadwal vaksinasi dan pemeriksaan rutin bagi hewan peliharaan Anda.</p>
          <button onclick="closeModal('modal2')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888]">Tutup</button>
        </div>
      </div>

      <!-- Feature 3: Catatan Kesehatan -->
      <div class="feature relative bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-transform transform hover:scale-105" onclick="openModal('modal3')">
        <img src="{{ asset('style/images/catat.jpg') }}" alt="Catatan Kesehatan" class="w-full h-full object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-10 flex items-center justify-center">
          <h3 class="text-lg font-semibold text-white">Catatan Kesehatan</h3>
        </div>
      </div>

      <!-- Modal 3 -->
      <div id="modal3" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white p-6 rounded-lg w-96">
          <h3 class="text-2xl font-semibold mb-4">Catatan Kesehatan</h3>
          <p class="text-lg mb-4">Dengan fitur ini, Anda dapat mencatat dan mengakses semua informasi medis penting hewan peliharaan Anda, seperti riwayat vaksinasi dan pemeriksaan dokter hewan.</p>
          <button onclick="closeModal('modal3')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888]">Tutup</button>
        </div>
      </div>

      <!-- Feature 4: Pengingat Pemberian Makanan -->
      <div class="feature relative bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-transform transform hover:scale-105" onclick="openModal('modal4')">
        <img src="{{ asset('style/images/makan.jpg') }}" alt="Pengingat Pemberian Makanan" class="w-full h-full object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-10 flex items-center justify-center">
          <h3 class="text-lg font-semibold text-white">Pengingat Pemberian Makanan</h3>
        </div>
      </div>

      <!-- Modal 4 -->
      <div id="modal4" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white p-6 rounded-lg w-96">
          <h3 class="text-2xl font-semibold mb-4">Pengingat Pemberian Makanan</h3>
          <p class="text-lg mb-4">Dengan fitur ini, Anda dapat mengatur jadwal pemberian makanan dan menerima pengingat agar hewan peliharaan Anda selalu diberi makan tepat waktu.</p>
          <button onclick="closeModal('modal4')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888]">Tutup</button>
        </div>
      </div>

      <!-- Feature 5: Rekomendasi Perawatan -->
      <div class="feature relative bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition-transform transform hover:scale-105" onclick="openModal('modal5')">
        <img src="{{ asset('style/images/perawatan.jpg') }}" alt="Rekomendasi Perawatan" class="w-full h-full object-cover">
        <div class="absolute inset-0 bg-black bg-opacity-10 flex items-center justify-center">
          <h3 class="text-lg font-semibold text-white">Rekomendasi Perawatan</h3>
        </div>
      </div>

      <!-- Modal 5 -->
      <div id="modal5" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center z-50">
        <div class="bg-white p-6 rounded-lg w-96">
          <h3 class="text-2xl font-semibold mb-4">Rekomendasi Perawatan</h3>
          <p class="text-lg mb-4">Fitur ini memberikan saran perawatan yang sesuai dengan kebutuhan spesifik hewan peliharaan Anda, mulai dari perawatan fisik hingga mental.</p>
          <button onclick="closeModal('modal5')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888]">Tutup</button>
        </div>
      </div>

    </div>
  </div>
</section>





<!-- About Section -->
<section id="about" class="py-24 bg-gradient-to-r from-[#221177] via-blue-300 to-pink-100">
  <div class="container mx-auto text-center opacity-0 translate-y-10 animate-fadeInUp">
    <h2 class="text-3xl font-bold mb-8 text-black">Tentang 4Petto</h2>
    <p class="text-xl mb-8 text-black">4petto adalah platform digital yang dirancang untuk memudahkan pemilik hewan peliharaan dalam memonitor dan mengelola kesehatan hewan mereka. Aplikasi ini memberikan berbagai fitur yang membantu pemilik hewan untuk memantau kondisi kesehatan hewan peliharaan secara menyeluruh dan memastikan pemeliharaan yang tepat dan teratur. </p>
    <a href="#cta" class="bg-[#221177] text-white py-3 px-6 rounded-lg text-lg transition-all duration-300 ease-in-out transform hover:scale-110 hover:rotate-3 hover:shadow-xl hover:bg-white hover:cursor-pointer focus:outline-none focus:ring-2 focus:ring-[#221177] focus:ring-opacity-50 focus:text-[#221177] active:text-[#221177]">
      Pelajari Lebih Lanjut
    </a>
  </div>
</section>

<!-- Add this style to your CSS or Tailwind config -->
<style>
  @keyframes fadeInUp {
    0% {
      opacity: 0;
      transform: translateY(10px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .animate-fadeInUp {
    animation: fadeInUp 1s ease-out forwards;
  }

  /* Tambahan untuk tombol scroll */
#scrollToTop {
  z-index: 50;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.06);
  transition: transform 0.3s ease-in-out, background 0.3s ease-in-out;
}

#scrollToTop:hover {
  transform: scale(1.1) rotate(45deg);
  background: linear-gradient(to right, #ff7eb3, #ff758c);
}

</style>



 <!-- Our Team Section -->
 <section id="our-team" class="py-24 bg-gradient-to-r from-[#221177] via-blue-300 to-pink-100">
  <div class="container mx-auto text-center">
    <h2 class="text-3xl font-bold mb-12 text-black">Tim Pengembang Kami</h2>
    <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-12">
      <!-- Team Member 1 -->
      <div class="team-member bg-white p-8 rounded-lg shadow-lg cursor-pointer transform transition duration-300 hover:scale-105 hover:shadow-2xl" onclick="openModal('modal01')">
        <div class="mb-4">
          <!-- Icon instead of image -->
          <i class="fas fa-user-circle text-[#221177] text-6xl mx-auto"></i>
        </div>
        <h3 class="text-xl font-semibold mb-2">Hafiidh Yupiza Ramadhani</h3>
        <p class="text-lg">UI/UX Designer</p>
      </div>

      <!-- Team Member 2 -->
      <div class="team-member bg-white p-8 rounded-lg shadow-lg cursor-pointer transform transition duration-300 hover:scale-105 hover:shadow-2xl" onclick="openModal('modal02')">
        <div class="mb-4">
          <!-- Icon instead of image -->
          <i class="fas fa-user-circle text-[#221177] text-6xl mx-auto"></i>
        </div>
        <h3 class="text-xl font-semibold mb-2">Abidzar Al-Giffari</h3>
        <p class="text-lg">Frontend Developer</p>
      </div>

      <!-- Team Member 3 -->
      <div class="team-member bg-white p-8 rounded-lg shadow-lg cursor-pointer transform transition duration-300 hover:scale-105 hover:shadow-2xl" onclick="openModal('modal03')">
        <div class="mb-4">
          <!-- Icon instead of image -->
          <i class="fas fa-user-circle text-[#221177] text-6xl mx-auto"></i>
        </div>
        <h3 class="text-xl font-semibold mb-2">Muhammad Hasib</h3>
        <p class="text-lg">Backend Developer</p>
      </div>

      <!-- Team Member 4 -->
      <div class="team-member bg-white p-8 rounded-lg shadow-lg cursor-pointer transform transition duration-300 hover:scale-105 hover:shadow-2xl" onclick="openModal('modal04')">
        <div class="mb-4">
          <!-- Icon instead of image -->
          <i class="fas fa-user-circle text-[#221177] text-6xl mx-auto"></i>
        </div>
        <h3 class="text-xl font-semibold mb-2">Tesalonika Dua Nurak</h3>
        <p class="text-lg">Database Developer</p>
      </div>
    </div>
  </div>
</section>

<!-- Modal Templates -->
<!-- Modal for Member 1 -->
<div id="modal01" class="fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center hidden">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full">
    <button class="absolute top-2 right-2 text-xl text-gray-500 hover:text-gray-800" onclick="closeModal('modal01')">&times;</button>
    <h3 class="text-2xl font-semibold mb-4">Hafiidh Yupiza Ramadhani</h3>
    <h5 class="text-xl font-semibold mb-4">UI/UX Designer</h5>
    <p class="text-lg">Riset pengguna, mendesain wireframe, mockups, dan prototipe, serta melakukan uji coba dengan pengguna untuk mendapatkan umpan balik. </p>
    <!-- Close Button -->
    <button onclick="closeModal('modal01')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888] transition duration-300">Tutup</button>
  </div>
</div>

<!-- Modal for Member 2 -->
<div id="modal02" class="fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center hidden">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full">
    <button class="absolute top-2 right-2 text-xl text-gray-500 hover:text-gray-800" onclick="closeModal('modal02')">&times;</button>
    <h3 class="text-2xl font-semibold mb-4">Abidzar Al-Giffari</h3>
    <h5 class="text-xl font-semibold mb-4">Frontend Developer</h5>
    <p class="text-lg">Mengimplementasikan desain UI/UX ke dalam HTML, CSS, dan JavaScript, membangun interaktivitas seperti penjadwalan dan pengingat. </p>
    <!-- Close Button -->
    <button onclick="closeModal('modal02')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888] transition duration-300">Tutup</button>
  </div>
</div>

<!-- Modal for Member 3 -->
<div id="modal03" class="fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center hidden">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full">
    <button class="absolute top-2 right-2 text-xl text-gray-500 hover:text-gray-800" onclick="closeModal('modal03')">&times;</button>
    <h3 class="text-2xl font-semibold mb-4">Muhammad Hasib</h3>
    <h5 class="text-xl font-semibold mb-4">Backend Developer</h5>
    <p class="text-lg">Mengelola data hewan, jadwal, dan pengingat, membangun logika bisnis untuk rekomendasi dan pengingat otomatis, serta mengintegrasikan backend dengan database. </p>
    <!-- Close Button -->
    <button onclick="closeModal('modal03')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888] transition duration-300">Tutup</button>
  </div>
</div>

<!-- Modal for Member 4 -->
<div id="modal04" class="fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center hidden">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-md w-full">
    <button class="absolute top-2 right-2 text-xl text-gray-500 hover:text-gray-800" onclick="closeModal('modal04')">&times;</button>
    <h3 class="text-2xl font-semibold mb-4">Tesalonika Dua Nurak</h3>
    <h5 class="text-xl font-semibold mb-4">Database Developer</h5>
    <p class="text-lg">Merancang skema database untuk menyimpan data hewan dan riwayat kesehatan, mengoptimalkan query untuk performa yang cepat, dan memastikan keamanan data. </p>
    <!-- Close Button -->
    <button onclick="closeModal('modal04')" class="bg-[#221177] text-white px-4 py-2 rounded-md hover:bg-[#2a1888] transition duration-300">Tutup</button>
  </div>
</div>

<!-- JavaScript for Modal -->
<script>
  function openModal(modalId) {
    document.getElementById(modalId).classList.remove('hidden');
  }

  function closeModal(modalId) {
    document.getElementById(modalId).classList.add('hidden');
  }
</script>

<!-- Call to Action Section -->
<section id="cta" class="py-24" style="background-color: #221177; color: white;">
  <div class="container mx-auto text-center">
    <h2 class="text-3xl font-bold mb-4">Bergabunglah Sekarang!</h2>
    <p class="text-xl mb-6">Daftarkan diri Anda hari ini untuk mendapatkan akses penuh ke berbagai fitur kesehatan hewan peliharaan, serta berbagai manfaat eksklusif lainnya yang akan memudahkan Anda dalam merawat dan memonitor kesehatan hewan kesayangan Anda.</p>
    <a href="{{ route('register') }}" class="bg-white text-black py-3 px-6 rounded-lg border border-[#221177] hover:bg-[#f0f0f0] active:bg-[#e0e0e0] text-lg transition duration-300 ease-in-out">
      Daftar Sekarang
    </a>
  </div>
</section>


  <!-- Contact Section -->
  <section id="contact" class="py-24 bg-gradient-to-r from-[#221177] via-blue-300 to-pink-100">
  <div class="container mx-auto text-center">
    <h2 class="text-3xl font-bold mb-8">Hubungi Kami</h2>
    <p class="text-xl mb-8">Apakah Anda ingin belajar lebih banyak atau memiliki pertanyaan tentang aplikasi kami? Jangan ragu untuk menghubungi kami.</p>

    <!-- Tampilkan pesan sukses jika ada -->
    @if(session('success'))
      <div id="notification" class="fixed top-4 right-4 bg-green-500 text-white py-2 px-4 rounded-lg shadow-lg">
        {{ session('success') }}
      </div>
    @endif

    <!-- Formulir Kontak -->
    <form action="{{ route('contact.store') }}" method="POST" class="w-full max-w-lg mx-auto space-y-6">
      @csrf
      <input type="text" name="name" placeholder="Nama Anda" class="w-full p-4 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500" required>
      <input type="email" name="email" placeholder="Email Anda" class="w-full p-4 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500" required>
      <textarea name="message" placeholder="Pesan Anda" rows="4" class="w-full p-4 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500" required></textarea>
      <button type="submit" class="bg-[#221177] text-white py-3 px-6 rounded-lg hover:bg-[#2a1888] active:bg-[#3b2299] text-lg transition duration-300 ease-in-out">Kirim Pesan</button>
    </form>
  </div>
</section>

<script>
  // Cek apakah ada pesan sukses (flash message) dari Laravel
  @if(session('success'))
    // Tampilkan popup notifikasi
    var notification = document.getElementById('notification');
    
    // Hide notification after 5 seconds
    setTimeout(function() {
      notification.style.display = 'none';
    }, 5000);
  @endif
</script> 
<!-- Tombol Scroll ke Atas -->
<button id="scrollToTop" class="fixed bottom-6 right-6 bg-gradient-to-r from-purple-600 via-pink-500 to-red-500 text-white p-4 rounded-full shadow-xl hover:scale-110 hover:rotate-45 transition-transform duration-300 ease-in-out hidden">
  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
    <path stroke-linecap="round" stroke-linejoin="round" d="M5 15l7-7 7 7" />
  </svg>
</button>

<script>
  // Referensi tombol
  const scrollToTopButton = document.getElementById('scrollToTop');

  // Tampilkan tombol saat scroll melebihi 200px
  window.addEventListener('scroll', () => {
    if (window.scrollY > 200) {
      scrollToTopButton.classList.remove('hidden');
    } else {
      scrollToTopButton.classList.add('hidden');
    }
  });

  // Klik tombol untuk scroll ke atas
  scrollToTopButton.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth',
    });
  });
</script>


  <!-- Footer -->
  <footer class="bg-[#221177] text-white py-8">
    <div class="container mx-auto text-center">
      <p>&copy; 2024 4Petto</p>
    </div>
  </footer>

</body>
</html>
