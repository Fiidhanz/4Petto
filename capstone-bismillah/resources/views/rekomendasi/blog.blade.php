@extends('layout.template')

@section('content')
<script src="https://cdn.tailwindcss.com"></script>
<style>
    /* Modal Styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 50;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.6); /* More opaque background */
        transition: opacity 0.3s ease-in-out;
    }

    .modal-content {
        background-color: #fff;
        margin: 5% auto;
        padding: 20px;
        border-radius: 10px;
        width: 90%;
        max-width: 700px;
        transform: translateY(-30px);
        opacity: 0;
        animation: fadeIn 0.5s forwards; /* Added fade-in animation */
    }

    /* Keyframes for fade-in animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Card Animation */
    .blog-item {
        opacity: 0;
        transform: translateY(20px);
        animation: cardFadeIn 0.5s forwards;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    @keyframes cardFadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Hover effect for cards */
   /* Hover effect for cards */
.blog-item:hover {
    transform: translateY(-8px) scale(200.8); /* Slight lift and scale with a bigger effect */
    box-shadow: 0px 12px 20px rgba(0, 0, 0, 0.2); /* Stronger shadow effect */
    transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth transition */
}


    /* Updated filter button styles with requested color */
    .filter-button {
        background-color: #221177; /* Dark purple background */
        color: white;
        padding: 8px 16px;
        border-radius: 8px;
        font-weight: 600;
        transition: all 0.3s ease;
        cursor: pointer;
    }

    .filter-button:hover {
        background-color: #2a1e8c; /* Darker purple on hover */
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        transform: translateY(-2px);
    }

    .filter-button:focus {
        outline: none;
        box-shadow: 0px 0px 0px 3px rgba(34, 17, 119, 0.5); /* Focus effect */
    }

    /* Filter Dropdown Styles */
    .filter-section select {
        background-color: #F0E6FF; /* Light purple background */
        border: 2px solid #221177; /* Matching dark purple border */
        color: #221177; /* Text color */
        padding: 8px 16px;
        border-radius: 8px;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .filter-section select:hover {
        background-color: #d1a9ff; /* Lighter purple on hover */
        color: white;
        border-color: #2a1e8c; /* Darker purple border on hover */
    }
</style>
<h2 class="text-4xl font-semibold text-[#221177] animate__animated animate__fadeIn">Rekomendasi Kesehatan Hewan</h2>
<p class="text-lg text-gray-600 mt-2 animate__animated animate__fadeIn animate__delay-1s">Temukan tips kesehatan, kebersihan, dan makanan terbaik untuk anjing dan kucing Anda.</p>
<h2 class="text-4xl font-semibold text-gray-800"></h2>
<p class="text-lg text-gray-600 mt-2"></p>

<!-- Filter Section -->
<div class="mt-6 flex space-x-4 filter-section">
    <select class="filter-button" id="filterJenisButton">
        <option value="all">Semua Hewan</option>
        <option value="dog">Anjing</option>
        <option value="cat">Kucing</option>
    </select>

    <select class="filter-button" id="filterKategoriButton">
        <option value="all">Semua Kategori</option>
        <option value="food">Makanan</option>
        <option value="health">Kesehatan</option>
        <option value="cleaning">Kebersihan</option>
    </select>
</div>

<!-- Blog List -->
<div id="blogList" class="mt-8 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
    @foreach($blogs as $blog)
    <div class="blog-item bg-white rounded-lg shadow-md overflow-hidden" 
         data-jenis="{{ $blog->animal }}" 
         data-kategori="{{ $blog->category }}">

        <img src="{{ asset('storage/' . $blog->image_url) }}" alt="blog" class="w-full h-48 object-cover">
        <div class="p-6">
            <h3 class="text-2xl font-semibold">{{ $blog->title }}</h3>
            <p class="text-gray-600 mt-2">{{ Str::limit($blog->content, 100) }}</p>
            <p class="text-gray-500">Kategori: {{ $blog->category_name }}</p> <!-- Menampilkan nama kategori -->
            <p class="text-gray-500">Hewan: {{ $blog->animal_name }}</p> <!-- Menampilkan nama hewan -->
            <button onclick="openModal({{ $blog->id }})" class="text-blue-500 hover:underline mt-4 block">Read more ...</button>
        </div>
    </div>
    @endforeach
</div>

<!-- Modal Section -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span onclick="closeModal()" class="float-right text-2xl cursor-pointer">&times;</span>
        <h2 id="modalTitle" class="text-3xl font-bold"></h2>
        <p id="modalContent" class="mt-4 text-gray-700"></p>
    </div>
</div>

<script>
    const blogs = @json($blogs); // Data blogs dari backend
    const filterJenis = document.getElementById('filterJenisButton');
    const filterKategori = document.getElementById('filterKategoriButton');
    const blogList = document.getElementById('blogList');

    // Fungsi untuk menyaring blog sesuai filter
    function filterBlogs() {
        const selectedJenis = filterJenis.value;
        const selectedKategori = filterKategori.value;

        // Iterasi melalui setiap elemen blog
        document.querySelectorAll('.blog-item').forEach(blog => {
            const blogJenis = blog.getAttribute('data-jenis');
            const blogKategori = blog.getAttribute('data-kategori');

            // Tampilkan/hide blog sesuai filter
            if (
                (selectedJenis === 'all' || blogJenis === selectedJenis) &&
                (selectedKategori === 'all' || blogKategori === selectedKategori)
            ) {
                blog.style.display = 'block';
            } else {
                blog.style.display = 'none';
            }
        });
    }

    // Event listener untuk perubahan filter
    filterJenis.addEventListener('change', filterBlogs);
    filterKategori.addEventListener('change', filterBlogs);

    // Modal functionality
    function openModal(blogId) {
        const blog = blogs.find(b => b.id === blogId);
        document.getElementById('modalTitle').innerText = blog.title;
        document.getElementById('modalContent').innerText = blog.content;
        document.getElementById('myModal').style.display = 'block';
    }

    function closeModal() {
        document.getElementById('myModal').style.display = 'none';
    }
</script>
@endsection
