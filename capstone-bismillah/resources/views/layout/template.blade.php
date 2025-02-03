<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>4Petto - Animal Health Monitoring</title>
  
  <!-- Add Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="shortcut icon" href="{{ asset('style/images/paw.png') }}" />
</head> 

<body class="bg-gray-50">

  <!-- Navbar -->
  <nav class="flex items-center justify-between p-4 bg-white shadow-md fixed top-0 w-full z-10">
    <div class="flex items-center">
      <button id="sidebarToggleButton" class="text-xl text-gray-400 hover:text-[#221177]">
        <i class="fa-solid fa-bars"></i> <!-- Icon toggle untuk sidebar -->
      </button>
      <a href="{{ route('dashboard') }}" class="flex items-center space-x-2 text-xl font-bold text-[#221177] ml-4">
        <img src="{{ asset('style/images/pets.png') }}" alt="logo" class="w-8 h-8"/>
        <span>4Petto</span>
      </a>
    </div>
    <div class="flex items-center space-x-4">
      <!-- Digital Clock and Date -->
      <div id="datetime" class="text-lg text-gray-400 font-semibold"></div>
      <!-- Notification Button -->
      <button id="notificationButton" class="text-xl text-gray-600 hover:text-[#221177]">
        <i class="fa-solid fa-bell"></i>
      </button>
      <div class="relative">
        <button class="text-xl text-gray-600 hover:text-[#221177]" id="profileDropdownButton">
          <i class="fa-solid fa-user-large"></i>
        </button>
        <div id="profileDropdown" class="absolute right-0 hidden bg-white shadow-md rounded-md mt-2 w-48">
          <a href="{{ route('welcome') }}" class="block px-4 py-2 text-gray-600 hover:bg-gray-100">
            <i class="ti-power-off text-gray mr-2"></i> Logout
          </a>
        </div>
      </div>
    </div>
  </nav>

  <div class="flex h-screen pt-20">
    <!-- Sidebar -->
    <div id="sidebar" class="flex flex-col w-56 bg-white text-gray-50 py-4 space-y-4 sm:w-full md:w-56 lg:w-56 xl:w-56 transition-all duration-300 ease-in-out transform translate-x-0 font-baloo">
  <ul class="space-y-4"> <!-- Menambahkan space-y-4 untuk jarak antar item -->
    <li>
      <a href="{{ route('dashboard') }}" class="flex items-center space-x-3 px-4 py-2 transition-all duration-300 ease-in-out transform hover:bg-[#221177] hover:text-white hover:scale-105 hover:shadow-md text-gray-500">
        <i class="fa-solid fa-house"></i><span class="text-sm">Dashboard</span>
      </a>
    </li>
    <li>
      <a href="{{ route('hewan.create') }}" class="flex items-center space-x-3 px-4 py-2 transition-all duration-300 ease-in-out transform hover:bg-[#221177] hover:text-white hover:scale-105 hover:shadow-md text-gray-500">
        <i class="fa-solid fa-paw"></i><span class="text-sm">Add Hewan</span>
      </a>
    </li>
    <li>
      <a href="{{ route('jadwal.index') }}" class="flex items-center space-x-3 px-4 py-2 transition-all duration-300 ease-in-out transform hover:bg-[#221177] hover:text-white hover:scale-105 hover:shadow-md text-gray-500">
        <i class="fa-solid fa-calendar-days"></i><span class="text-sm">Penjadwalan</span>
      </a>
    </li>
    <li>
      <a href="{{ route('blogs') }}" class="flex items-center space-x-3 px-4 py-2 transition-all duration-300 ease-in-out transform hover:bg-[#221177] hover:text-white hover:scale-105 hover:shadow-md text-gray-500">
        <i class="fa-solid fa-book-open"></i><span class="text-sm">Rekomendasi</span>
      </a>
    </li>
    <li>
      <a href="{{ route('profil.show' ) }}" class="flex items-center space-x-3 px-4 py-2 transition-all duration-300 ease-in-out transform hover:bg-[#221177] hover:text-white hover:scale-105 hover:shadow-md text-gray-500">
        <i class="fa-solid fa-user"></i><span class="text-sm">Profil</span>
      </a>
    </li>
  </ul>
</div>


    <!-- Main Content Area -->
    <div id="mainContent" class="flex-1 p-6 overflow-auto transition-all duration-300 ease-in-out">
      @yield('content') <!-- This is where the content from other pages will be injected -->
    </div>
  </div>

  <!-- Modal Notifikasi -->
  <div id="notificationModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center hidden">
    <div class="bg-white p-6 rounded-lg shadow-md max-w-lg w-full relative">
      <!-- Tombol Close -->
      <button onclick="closeNotification()" class="absolute top-2 right-2 text-2xl text-gray-500 hover:text-[#221177]">
        &times;
      </button>
      <h2 class="text-2xl font-semibold mb-4 text-[#221177]">Notifikasi</h2>
      <div id="notificationList">
    @if(isset($reminders) && $reminders->isEmpty())
        <p class="text-gray-600">Tidak ada pengingat yang akan datang.</p>
    @elseif(isset($reminders))
        @foreach($reminders as $reminder)
            <div class="bg-white p-4 rounded-md shadow-sm mb-3">
                <strong>{{ $reminder->title }}</strong>
                <p class="mt-2">{{ $reminder->description }}</p>
                <p class="text-sm text-gray-500">Jadwal: {{ \Carbon\Carbon::parse($reminder->date)->format('d M Y, H:i') }}</p>
            </div>
        @endforeach
    @else
        <p>Data pengingat tidak tersedia.</p>
    @endif
</div>


    </div>
  </div>

  <script>
    function closeNotification() {
      document.getElementById('notificationModal').classList.add('hidden');
    }

    // Toggle Sidebar visibility
    document.getElementById('sidebarToggleButton').addEventListener('click', function() {
      const sidebar = document.getElementById('sidebar');
      const mainContent = document.getElementById('mainContent');
      sidebar.classList.toggle('translate-x-0'); // Toggle visibility
      sidebar.classList.toggle('-translate-x-full'); // Toggle off-canvas position
      mainContent.classList.toggle('pl-0'); // Adjust content padding when sidebar is hidden
    });

    document.getElementById('notificationButton').addEventListener('click', function() {
      document.getElementById('notificationModal').classList.remove('hidden');
    });

    document.getElementById('profileDropdownButton').addEventListener('click', function() {
      document.getElementById('profileDropdown').classList.toggle('hidden');
    });

    // Digital Clock and Date Function
    function updateDateTime() {
      const now = new Date();
      const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
      const dateString = now.toLocaleDateString('id-ID', options);
      const timeString = now.toLocaleTimeString('id-ID');

      document.getElementById('datetime').textContent = `${dateString} | ${timeString}`;
    }

    setInterval(updateDateTime, 1000); // Update every second
  </script>

</body>
</html>
