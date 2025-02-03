@extends('layout.template')

@section('content')
<script src="https://cdn.tailwindcss.com"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        let currentMonth = new Date().getMonth();
        let currentYear = new Date().getFullYear();
        let currentDate = new Date().getDate(); // Tanggal hari ini
        let currentDateString = `${currentYear}-${String(currentMonth + 1).padStart(2, '0')}-${String(currentDate).padStart(2, '0')}`;

        // Initialize reminders with data from the backend
        let reminders = @json($jadwals).map(jadwal => ({
            id: jadwal.id,
            date: jadwal.date,
            title: `${jadwal.type}: ${jadwal.title}`,
            description: jadwal.description
        }));

        function generateCalendar(month, year) {
            const daysInMonth = new Date(year, month + 1, 0).getDate();
            const firstDay = new Date(year, month, 1).getDay();

            let calendarBody = "";
            let date = 1;
            for (let i = 0; i < 6; i++) {
                let row = "<tr>";
                for (let j = 0; j < 7; j++) {
                    if (i === 0 && j < firstDay) {
                        row += "<td class='border border-gray-300 px-4 py-2'></td>";
                    } else if (date > daysInMonth) {
                        row += "<td class='border border-gray-300 px-4 py-2'></td>";
                    } else {
                        const fullDate = `${year}-${String(month + 1).padStart(2, '0')}-${String(date).padStart(2, '0')}`;
                        const hasReminder = reminders.some(reminder => reminder.date === fullDate);
                        const reminderClass = hasReminder ? "bg-gradient-to-r from-blue-200 to-pink-200" : "";
                        const todayClass = fullDate === currentDateString ? "bg-blue-200 font-bold" : ""; // Menandai hari ini
                        row += `<td class='border border-gray-300 px-4 py-2 cursor-pointer ${reminderClass} ${todayClass} transition duration-300 ease-in-out transform hover:scale-105' data-date='${fullDate}' onclick='showReminders("${fullDate}")'>${date}</td>`;
                        date++;
                    }
                }
                row += "</tr>";
                calendarBody += row;
            }
            return calendarBody;
        }

        function renderCalendar() {
            const calendarElement = document.querySelector("#calendar-body");
            const monthYearElement = document.querySelector("#month-year");
            const monthNames = ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"];

            calendarElement.innerHTML = generateCalendar(currentMonth, currentYear);
            monthYearElement.textContent = `${monthNames[currentMonth]} ${currentYear}`;
        }

        function addReminder(date, type, title, description) {
            // Tambahkan pengingat baru ke array lokal
            reminders.push({
                date: date,
                title: `${type}: ${title}`,
                description: description
            });
            renderCalendar();  // Perbarui kalender
            showReminders(date);  // Tampilkan pengingat di tanggal yang sesuai
        }

        window.showReminders = function(date) {
            const reminderList = document.querySelector("#reminder-list");
            reminderList.innerHTML = ""; // Clear existing reminders

            const filteredReminders = reminders.filter(reminder => reminder.date === date);

            if (filteredReminders.length > 0) {
                filteredReminders.forEach(reminder => {
                    const reminderItem = document.createElement("li");
                    reminderItem.classList.add("p-2", "border", "border-gray-300", "rounded", "mb-2", "flex", "justify-between", "items-center", "transition", "duration-300", "transform", "hover:scale-105");
                    reminderItem.innerHTML = `<div><strong>${reminder.title}</strong><br>${reminder.description}</div>`;

                    // Membuat tombol Hapus
                    const deleteButton = document.createElement("button");
                    deleteButton.textContent = "Hapus";
                    deleteButton.classList.add("bg-red-500", "text-white", "px-2", "py-1", "rounded", "hover:bg-red-600", "transition", "duration-300", "transform", "hover:scale-105");

                    deleteButton.onclick = function() {
                        // Kirim permintaan DELETE ke backend dengan ID pengingat
                        fetch(`/jadwal/${reminder.id}`, {
                            method: 'DELETE',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                            },
                        })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                // Hapus pengingat dari array lokal
                                reminders = reminders.filter(r => r.id !== reminder.id);
                                // Perbarui tampilan pengingat dan kalender setelah penghapusan
                                showReminders(date);
                                renderCalendar();
                            } else {
                                console.error("Pengingat gagal dihapus");
                            }
                        })
                        .catch(error => {
                            console.error("Error:", error);
                            alert("Terjadi kesalahan saat menghapus pengingat.");
                        });
                    };

                    reminderItem.appendChild(deleteButton);
                    reminderList.appendChild(reminderItem);
                });
            } else {
                const noReminderItem = document.createElement("li");
                noReminderItem.textContent = "Tidak ada pengingat untuk tanggal ini.";
                reminderList.appendChild(noReminderItem);
            }
        };

        // Tombol navigasi bulan
        document.querySelector("#prev-month").addEventListener("click", function() {
            currentMonth--;
            if (currentMonth < 0) {
                currentMonth = 11;
                currentYear--;
            }
            renderCalendar();
        });

        document.querySelector("#next-month").addEventListener("click", function() {
            currentMonth++;
            if (currentMonth > 11) {
                currentMonth = 0;
                currentYear++;
            }
            renderCalendar();
        });

        // Form pengingat baru
        reminderForm.addEventListener("submit", function(event) {
    event.preventDefault();
    const type = reminderForm.querySelector("select[name='type']").value;
    const title = reminderForm.querySelector("input[name='title']").value;
    const date = reminderForm.querySelector("input[name='date']").value;
    const description = reminderForm.querySelector("textarea[name='description']").value;

    if (title && date) {
        // Kirim data ke server
        fetch("{{ route('jadwal.store') }}", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": "{{ csrf_token() }}"
            },
            body: JSON.stringify({ type, title, date, description })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                addReminder(data.jadwal.date, data.jadwal.type, data.jadwal.title, data.jadwal.description);
                reminderForm.reset();
                renderCalendar();
            } else {
                console.error("Gagal menyimpan pengingat");
            }
        })
        .catch(error => console.error("Error:", error));
    }
});

        renderCalendar();
    });
</script>

<h2 class="text-4xl font-semibold text-[#221177] animate__animated animate__fadeIn">Reminder Kesehatan Hewan</h2>
<p class="text-lg text-gray-600 mt-2 animate__animated animate__fadeIn animate__delay-1s">Atur jadwal perawatan kesehatan untuk anjing dan kucing Anda.</p>

<div class="flex-1 flex flex-col p-5 space-y-8">
    <!-- Calendar Section -->
    <section class="bg-white p-5 rounded shadow animate__animated animate__fadeIn animate__delay-2s">
        <h2 class="text-xl font-bold mb-4">Kalender</h2>
        <div class="flex justify-between items-center mb-4">
            <button id="prev-month" class="bg-[#221177] text-white px-4 py-2 rounded hover:bg-[#150c72] transition duration-300 ease-in-out hover:scale-105">&laquo; Bulan Sebelumnya</button>
            <div class="text-center font-bold" id="month-year"></div>
            <button id="next-month" class="bg-[#221177] text-white px-4 py-2 rounded hover:bg-[#150c72] transition duration-300 ease-in-out hover:scale-105">Bulan Berikutnya &raquo;</button>
        </div>
        <table class="table-auto w-full border-collapse border border-gray-300">
            <thead>
                <tr>
                    <th class="border border-gray-300 px-4 py-2">Su</th>
                    <th class="border border-gray-300 px-4 py-2">Mo</th>
                    <th class="border border-gray-300 px-4 py-2">Tu</th>
                    <th class="border border-gray-300 px-4 py-2">We</th>
                    <th class="border border-gray-300 px-4 py-2">Th</th>
                    <th class="border border-gray-300 px-4 py-2">Fr</th>
                    <th class="border border-gray-300 px-4 py-2">Sa</th>
                </tr>
            </thead>
            <tbody id="calendar-body">
                <!-- Calendar will be generated dynamically here -->
            </tbody>
        </table>
    </section>

    <!-- Input Form Section -->
    <section class="bg-white p-5 rounded shadow animate__animated animate__fadeIn animate__delay-3s">
        <h2 class="text-xl font-bold mb-4">Penjadwalan Baru</h2>
        <form action="{{ route('jadwal.store') }}" method="POST" class="space-y-4">
            @csrf
            <div>
                <label class="block mb-2 font-medium">Jenis Pengingat</label>
                <select name="type" class="w-full p-2 border border-gray-300 rounded transition duration-300 ease-in-out">
                    <option value="Vaksinasi">Vaksinasi</option>
                    <option value="Jadwal Makan">Jadwal Makan</option>
                    <option value="Obat">Pemberian Obat</option>
                </select>
            </div>
            <input type="text" name="title" placeholder="Nama Pengingat" class="w-full p-2 border border-gray-300 rounded transition duration-300 ease-in-out">
            <input type="date" name="date" placeholder="Tanggal" class="w-full p-2 border border-gray-300 rounded transition duration-300 ease-in-out">
            <textarea name="description" placeholder="Deskripsi" class="w-full p-2 border border-gray-300 rounded transition duration-300 ease-in-out"></textarea>
            <button type="submit" class="w-full bg-[#221177] text-white py-2 rounded hover:bg-[#150c72] transition duration-300 ease-in-out hover:scale-105">Tambahkan</button>
        </form>
    </section>

    <!-- Reminder List Section -->
    <section class="bg-white p-5 rounded shadow animate__animated animate__fadeIn animate__delay-4s">
        <h2 class="text-xl font-bold mb-4">Reminder Aktif</h2>
        <ul id="reminder-list" class="space-y-2">
            @foreach($jadwals as $jadwal)
                <li class="p-4 border-b hover:bg-gray-100 transition duration-300 ease-in-out transform hover:scale-105">
                    <h3 class="text-lg font-semibold">{{ $jadwal->title }}</h3>
                    <p class="text-gray-600">{{ $jadwal->type }}</p>
                    <p class="text-gray-500">{{ $jadwal->date }}</p>
                    <p>{{ $jadwal->description }}</p>
                </li>
            @endforeach
        </ul>
    </section>
</div>
@endsection
