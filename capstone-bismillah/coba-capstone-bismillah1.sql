-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 03:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba-capstone-bismillah1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `animal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image_url`, `created_at`, `updated_at`, `category`, `animal`) VALUES
(1, 'Kebutaan Pada Anjing ', '   Anjing terkadang kehilangan penglihatan pada salah satu atau kedua matanya, sering kali karena penyakit atau cedera mata. Selain itu, anjing dapat kehilangan penglihatannya jika otaknya sakit atau cedera, karena mata dan otaknya berusaha mendeteksi dan menginterpretasikan gambar. Kebutaan pada anjing dapat muncul tiba-tiba atau berkembang secara bertahap seiring waktu. \r\n\r\n   Prevalensi kebutaan pada anjing sulit ditentukan karena banyak kondisi yang dapat menyebabkannya. Kebutaan lebih umum terjadi pada anjing setengah baya dan senior daripada pada anjing muda. Meskipun kebutaan itu sendiri biasanya tidak mengancam jiwa, beberapa penyebab mendasar kebutaan dapat mengancam jiwa. Jika anjing Anda tiba-tiba buta atau mengalami trauma mata, carilah perawatan dokter hewan darurat.  Jika penglihatan atau penampilan mata anjing Anda berubah bahkan secara halus jadwalkan kunjungan ke dokter hewan Anda. \r\n\r\nAnda mungkin tidak dapat mengetahui bahwa seekor anjing buta hanya dengan melihatnya, tetapi mereka mungkin berperilaku berbeda dari anjing yang penglihatannya tidak terganggu. \r\n\r\n     Anjing yang buta sering kali menabrak benda dan tersesat di tempat yang dikenalnya. Mereka mungkin tidak lagi melompat ke furnitur atau menggunakan tangga. Selain itu, mereka mungkin tidak merespons secara normal dengan berkedip saat menanggapi benda, seperti tangan Anda, di dekat mata mereka. Selain perubahan perilaku, perubahan pada tampilan mata anjing mungkin merupakan tanda bahwa mereka kehilangan penglihatannya. Bergantung pada penyebab yang mendasari kebutaan anjing, tampilan mata mereka dapat berubah dalam satu atau beberapa cara berikut: \r\n1.Warna mata putih, biru, atau kabur \r\n2.Mata merah \r\n3.Mata menonjol \r\n4.Pupil melebar \r\n5.Refleksi mata hijau meningkat \r\n6.Menyipitkan mata ', 'anjingbuta.jpg', NULL, NULL, 'health', 'dog'),
(2, 'Makanan Hewan Mengandung Serangga?', '   Anjing dan kucing memakan serangga sepanjang waktu, baik secara tidak sengaja maupun saat naluri berburu mereka muncul. Namun, memasukkan serangga ke dalam makanan hewan peliharaan secara sengaja—itu sama saja dengan sarang tawon. \r\n\r\n   Serangga saat ini tidak diizinkan sebagai bahan dalam makanan hewan peliharaan komersial dimanapun. Namun, makanan hewan peliharaan berbahan dasar serangga mulai beredar di pasaran seperti di Inggris, Jerman, Prancis, dan Italia. Bergantung pada keberhasilannya, ini bisa menjadi awal dari cara baru memberi makan hewan peliharaan kita. Mungkin anda masih asing dengan menu makanan yang berbasis serangga. Namun, di beberapa negara makanan ini sudah beredar. \r\n\r\n   Memakan serangga bukanlah konsep baru bagi hewan (atau manusia). Di beberapa wilayah di dunia, serangga tertentu dianggap sebagai makanan lezat. Namun, hal itu tidak berlaku disini, yang membuat konsep ini begitu asing bagi banyak dari kita. Dengan makanan hewan peliharaan berbahan dasar serangga, rasa mual sebagian besar hilang setelah produk dibuat. Setelah diproduksi, tampilannya sama seperti jenis makanan anjing, makanan kucing, camilan kucing, atau camilan anjing biasa. Seperti Yora Pet Foods baru-baru ini merilis kibble yang terbuat terutama dari protein serangga, gandum, kentang, dan sayuran. Protein pilihan mereka adalah larva Hermetia illucens, yang juga dikenal sebagai “lalat tentara hitam.” Sumber protein serangga potensial lainnya termasuk jangkrik dan ulat hongkong. ', 'anjingserangga.jpg', NULL, NULL, 'food', 'dog'),
(3, 'Pentingnya Pemeliharaan Kuku pada Anjing', 'Perawatan kuku anjing yang tepat merupakan aspek penting dari kepemilikan hewan peliharaan yang bertanggung jawab dan memastikan kesejahteraan sahabat berbulu kita secara keseluruhan. Perawatan kuku anjing Anda secara teratur tidak hanya sekadar estetika; perawatan ini berdampak langsung pada kesehatan, kenyamanan, dan kualitas hidup mereka. Dalam blog ini, kita akan membahas tentang pentingnya perawatan kuku anjing yang tepat, mengeksplorasi manfaat yang dibawanya, dan konsekuensi yang dapat timbul dari mengabaikan aspek penting dari perawatan anjing ini. Dengan memahami pentingnya perawatan kuku anjing dan mempelajari cara menggunakan  pemotong kuku anjing dan alat perawatan anjing lainnya secara efektif, Anda dapat berkontribusi pada kesehatan dan kebahagiaan anjing Anda secara keseluruhan. Mari kita jelajahi dunia perawatan kuku anjing bersama-sama, dan temukan dampak positifnya terhadap teman-teman anjing kesayangan kita.\r\n\r\nPerawatan kuku anjing secara teratur, termasuk memotong kuku anjing dan menggunakan alat penggosok kuku anjing, menawarkan banyak manfaat yang berkontribusi signifikan terhadap kesehatan dan kenyamanan sahabat berbulu Anda. Berikut ini adalah beberapa keuntungan utama dari perawatan kuku anjing yang tepat:\r\n\r\n\r\n1.Mencegah Pertumbuhan Berlebihan dan Rasa Sakit: Memotong kuku anjing secara teratur membantu mencegah pertumbuhan berlebih, yang dapat menyebabkan rasa tidak nyaman, rasa sakit, dan bahkan masalah sendi. Dengan menjaga kuku pada panjang yang sesuai, Anda memastikan bahwa anjing Anda dapat berjalan, berlari, dan bermain tanpa mengalami rasa tidak nyaman atau hambatan apa pun.\r\n\r\n\r\n2.Meningkatkan Mobilitas dan Keseimbangan: Kuku yang tumbuh terlalu besar dapat memengaruhi keseimbangan dan mobilitas anjing Anda, yang menyebabkan perubahan gaya berjalan dan potensi ketidakstabilan. Memotong kuku anjing memungkinkan distribusi berat yang tepat pada telapak kakinya, sehingga meningkatkan mobilitas dan koordinasinya secara keseluruhan.\r\n\r\n\r\n3.Meminimalkan Risiko Cedera: Kuku yang panjang rentan patah, terbelah, dan tersangkut, yang dapat menyebabkan cedera yang menyakitkan. Perawatan kuku yang teratur mengurangi risiko kejadian tersebut, mencegah pendarahan, infeksi, dan perlunya intervensi dokter hewan .\r\n\r\n\r\n4.Meningkatkan Struktur Kaki yang Sehat: Kuku yang terlalu panjang akan memberikan tekanan pada jari-jari kaki dan dapat menyebabkan jari-jari kaki melebar atau membentuk bentuk yang tidak normal seiring waktu. Dengan menjaga panjang kuku yang tepat, Anda mendukung kesejajaran dan struktur alami kaki anjing Anda.\r\n\r\n\r\n5.Mengurangi Stres dan Kecemasan: Kuku yang panjang dapat menyebabkan ketidaknyamanan dan kecemasan pada anjing, terutama saat melakukan aktivitas seperti berjalan atau mencakar. Perawatan kuku yang teratur dapat meminimalkan sensasi ini, sehingga anjing kesayangan Anda merasa lebih tenang dan bahagia.\r\n\r\nIngat, menggunakan alat yang tepat seperti pengasah kuku anjing berkualitas tinggi atau pemotong kuku yang sesuai dengan ukuran dan ras anjing Anda sangat penting untuk perawatan kuku yang aman dan efektif. Dengan memprioritaskan perawatan kuku anjing secara teratur, Anda berkontribusi pada kesehatan, kenyamanan, dan kesejahteraan anjing Anda secara keseluruhan.', 'anjingkuku.jpeg', NULL, NULL, 'cleaning', 'dog'),
(4, 'Mengapa Makanan Kucing Yang Sesuai Umurnya Itu Penting', '   Saat memilih makanan yang tepat untuk hewan peliharaan Anda, penting untuk mempertimbangkan usia, kondisi tubuh, masalah medis, dan bahkan ras hewan peliharaan Anda. Penting juga untuk memastikan makanan hewan peliharaan Anda sesuai dengan Association of American Feed Control Officials (AAFCO), yang menunjukkan bahwa makanan tersebut telah diuji melalui uji coba makanan atau telah dianalisis untuk memenuhi pedoman nutrisi. \r\n\r\n   Di sini, pelajari lebih lanjut tentang apa yang harus diberikan kepada hewan peliharaan Anda sepanjang hidupnya dan cari tahu mengapa produk yang diberi label “semua tahap kehidupan” mungkin bukan pilihan yang paling tepat. \r\n\r\n   Salah satu dasar pemberian makan yang paling penting untuk dipahami oleh pemilik hewan peliharaan adalah bahwa anjing dan kucing tidak memiliki kebutuhan nutrisi yang sama. Kucing dianggap sebagai karnivora sejati sementara anjing tergolong omnivora. Meskipun tidak ideal, anjing dapat menerima nutrisi yang cukup dengan makanan kucing, tetapi kucing tidak boleh diberi makan makanan anjing. Meskipun anjing dan kucing dewasa akan mengonsumsi nutrisi yang cukup jika diberi formula pertumbuhan (makanan yang diformulasikan khusus untuk hewan peliharaan yang sedang tumbuh), anak anjing dan anak kucing tidak boleh diberi makanan dewasa saat masih dalam tahap perkembangan. Kekhawatiran terbesar yang terkait dengan anjing dan kucing dewasa yang mengonsumsi formula pertumbuhan dalam jumlah sedang adalah kecenderungan untuk bertambah berat badan. ', 'kucingSesuaiUmurnya.jpg', NULL, NULL, 'food', 'cat'),
(6, 'Makanan Hewan Mengandung Serangga?', '   Anjing dan kucing memakan serangga sepanjang waktu, baik secara tidak sengaja maupun saat naluri berburu mereka muncul. Namun, memasukkan serangga ke dalam makanan hewan peliharaan secara sengaja—itu sama saja dengan sarang tawon. \r\n\r\n   Serangga saat ini tidak diizinkan sebagai bahan dalam makanan hewan peliharaan komersial dimanapun. Namun, makanan hewan peliharaan berbahan dasar serangga mulai beredar di pasaran seperti di Inggris, Jerman, Prancis, dan Italia. Bergantung pada keberhasilannya, ini bisa menjadi awal dari cara baru memberi makan hewan peliharaan kita. Mungkin anda masih asing dengan menu makanan yang berbasis serangga. Namun, di beberapa negara makanan ini sudah beredar. \r\n\r\n   Memakan serangga bukanlah konsep baru bagi hewan (atau manusia). Di beberapa wilayah di dunia, serangga tertentu dianggap sebagai makanan lezat. Namun, hal itu tidak berlaku disini, yang membuat konsep ini begitu asing bagi banyak dari kita. Dengan makanan hewan peliharaan berbahan dasar serangga, rasa mual sebagian besar hilang setelah produk dibuat. Setelah diproduksi, tampilannya sama seperti jenis makanan anjing, makanan kucing, camilan kucing, atau camilan anjing biasa. Seperti Yora Pet Foods baru-baru ini merilis kibble yang terbuat terutama dari protein serangga, gandum, kentang, dan sayuran. Protein pilihan mereka adalah larva Hermetia illucens, yang juga dikenal sebagai “lalat tentara hitam.” Sumber protein serangga potensial lainnya termasuk jangkrik dan ulat hongkong. ', 'kucingserangga.jpg', NULL, NULL, 'food', 'cat'),
(7, 'Cara Memandikan Anak Kucing', '   Memandikan anak kucing bisa menjadi tantangan tersendiri, terutama jika kamu baru pertama kali melakukannya. Tapi jangan khawatir! Dengan panduan ini, kamu akan belajar cara memandikan anak kucing dengan mudah dan aman, sehingga si kecil tetap sehat dan nyaman.\r\n\r\n   Mungkin kamu bertanya-tanya, “Apakah anak kucing perlu dimandikan?” Jawabannya adalah ya, tetapi dengan catatan tertentu. Memandikan anak kucing membantu menjaga kebersihan bulunya, mengurangi risiko kutu, serta mencegah infeksi kulit akibat kotoran yang menumpuk.\r\n\r\n   Jika anak kucing jarang dimandikan, bulunya bisa menjadi kusut, bau, atau bahkan terinfeksi bakteri. Selain itu, kotoran yang menempel di tubuhnya dapat menimbulkan gangguan kesehatan.\r\n\r\n   Tidak semua waktu cocok untuk memandikan anak kucing. kamu perlu memahami usia dan kondisi fisiknya sebelum mulai.\r\n\r\n   Anak kucing sebaiknya dimandikan ketika usianya mencapai minimal 8 minggu. Pada usia ini, tubuhnya sudah cukup kuat untuk menghadapi perubahan suhu dan lingkungan. kamu tidak perlu terlalu sering memandikan anak kucing. Biasanya, memandikan mereka setiap 1-2 bulan sudah cukup, kecuali mereka sangat kotor atau memiliki masalah kulit tertentu.', 'kucingMemandikanAnak.png', NULL, NULL, 'cleaning', 'cat'),
(8, 'Cara Membantu Anjing yang Tersedak', 'Ada banyak hal yang dapat menyebabkan anjing tersedak, seperti menelan benda asing, ada sesuatu yang tersangkut di tenggorokan, atau mengalami reaksi alergi yang parah. Berikut ini adalah gejala umum yang menunjukkan anjing Anda mungkin tersedak:\r\n\r\n1.Mencakar mulut\r\n2.Air liur yang berlebihan atau suara tersedak\r\n3.Batuk dengan kuat atau tersedak tanpa menyebabkan muntah\r\n4.Kesulitan bernafas\r\n5.Gusi pucat atau biru\r\n\r\nJika Anda melihat salah satu tanda di atas, tetaplah tenang dan ikuti langkah-langkah berikut:\r\n\r\n1.Nilai Situasinya: Pastikan keselamatan Anda terlebih dahulu. Anjing yang tersedak mungkin akan panik dan menggigit tanpa sengaja. Dekati mereka dengan tenang dan lembut.\r\n2.Buka Mulut: Buka mulut anjing Anda dengan hati-hati untuk mencari sumbatan yang terlihat. Gunakan senter jika perlu. Berhati-hatilah agar tidak mendorong benda lebih jauh ke dalam tenggorokan.\r\n3.Singkirkan Benda yang Terlihat: Jika Anda dapat melihat benda tersebut dan mudah dijangkau, cobalah untuk menyingkirkannya dengan jari Anda. Jangan gunakan alat seperti pinset  ', 'anjingtersedak.jpg', NULL, NULL, 'health', 'dog'),
(9, 'Bagaimana cara mengetahui apakah kucing Anda sedang bermain atau berkelahi?', '   Kucing dikenal sebagai hewan yang suka bermain, tetapi terkadang sulit untuk menentukan apakah mereka benar-benar sedang bermain atau berkelahi. Sangat penting untuk memahami perbedaan antara keduanya guna memastikan keselamatan dan kesejahteraan kucing Anda. Berikut ini beberapa kiat bermanfaat untuk membantu Anda menentukan apakah kucing Anda sedang bersenang-senang atau perlu waktu istirahat.\r\n\r\n   Kucing menggunakan bahasa tubuh untuk berinteraksi satu sama lain. Saat kucing bermain, tubuh mereka biasanya rileks, mereka mungkin berguling-guling di tanah, dan gerakan mereka halus. Kucing mungkin saling menatap tajam selama perkelahian karena tubuh mereka menjadi tegang dan kaku. Untuk mengintimidasi kucing lain, mereka mungkin mencoba membuat diri mereka tampak lebih besar dengan menggembungkan bulunya.\r\n\r\n   Kucing berinteraksi satu sama lain menggunakan berbagai vokalisasi; Anda sering kali dapat mengetahui apakah mereka sedang bermain atau berkelahi berdasarkan suara-suara ini. Kucing dapat mengeluarkan suara berkicau atau bergetar saat bermain, yang merupakan suara ceria yang menunjukkan bahwa mereka sedang bersenang-senang. Namun, saat kucing berkelahi, mereka mungkin mendesis, menggeram, atau melolong—tanda-tanda yang jelas bahwa waktu bermain telah berakhir dan mereka mungkin perlu dipisahkan.', 'kucingbermain.jpg', NULL, NULL, 'health', 'cat'),
(10, 'Bisakah Kucing Makan Bayam?', '   Bayam adalah sayuran hijau berdaun yang sering dipuji karena nilai gizinya dalam makanan manusia, tetapi apakah hal itu berlaku untuk dunia kucing? Secara umum, bayam aman untuk dimakan kucing dalam jumlah kecil. Namun, ada beberapa faktor penting yang perlu dipertimbangkan sebelum menambahkannya ke dalam makanan kucing Anda.\r\n\r\n   Bayam mengandung oksalat, senyawa yang dapat mengganggu penyerapan kalsium dan dapat menyebabkan terbentuknya batu ginjal atau kandung kemih pada kucing. Meskipun menggigitnya sedikit saja tidak akan membahayakan, Anda perlu berhati-hati, terutama jika kucing Anda memiliki riwayat masalah saluran kemih atau ginjal.\r\n\r\n   Oksalat dalam bayam merupakan senyawa alami yang mengikat kalsium selama proses pencernaan. Pada kucing dengan kondisi bawaan seperti penyakit ginjal atau yang rentan mengalami batu kandung kemih, mengonsumsi makanan yang mengandung oksalat tinggi dapat memperburuk masalah ini. Oleh karena itu, meskipun bayam pada dasarnya tidak beracun bagi kucing, bayam juga memiliki risiko, terutama bagi kucing dengan masalah kesehatan tertentu.\r\n\r\n   Meskipun mengandung risiko yang terkait dengan oksalat, bayam menawarkan beberapa manfaat nutrisi yang mungkin menarik jika diberikan dalam jumlah sedang. Bayam kaya akan vitamin A, C, dan K, beserta mineral penting seperti zat besi dan magnesium. Nutrisi ini dapat mendukung kesehatan secara keseluruhan dan berkontribusi pada pola makan yang seimbang jika dikonsumsi dengan hati-hati. Vitamin A dalam bayam membantu menjaga kesehatan penglihatan dan fungsi kekebalan tubuh, sementara vitamin K membantu pembekuan darah. Zat besi dalam bayam membantu mendukung kesehatan sel darah, yang penting untuk mencegah anemia. Namun, perlu dicatat bahwa kucing terutama memperoleh nutrisi ini dari makanan sehari-harinya, terutama jika mereka mengonsumsi makanan kucing komersial berkualitas tinggi.', 'kucingbayam.jpg', NULL, NULL, 'food', 'cat'),
(11, 'Bisakah Anjing Mengalami Gangguan Makan?', '   Gangguan makan pada anjing tidak begitu dikenal seperti pada manusia, tetapi gangguan makan dapat berdampak signifikan pada kesehatan fisik dan emosional anjing. Tidak seperti manusia, anjing tidak mengalami gangguan makan karena alasan psikologis seperti masalah citra tubuh. Sebaliknya, gangguan makan pada anjing biasanya terkait dengan masalah kesehatan, masalah perilaku, atau faktor lingkungan.\r\n\r\n   Anjing dapat mengalami berbagai gangguan makan yang dapat memengaruhi kesehatan dan perilakunya. Meskipun beberapa gangguan ini jarang terjadi, beberapa lainnya lebih sering ditemukan dalam praktik dokter hewan.Anoreksia pada anjing ditandai dengan hilangnya nafsu makan secara keseluruhan atau sebagian. Kondisi ini bisa akut, di mana anjing tiba-tiba berhenti makan, atau kronis, di mana penolakan makanan terjadi secara bertahap. Anoreksia dapat disebabkan oleh berbagai faktor, termasuk rasa sakit, penyakit, stres, atau perubahan lingkungan. Jika anjing Anda menolak makan selama lebih dari 24 jam, konsultasikan dengan dokter hewan sesegera mungkin untuk menyingkirkan kemungkinan kondisi medis yang mendasarinya.\r\n\r\n   Meskipun jarang terjadi, beberapa anjing mungkin menunjukkan perilaku seperti bulimia, yang ditandai dengan makan berlebihan yang diikuti oleh muntah. Hal ini dapat disebabkan oleh kecemasan, rasa lapar yang berlebihan, atau bahkan keinginan untuk menyembunyikan bukti konsumsi makanan. Bulimia pada anjing dapat menyebabkan ketidakseimbangan gizi dan masalah kesehatan serius lainnya jika tidak segera ditangani.', 'anjinggangguan.jpg', NULL, NULL, 'food', 'dog'),
(12, 'Menjilati Berlebihan pada Kucing: Mengapa Kucing Melakukan Ini?', '   Kucing secara alami adalah hewan yang bersih, dan perawatan diri merupakan bagian dari rutinitas harian mereka. Perilaku ini tidak hanya menjaga bulu mereka tetap bersih, tetapi juga membantu mengatur suhu tubuh, menghilangkan parasit, dan memperkuat ikatan mereka dengan kucing lain. Perawatan diri juga memberi kucing rasa nyaman dan aman, itulah sebabnya mereka sering menjilati saat mereka sedang santai. Namun, penting untuk membedakan antara perawatan diri yang normal dan menjilati secara berlebihan. Kucing yang menjilati secara berlebihan mungkin memberi sinyal bahwa ada sesuatu yang tidak beres.\r\n\r\n   Bila perilaku menjilati kucing menjadi berlebihan, sering kali itu merupakan tanda bahwa ada sesuatu yang salah. Berikut ini beberapa alasan umum mengapa kucing Anda mungkin menjilat lebih sering dari biasanya:\r\n   Kucing dapat mengembangkan alergi terhadap berbagai faktor lingkungan, seperti serbuk sari, debu, atau produk pembersih tertentu. Alergi makanan juga dapat menyebabkan kulit gatal, yang menyebabkan peningkatan keinginan menjilati. Dalam beberapa kasus, menjilati secara berlebihan dapat mengakibatkan bercak botak atau luka pada kulit, yang dapat memperburuk masalah. Iritasi kulit, seperti gigitan kutu atau dermatitis kontak, juga dapat menyebabkan kucing menjilati secara berlebihan. Kutu adalah penyebab umum, terutama jika kucing Anda alergi terhadap air liur kutu. Bahkan satu gigitan kutu dapat memicu rasa gatal yang hebat, menyebabkan kucing Anda menjilati area yang terkena berulang kali.\r\n\r\n   Jika kucing Anda menderita radang sendi, cedera, atau kondisi medis lain yang mendasarinya, ia mungkin menjilati area yang sakit untuk meredakan rasa tidak nyaman. Hal ini serupa dengan cara manusia menggosok otot yang sakit. Menjilati karena rasa sakit sering kali terlokalisasi pada area tertentu. Misalnya, jika kucing Anda menjilati perutnya secara berlebihan, hal itu dapat mengindikasikan rasa tidak nyaman di area tersebut. Demikian pula, menjilati sekitar mulut atau wajah dapat mengindikasikan sakit gigi atau masalah pada gusi.', 'kucingmenjilat.jpeg ', NULL, NULL, 'cleaning', 'cat'),
(13, 'Telinga Gatal pada Anjing: Mungkinkah Ini Alergi?', '   Telinga anjing yang gatal dapat disebabkan oleh berbagai faktor, mulai dari iritasi sederhana hingga masalah kesehatan yang lebih kompleks. Meskipun menggaruk sesekali adalah hal yang normal, rasa gatal yang terus-menerus dapat mengindikasikan masalah yang perlu diperhatikan.\r\n\r\n   Sama seperti manusia, anjing dapat menderita reaksi alergi terhadap berbagai faktor lingkungan, makanan, dan bahkan obat-obatan tertentu. Ketika sistem kekebalan tubuh anjing bereaksi terhadap alergen, hal itu dapat menyebabkan peradangan dan gatal, terutama di area sensitif seperti telinga. Alergen yang umum termasuk serbuk sari, tungau debu, jamur, dan bahan-bahan tertentu dalam makanan anjing. Alergi lingkungan sangat umum terjadi pada anjing, terutama selama musim-musim tertentu ketika alergen lebih banyak jumlahnya. Jenis alergi ini sering kali bermanifestasi sebagai dermatitis atopik, suatu kondisi yang menyebabkan gatal dan kemerahan di telinga, telapak kaki, dan bagian tubuh lainnya.\r\n\r\n   Seringkali, infeksi telinga berkembang sebagai masalah sekunder akibat alergi. Ketika telinga anjing meradang karena reaksi alergi, hal itu menciptakan lingkungan tempat bakteri atau ragi dapat berkembang biak, yang menyebabkan infeksi. Infeksi telinga dapat menyebabkan rasa gatal yang parah, kemerahan, keluarnya cairan, dan bau yang tidak sedap. Jika tidak diobati, infeksi ini dapat menjadi kronis dan menyebabkan komplikasi yang lebih parah.', 'anjingtelinga.jpg', NULL, NULL, 'health', 'dog'),
(14, 'Sindrom Down pada Kucing: Apa yang Perlu Anda Ketahui', '   Sindrom Down adalah kondisi genetik yang terjadi pada manusia ketika ada salinan kromosom 21 yang berlebih. Kondisi ini menyebabkan berbagai perbedaan fisik dan kognitif. Namun, kucing memiliki perangkat kromosom yang berbeda. Alih-alih 23 pasang, kucing memiliki 19 pasang, dan tidak satu pun dari pasangan ini berkorelasi langsung dengan kromosom 21 manusia. Karena perbedaan genetik mendasar ini, kucing tidak dapat memiliki sindrom Down seperti yang didefinisikan pada manusia.\r\n\r\n   Meski demikian, beberapa kucing menunjukkan ciri-ciri yang mungkin mirip dengan yang terlihat pada manusia dengan sindrom Down, seperti fitur wajah yang tidak biasa, keterlambatan perkembangan, atau perbedaan perilaku. Ciri-ciri ini dapat disebabkan oleh berbagai kondisi genetika lain, masalah bawaan, atau faktor lingkungan, bukan sindrom Down itu sendiri.\r\n\r\nBila kucing menunjukkan gejala seperti sindrom Down, penyebab yang mendasarinya bisa sangat beragam. Penyebabnya bisa meliputi:\r\n1.Kelainan Genetik: Kucing dapat memiliki mutasi genetik unik yang menyebabkan perbedaan fisik dan perilaku. Mutasi ini tidak terkait dengan sindrom Down, tetapi dapat menyebabkan sifat yang mungkin keliru.\r\n2.Cacat Bawaan: Cacat lahir yang terjadi saat kucing berkembang di dalam rahim dapat mengakibatkan perbedaan fisik dan neurologis. Ini dapat mencakup tengkorak yang tidak berbentuk, gangguan kognitif, dan masalah perkembangan lainnya.\r\n3.Infeksi Selama Kehamilan: Jika induk kucing tertular infeksi selama kehamilan, hal itu dapat memengaruhi perkembangan anak-anaknya, yang menyebabkan berbagai kelainan yang mungkin menyerupai sindrom Down.\r\n4.Paparan Racun: Racun lingkungan juga dapat berperan dalam perkembangan abnormal pada anak kucing, yang mengakibatkan kelainan fisik atau masalah neurologis.\r\nMeskipun kondisi ini dapat menimbulkan gejala yang tampak mirip dengan sindrom Down, kondisi tersebut berbeda dan memerlukan pendekatan perawatan dan penanganan yang berbeda.', 'kucingsindrom.jpeg', NULL, NULL, 'health', 'cat'),
(15, 'Mengapa Anjing Mendengkur?', '   Mendengkur pada anjing bisa sama umum terjadi seperti pada manusia, yang disebabkan oleh berbagai alasan mulai dari posisi tidur hingga kondisi kesehatan yang lebih serius. Memahami penyebab ini dapat membantu pemilik hewan peliharaan lebih memperhatikan kesehatan dan kesejahteraan anjing mereka.\r\n\r\n   Sama seperti manusia, posisi tidur anjing dapat memengaruhi pernapasannya. Anjing yang berbaring telentang atau memiringkan kepala dengan cara tertentu dapat mendengkur lebih keras karena cara udara melewati saluran pernapasannya.Beberapa ras anjing lebih rentan mendengkur daripada ras lainnya. Bulldog, Pug, dan ras brachycephalic lainnya memiliki saluran hidung yang lebih pendek dan langit-langit lunak yang memanjang, sehingga mereka lebih mungkin mendengkur.\r\n\r\nTidak semua dengkuran menandakan masalah, tetapi ada kalanya sebaiknya Anda meminta pendapat profesional. Jika dengkuran anjing Anda tiba-tiba mulai atau bertambah parah, mungkin sudah saatnya Anda mengunjungi Festival Animal Clinic.\r\n1.Perubahan Pola Mendengkur: Timbulnya dengkuran secara tiba-tiba atau peningkatan intensitas yang signifikan dapat menjadi tanda masalah kesehatan, seperti alergi atau infeksi saluran pernapasan, dan memerlukan pemeriksaan.\r\n2.Disertai Gejala Lain: Jika mendengkur disertai gejala lain seperti batuk, bersin, atau kesulitan bernapas, penting untuk memeriksakan anjing Anda ke dokter hewan.', 'anjingmendengkur.jpeg', NULL, NULL, 'health', 'dog'),
(16, 'Tanda dan Pencegahan Osteoartritis pada Kucing', '   Osteoartritis, penyakit sendi degeneratif, dapat sulit dideteksi pada kucing. Deteksi dini adalah kunci untuk mengelola kondisi ini secara efektif. Perhatikan perubahan pada perilaku kucing Anda, seperti berkurangnya aktivitas, enggan melompat atau memanjat, dan kekakuan yang nyata, terutama setelah beristirahat. Anda mungkin juga memperhatikan kucing Anda lebih jarang membersihkan diri atau terlalu sering membersihkan area tertentu, yang bisa menjadi tanda ketidaknyamanan.\r\n\r\n   Perhatikan baik-baik gerakan dan postur kucing Anda. Kucing yang menderita osteoartritis mungkin menunjukkan rentang gerak yang terbatas, pincang, atau tidak nyaman saat disentuh di area tertentu. Perubahan kecil ini dapat menjadi indikator awal masalah sendi.Kucing pandai menyembunyikan rasa sakit, tetapi vokalisasi yang meningkat atau perubahan kebiasaan buang air di kotak pasir dapat menjadi tanda-tanda ketidaknyamanan. Jika kucing Anda mengeong lebih sering dari biasanya atau menghindari kotak pasir karena rasa sakit saat memanjat masuk, saatnya berkonsultasi dengan dokter hewan.\r\n\r\n   Solensia, obat yang baru-baru ini disetujui, telah menunjukkan hasil yang menjanjikan dalam mengelola rasa sakit yang terkait dengan osteoartritis pada kucing. Obat ini menargetkan faktor pertumbuhan saraf tertentu yang terkait dengan rasa sakit, sehingga memberikan kelegaan dan meningkatkan kualitas hidup. Meskipun Solensia bukan obat untuk osteoartritis, obat ini secara signifikan mengurangi rasa tidak nyaman, sehingga kucing dapat bergerak lebih bebas dan melakukan aktivitas sehari-hari dengan lebih sedikit rasa sakit.\r\n\r\n', 'kucingOsteoartritis.jpeg', NULL, NULL, 'health', 'cat'),
(17, 'Tanda dan Pencegahan Osteoartritis pada Anjing', '   Osteoartritis, yang juga dikenal sebagai penyakit sendi degeneratif, adalah kondisi yang menyerang banyak anjing, terutama saat mereka bertambah tua. Kondisi ini terjadi saat tulang rawan di persendian menipis seiring waktu, yang menyebabkan nyeri, kekakuan, dan berkurangnya mobilitas. Anjing dari segala usia dapat terkena penyakit ini, tetapi lebih umum terjadi pada anjing senior dan mereka yang memiliki riwayat cedera sendi atau obesitas.\r\n\r\n   Gejala osteoartritis pada anjing dapat bervariasi, tetapi sering kali meliputi pincang, kesulitan berdiri atau berbaring, enggan melompat atau menaiki tangga, dan rasa tidak nyaman yang nyata selama atau setelah berolahraga. Anda mungkin juga memperhatikan anjing Anda kurang aktif dari biasanya atau menunjukkan tanda-tanda kekakuan setelah beristirahat.Pencegahan osteoartritis meliputi menjaga berat badan yang sehat, olahraga teratur, dan intervensi dini jika diduga ada masalah sendi. Nutrisi juga berperan penting, dengan diet dan suplemen tertentu yang bermanfaat bagi kesehatan sendi. Kunjungan rutin ke dokter hewan dapat membantu mendeteksi dan menangani osteoartritis sejak dini, yang berpotensi memperlambat perkembangannya.\r\n\r\nDeteksi dini osteoartritis pada anjing dapat membuat perbedaan yang signifikan dalam penanganan kondisi tersebut. Perhatikan perubahan kecil pada perilaku atau gerakan anjing Anda, seperti ragu-ragu untuk bermain atau sedikit pincang yang sebelumnya tidak ada. Tanda-tanda awal ini mungkin tidak tampak serius pada awalnya, tetapi dapat mengindikasikan tahap awal masalah sendi.\r\n\r\nSebagai pemilik hewan peliharaan, perhatikan dengan saksama aktivitas harian anjing Anda dan perhatikan setiap perubahan yang terjadi dapat membantu mendeteksi osteoartritis sejak dini. Jika Anda melihat salah satu gejala ini, penting untuk berkonsultasi dengan kami di Festival Animal Hospital. Tim kami dapat menilai kondisi anjing Anda dan merekomendasikan tindakan terbaik.\r\n\r\n   Meskipun osteoartritis tidak selalu dapat dicegah sepenuhnya, ada beberapa langkah yang dapat Anda ambil untuk mengurangi risiko dan dampak kondisi ini pada kehidupan anjing Anda. Menjaga berat badan anjing Anda tetap ideal sangatlah penting, karena berat badan berlebih akan memberikan tekanan tambahan pada persendian. Olahraga teratur dan sedang membantu menjaga kelenturan persendian dan memperkuat otot-otot di sekitarnya.Nutrisi juga berperan penting dalam kesehatan sendi. Pola makan yang kaya akan asam lemak omega-3 dan suplemen seperti glukosamin dan kondroitin dapat mendukung kesehatan sendi. Selalu konsultasikan dengan dokter hewan sebelum menambahkan suplemen ke dalam pola makan anjing Anda, karena mereka dapat merekomendasikan pilihan terbaik berdasarkan kebutuhan spesifik anjing Anda.', 'anjingpencegahan.jpeg', NULL, NULL, 'health', 'dog'),
(18, 'Kapan Saya Harus Membersihkan Gigi Anjing Saya?', '   Kesehatan gigi merupakan bagian penting dari kesehatan anjing Anda secara keseluruhan. Sama seperti manusia, anjing dapat mengalami masalah gigi seperti penumpukan plak, penyakit gusi, dan gigi berlubang. Masalah-masalah ini dapat menyebabkan masalah kesehatan yang lebih serius jika tidak ditangani. Pembersihan gigi secara teratur merupakan cara yang baik untuk mencegah masalah-masalah ini dan menjaga anjing Anda tetap sehat dan bahagia.\r\n\r\n   Banyak anjing mengalami masalah kesehatan gigi, seperti penumpukan karang gigi, bau mulut, dan penyakit gusi. Hal ini dapat menyebabkan ketidaknyamanan dan menimbulkan masalah kesehatan yang lebih serius. Pemeriksaan gigi rutin di Festival Animal Clinic dapat membantu mendeteksi masalah ini sejak dini.Mengetahui kapan gigi anjing Anda perlu dibersihkan bisa jadi sulit. Cari tanda-tanda seperti bau mulut, kesulitan makan, atau karang gigi yang terlihat. Jika Anda melihat salah satu dari tanda-tanda ini, sebaiknya jadwalkan pemeriksaan gigi untuk anjing Anda.\r\n\r\n   Pencegahan adalah kunci dalam menjaga kesehatan gigi anjing Anda. Menyikat gigi secara teratur, mengunyah permen karet, dan pola makan yang sehat dapat membantu mengurangi risiko masalah gigi. Ditambah lagi, pemeriksaan rutin di klinik kami dapat menjaga gigi mereka dalam kondisi prima.Jika anjing Anda perlu dibersihkan giginya, berikut ini hal-hal yang dapat Anda harapkan. Dokter hewan kami yang terampil di Festival Animal Clinic akan membersihkan gigi anjing Anda secara menyeluruh, menghilangkan plak dan karang gigi. Kami juga akan memeriksa tanda-tanda masalah gigi dan memberikan perawatan jika perlu.\r\n\r\n   Selama pembersihan, anjing Anda akan dibius dengan aman. Hal ini memungkinkan dokter hewan kami untuk membersihkan setiap gigi secara menyeluruh dan memeriksa adanya masalah. Kami juga memoles gigi untuk mencegah penumpukan plak di kemudian hari.Setelah gigi anjing Anda dibersihkan, ada sedikit perawatan lanjutan yang harus dilakukan. Kami akan memberikan petunjuk terperinci tentang cara merawat gigi anjing Anda di rumah. Ini dapat mencakup diet khusus, rutinitas menyikat gigi, atau kunyahan gigi.', 'anjinggigi.jpg', NULL, NULL, 'cleaning', 'dog'),
(19, 'Anjing Saya Makan Kismis, Apa yang Harus Saya Lakukan?', '   Pertama, mari kita pahami mengapa kismis menimbulkan masalah. Anda mungkin berpikir sesuatu yang kecil dan tampak tidak berbahaya seperti kismis tidak akan menjadi masalah. Namun, bagi anjing, kismis (dan buah anggur segar) dapat menyebabkan masalah kesehatan yang serius, termasuk gagal ginjal akut. Alasan pasti mengapa kismis beracun masih belum jelas, tetapi efeknya, sayangnya, telah terdokumentasi dengan baik.Bahkan sejumlah kecil kismis dapat mematikan. Itulah mengapa sangat penting untuk segera bertindak jika Anda menduga anjing Anda telah menelan kismis. Respons cepat Anda berpotensi menyelamatkan nyawa hewan peliharaan Anda.\r\n\r\n   Setelah keadaan darurat, dokter hewan Anda mungkin menyarankan pemeriksaan darah, analisis urine, dan bahkan rawat inap untuk kasus yang lebih parah. Sahabat berbulu Anda akan membutuhkan banyak istirahat, hidrasi, dan mungkin, pengobatan.Pencegahan selalu lebih baik daripada pengobatan. Pastikan semua makanan yang beracun bagi anjing, seperti kismis, disimpan dengan aman dan jauh dari jangkauan hewan peliharaan Anda. Beri tahu semua orang di rumah Anda tentang bahaya makanan ini untuk mencegah konsumsi makanan tersebut secara tidak sengaja.', 'anjingkismis.jpg', NULL, NULL, 'food', 'dog'),
(20, 'Mengapa Kucing Berceloteh?', '   Mengoceh, sering kali disertai dengan kibasan ekor dan tatapan tajam, adalah perilaku aneh yang ditunjukkan oleh teman-teman kucing kita. Hal ini biasanya terjadi saat mereka melihat mangsa – biasanya burung atau tupai – di luar jangkauan mereka. Meskipun sudah dijinakkan, kucing adalah pemburu alami, dan naluri mereka sangat kuat. Banyak yang percaya bahwa mengoceh merupakan cerminan dari dorongan primitif ini.Suaranya biasanya berupa campuran meong bernada tinggi, kicauan, dan ocehan, oleh karena itu disebut \"ocehan\". Pemandangan yang memikat, tetapi memahami alasan di balik perilaku ini dapat membantu pemilik hewan peliharaan seperti Anda membangun ikatan yang lebih kuat dengan kucing Anda.\r\n\r\n   Kucing adalah pemburu yang ahli dan ocehan mereka bisa jadi merupakan hasil dari lonjakan adrenalin yang mereka dapatkan saat melihat mangsa potensial. Atau, itu bisa jadi merupakan ekspresi frustrasi mereka karena tidak dapat menangkapnya.Beberapa ahli berpendapat bahwa berceloteh merupakan upaya naluriah kucing untuk meniru mangsanya, terutama burung, untuk menidurkan mereka ke dalam rasa aman yang salah.Teori yang cukup gamblang adalah bahwa celoteh itu merupakan latihan naluriah kucing untuk \"menggigit mangsanya.\" Mereka membayangkan menancapkan gigi mereka ke mangsanya dan memberikan gigitan mematikan di lehernya.\r\n\r\n   Celotehnya bisa jadi merupakan perwujudan fisik dari antisipasi dan kegembiraan kucing terhadap prospek perburuan.Meskipun semua teori ini memiliki pendukungnya masing-masing, penting untuk dicatat bahwa setiap kucing itu unik. Apa yang berlaku untuk satu kucing mungkin tidak berlaku untuk kucing lain. Itulah mengapa penting untuk mengamati perilaku kucing Anda dengan saksama dan mencari bantuan profesional bila diperlukan.', 'kucingBerceloteh.jpg', NULL, NULL, 'health', 'cat'),
(21, 'Kembung pada Anjing: Gejala dan Pengobatan', '   Kembung pada anjing merupakan kondisi yang berpotensi mengancam jiwa, ditandai dengan terpelintirnya lambung. Kondisi ini menyebabkan terperangkapnya gas dan cairan di dalamnya, yang menyebabkan lambung mengembang secara berbahaya. Situasi darurat ini memerlukan perhatian dokter hewan segera untuk menyelamatkan nyawa anjing.\r\nMengenali gejala perut kembung sejak dini adalah kunci pengobatan yang efektif. Meskipun gejalanya bisa beragam, beberapa tanda umum meliputi:\r\n1.Perut yang terlihat membesar atau bengkak\r\n2.Air liur atau air liur yang berlebihan\r\n3.Sering kali gagal untuk muntah (setiap 10-20 menit)\r\n4.Kegelisahan atau tanda-tanda ketidaknyamanan\r\n5.Pernapasan cepat dan dangkal\r\n6.Gusi pucat\r\n7.Kelemahan atau keruntuhan\r\n\r\nPencegahan selalu lebih baik daripada pengobatan. Beberapa tindakan yang dapat Anda lakukan untuk mengurangi risiko anjing Anda mengalami kembung antara lain:\r\n1.Hindari menyajikan makanan dalam porsi besar; sebaliknya, pilihlah beberapa makanan dalam porsi kecil sepanjang hari.\r\n2.Cegah makan cepat.\r\n3.Batasi olahraga berat sebelum dan sesudah makan.\r\n4.Berikan pemeriksaan dokter hewan secara teratur.', 'anjingkembung.jpg', NULL, NULL, 'health', 'dog'),
(22, 'Pentingnya Pencegahan Kutu dan Caplak pada Hewan Peliharaan', '   Hewan peliharaan Anda seperti keluarga, jadi Anda ingin memberi mereka perawatan terbaik, yang berarti menjaga mereka bebas dari hama. Hama yang paling mengganggu bagi hewan peliharaan adalah kutu dan caplak. Berikut adalah 10 alasan mengapa Anda harus menggunakan pencegahan kutu dan caplak untuk hewan peliharaan Anda.\r\n\r\nDermatitis adalah kondisi kulit yang menyebabkan rasa gatal dan tidak nyaman pada hewan peliharaan Anda. Efek samping dari dermatitis meliputi:\r\n1.Kerontokan bulu atau rambut\r\n2.Infeksi kulit\r\n3.Stres pada hewan peliharaan Anda\r\n\r\n   Kutu yang terinfeksi dapat menularkan penyakit yang ditularkan melalui kutu ke hewan peliharaan Anda, seperti Demam Rocky Mountain dan penyakit Lymes. Ini adalah penyakit serius yang mungkin memerlukan perawatan jangka panjang.Jika kucing atau anjing Anda menelan kutu, bisa jadi ia terinfeksi cacing pita. Cacing ini masuk ke dalam sistem pencernaan dan menempel pada lapisan usus. Anda mungkin melihat potongan cacing pita di sekitar pantat anjing Anda atau di kotorannya saat ia buang air besar.\r\n\r\nKutu berkembang biak dengan cepat. Jika kucing atau anjing Anda sering digigit kutu, mereka dapat mengalami anemia. Ini adalah penyakit serius yang perlu diobati oleh dokter hewan. Gejala anemia meliputi:\r\n1.Pernapasan cepat\r\n2.Kelemahan\r\n3.Kelesuan\r\n4.Kematian\r\n\r\nBartonellosis adalah infeksi yang terkait dengan kutu. Gejalanya meliputi:\r\n1.Mual\r\n2.Demam\r\n3.Detak panas tidak teratur\r\n4.Kehilangan selera makan\r\n5.Nyeri sendi\r\n6.Muntah\r\n7.Diare\r\n8.Kebingungan\r\n\r\nJika hewan peliharaan Anda memiliki kutu dan caplak, ada kemungkinan besar Anda akan mendapatkannya di dalam rumah. Begitu hama ini bertelur di karpet atau furnitur Anda, Anda akan segera diserang kutu dan caplak. Sayangnya, satu pengobatan terhadap kutu dan caplak biasanya tidak cukup karena siklus penetasan telur.', 'anjingkutu.jpeg', NULL, NULL, 'cleaning', 'dog'),
(23, 'Kucing Mengiler: Apa Itu dan Mengapa Mereka Melakukannya', '   Kucing yang mengeluarkan air liur merupakan fenomena umum yang dapat disebabkan oleh berbagai faktor, mulai dari kondisi medis hingga kondisi emosional. Untuk mendiagnosis dan mengobati kondisi tersebut dengan tepat, penting untuk memahami apa itu, mengapa kucing melakukannya, dan bagaimana cara mencegahnya. Dalam artikel ini, kita akan membahas definisi kucing mengeluarkan air liur, penyebabnya, cara mengidentifikasinya, dan cara mengobatinya.Kucing yang mengeluarkan air liur merupakan perilaku umum yang ditunjukkan oleh kucing dan biasanya disebabkan oleh kegembiraan atau antisipasi terhadap sesuatu, seperti camilan atau makanan. Hal ini juga bisa menjadi tanda rasa sakit atau penyakit, jadi penting untuk membawa kucing Anda ke dokter hewan jika ia mengeluarkan air liur secara berlebihan.\r\n\r\n   Bila kucing mengeluarkan air liur, itu pertanda produksi air liur berlebihan. Hal ini biasanya disebabkan oleh kucing yang terlalu bersemangat, merasa mual, atau memiliki masalah kesehatan mulut. Air liur bisa bening, putih, atau kuning dan mungkin ada gelembung air liur. Jika kucing mengeluarkan air liur berlebihan, penting untuk menghubungi dokter hewan untuk mencari tahu penyebab yang mendasarinya.\r\n\r\n   Kucing yang mengeluarkan air liur dapat disebabkan oleh berbagai hal, termasuk kegembiraan, kepuasan, mual, masalah gigi, kelelahan karena panas, dan penyakit atau infeksi. Saat kucing bersemangat, mereka mungkin mengeluarkan air liur karena mengantisipasi sesuatu yang mereka nanti-nantikan, seperti camilan atau sesi belaian.Kucing juga bisa meneteskan air liur saat mereka merasa senang, seperti saat mereka dibelai atau saat mereka tidur. Mual juga dapat menyebabkan kucing meneteskan air liur sebagai tanda ketidaknyamanan. Masalah gigi, seperti penyakit gusi, dapat menyebabkan kucing mengalami sariawan atau abses di mulut yang menyakitkan, yang menyebabkan mereka meneteskan air liur.Kelelahan karena panas adalah penyebab umum lain dari ngiler pada kucing, karena tubuh mereka menjadi terlalu panas dan tidak dapat mengatur suhu tubuh mereka. Terakhir, penyakit atau infeksi tertentu juga dapat menyebabkan kucing ngiler, seperti rabies , leukemia kucing , atau distemper.\r\n\r\nBerbagai kondisi medis dapat menyebabkan kucing mengeluarkan air liur, termasuk:\r\n1.Konsumsi zat beracun\r\n2.Infeksi\r\n3.Iritasi oral\r\n4.Gangguan neurologis\r\n5.Masalah gigi\r\n6.Gagal ginjal atau hati\r\n7.Pitam panas\r\n8.Reaksi alergi\r\n9.mabuk perjalanan\r\n10.Nyeri\r\nJika kucing Anda mengeluarkan air liur dan bukan karena makan sesuatu yang lezat, penting untuk membawanya ke dokter hewan untuk pemeriksaan dan diagnosis guna memastikan kesehatan dan kesejahteraan hewan peliharaan Anda.', 'kucingMengiler.jpg', NULL, NULL, 'health', 'cat'),
(24, 'Kucing Saya Berhenti Makan: Apa yang Harus Saya Lakukan?', '   Anak kucing Anda mungkin masih mengembangkan indera perasa dan mempelajari apa yang mereka suka makan. Anak kucing mungkin sulit untuk beralih ke makanan padat, dan solusinya bisa jadi dengan mengganti satu merek makanan kucing ke merek lain atau bahkan mengubah bentuk kibble agar lebih menarik bagi mereka untuk makan.Selera makan kucing sangat terkait dengan indra penciumannya, jadi semakin mereka menyukai aroma makanan, semakin besar kemungkinan mereka akan memakannya. Anda harus memastikan bahwa makanan basah yang Anda berikan kepada anak kucing Anda bersuhu ruangan. Menghangatkan makanan basah akan membuatnya lebih menarik bagi kucing.\r\n\r\n   Apa saja kemungkinan alasan mengapa kucing dewasa Anda tidak mau makan? Jika kucing dewasa Anda tidak mau makan (lihat video), Anda mungkin perlu membawa kucing Anda ke dokter hewan. Setiap perubahan yang terjadi harus dilaporkan ke dokter hewan untuk penyelidikan lebih lanjut. Berikut ini adalah beberapa alasan umum mengapa kucing Anda tidak mau makan:\r\nKesulitan bernapas dengan jelas dapat menyebabkan kucing Anda tidak mau makan. Hal ini juga dapat menyumbat hidung dan mata kucing Anda dengan kotoran, dan akibatnya adalah hilangnya atau terbatasnya kemampuan melihat atau mencium.  \r\nHilangnya indra penciuman dapat menyebabkan kucing tidak ingin makan. Gejala yang paling umum dialami kucing adalah bersin, suara pernapasan meningkat, dan hidung tersumbat.\r\nKucing dapat mengalami karang gigi atau radang gusi , yang dapat menimbulkan rasa sakit dan menyebabkan kucing Anda menolak makan. Tanda-tanda yang perlu diwaspadai meliputi napas berbau tidak sedap, air liur menetes, dan pendarahan dari mulut.\r\nKucing yang mual sering kali tampak ingin makan, tetapi kemudian menolak makan dan mungkin mengeluarkan air liur atau sering menjilati bibirnya. Masalah pencernaan lainnya termasuk sembelit, penyakit radang usus, atau pankreatitis.\r\nGagal jantung kongestif sering kali dapat membuat kucing Anda lelah dan tidak bersemangat untuk makan. Obat-obatan yang diresepkan untuk penyakit jantung dapat mengurangi nafsu makan kucing Anda.\r\nHal ini dapat menyebabkan rasa mual pada kucing. Rasa mual ini bahkan dapat menyebabkan penurunan berat badan dan memburuknya kesehatan mereka secara keseluruhan.', 'kucingBerhentiMakan.png', NULL, NULL, 'health', 'cat'),
(25, 'Cara Ampuh Membasmi Kutu Anjing dengan Tuntas', '   Memandikan anjing kesayangan pet parents secara teratur menggunakan sampo anti kutu dapat mengurangi kutu yang terdapat pada anjing anda. Pastikan Anda memilih sabun atau sampo antikutu yang memang diformulasikan untuk anjing. Biarkan sampo melekat di bulu anjing selama paling tidak 10 menit sebelum membilasnya dengan air hangat. Sampo antikutu biasanya mengandung piretrin, sejenis bahan kimia yang dapat membasmi kutu.Bila sudah dimandikan, untuk pencegahan selanjutnya bisa dengan kalung anti kutu untuk anjing. Kalung direkatkan di lehernya, penggunaan kalung anti kutu yang mengandung amitraz dapat digunakan sebagai membunuh kutu dan pencegahan infestasi ulang  kutu hingga 3 bulan.Pemberian obat anti kutu pada anjing setiap satu bulan sekali merupakan salah satu pilihan yang paling efektif dan paling banyak digunakan untuk mencegah serangan kutu pada anjing. konsultasikan kondisi anjing anda kepada dokter hewan sebelum memberikan obat anti kutu.\r\n\r\n   Kutu anjing bisa dari lingkungannya, apalagi kalau ia di lingkungan outdoor. Kalau anjing berada di outdoor, sebaiknya ia diberi kalung anti kutu. Selain itu pet parents harus membersihkan lingkungan dari kutu beserta telur-telurnya agar tidak lagi hinggap di badan anjing. Salah satunya menggunakan spray anti kutu, diberikan ke seluruh bagian di rumah yang memungkinkan perkembangbiakan kutu.\r\nPerlu waktu dan kesabaran untuk membasmi kutu anjing, tapi jangan khawatir pet parents. Selalu ada solusi setiap permasalahan, rawat ia dengan kasih sayang, maka pet parents tak lagi merasa kesusahan.', 'anjingmembasmi.jpg', NULL, NULL, 'cleaning', 'dog'),
(26, 'Panduan Mudah Membersihkan Kotoran Telinga Kucing', 'Merawat kebersihan kucing bukan sebatas rutin dimandikan, tapi kita juga perlu membersihkan kotoran telinga kucing. Sama halnya dengan manusia, secara rutin kita juga membersihkan telinga kita dari kotoran, kan? Telinga kucing juga mudah kotor.Apalagi jika ia sedang terkena kutu, kutu suka di tempat yang lembab, salah satunya adalah telinga. Kutu bisa membuang kotorannya di telinga kucing, kalau sudah begini, harus lebih ekstra dan rutin lagi dalam membersihkan kotoran telinga kucing.\r\n\r\n   Bagi pet parents yang masih kebingungan bagaimana caranya membersihkan kotoran telinga kucing, simak panduan mudah di bawah ini:\r\nSiapkan cairan pembersih telingan khusus hewan, kapas atau tisu dan cutton bud. Untuk cairan pembersih telinga kucing bisa pet parents dapatkan di Pet Shop Indonesia.  Salah satunya adalah Oxyfresh Pet Ear Cleaner, sedangkan untuk kapas, tisu dan cutton budnya bisa yang pet parents  gunakan sehari-hari.\r\n1.Tetesi saluran telinga dengan cairan pembersih. Cairan pembersih telinga selain bisa dibeli pet shop juga bisa di dokter hewan yang menyediakan.\r\n2.Pijat-pijat dengan lembut bagian dasar telinga agar cairan pembersih dapat menyebar dengan rata ke seluruh bagian telinga.\r\n3.Biarkan kucing menggeleng-gelengkan kepala agar sisa cairan pembersih dan kotoran dapat keluar.\r\n4.Bersihkan sisa-sisa cairan pembersih dan kotoran yang terdapat di telinga bagian luar dengan kapas atau tisu. Bersihkan celah/lekukan yang terdapat pada telinga dengan menggunakan cotton bud. Hati-hati saat membersihkan lubang/saluran telinga. Bila ragu-ragu atau takut menyebabkan luka pada telinga kucing, sebaiknya  bawa kucing anda ke dokter hewan. Perhatikan atau  tanyakan cara membersihkan telinga kucing yang baik dan aman  pada dokter hewan tersebut.\r\n5.Tindakan pembersihan telinga diulang hingga semua kotoran telah keluar. Pada saat awal, setidaknya telinga perlu dibersihkan setiap hari selama beberapa hari berturut-turut agar semua kotoran yang terdapat dalam telinga bisa keluar.\r\n\r\nBersihkan telinga secara rutin seperti yang dianjurkan . Dalam keadaan normal telinga kucing biasanya dibersihkan 2-4 minggu sekali atau bila terlihat ada kotoran. Telinga bersih, tentu kucing akan merasa lebih nyaman dan terhindar dari penyakit lainnya.', 'kucingtelinga.jpg', NULL, NULL, 'cleaning', 'cat');
INSERT INTO `blogs` (`id`, `title`, `content`, `image_url`, `created_at`, `updated_at`, `category`, `animal`) VALUES
(27, 'Tips Mengatasi Kerontokan pada Bulu Kucing', '   Kerontokan yang terjadi pada kucing memang kerap kali terjadi dan itu adalah hal yang wajar. Tetapi jika terjadi kerontokan yang berlebihan terhadap bulu kucing itu berarti pet parents harus mewaspadainnya. Apalagi jika pet parents mempunyai kucing yang berbulu panjang dan lebat bisa jadi akan sangat menjengkelkan.Karena semakin tebal dan panjang bulunya, semakin besar juga kemungkinan terjadi kerontokan pada kucing tersebut. Bila hal ini dibiarkan begitu saja, maka kucing pet parents akan mengalami kebotakan dan tentu saja bisa menghilangkan kecantikannya. Tidak sedikit pula pet parents yang berkonsultasi masalah ini ke Pet Shop Indonesia. Berikut beberapa tips untuk mengatasi kerontokan pada kucing pet parents.\r\n\r\n   Ada beberapa kerontokan yang diakibatkan karena kesehatan pada kucing tersebut. Misalnya pada kucing yang tidak sehat akan sangat mudah mengalami kerontokan. Kucing yang tidak sehat juga pasti memiliki banyak kutu dan parasit yang menempel ditubuhnya. Kutu dan parasti itulah yang menyebabkan kerontokan pada bulu kucing. Untuk itu pet parents diharuskan agar selalu periksa kesehatan kucing pet parents secara berkala. Dan jangan lupa untuk selalu memandikan kucing pet parents secara teratur dan bersih tentunya.\r\n\r\nMakanan juga merupakan faktor penting dalam merawat kucing. Salah memberikan jenis makanan ke kucing pet parents dapat menyebabkan hal yang tidak inginkan. Seperti contohnya muntah, pupnya menjadi encer dan kerontokan pada bulu kucing.\r\n\r\nJika pet parents sudah merasa ada hal yang aneh terhadap kucing pet parents sewaktu memberikan makanan. Segeralah untuk mengganti jenis makanan untuk kucing pet parents. Semakin lama lini dibiarkan dapat mengakibatkan kerontokan yang parah dan mungkin bisa menyebabkan kebotakan pada kucing.\r\n\r\nLakukan test dengan mengganti berbagai jenis makanan yang cocok untuk kucing pet parents atau jika pet parents tidak mau repot belilah makanan khusus untuk kucing rontok. Lihat takaran gizinya, tidak boleh kurang atau berlebihan. Sesuaikan pemberian makanan, porsi dan kegunaan. Misal jenis kucing pet parents adalah kitten maka berilah makanan untuk kitten.\r\nPerawatan yang tepat pada kucing tentu dapat menghasilkan kucing yang sehat, begitu pula sebaliknya. Kucing yang sehat tentu mempunyai bulu yang bagus dan lebat. Maka sebaiknya rawatlah kucing pet parents sebaik mungkin secara teratur. Sisirlah dengan sisir khusus untuk kucing yang lembut sehabis memandikan kucing pet parents. Hindari penggunaan shampoo berlebihan yang dapat menyebabkan kerontokan pada kucing pet parents.\r\n\r\nVitamin bisa didapatkan di petshop kesayangan pet parents dan memiliki manfaat untuk merawat bulu kucing agar tetap sehat dan berkilau. Cara penggunaannya pun tak begitu sulit, pet parents dapat mensiasatinya dengan mencampurkan vitamin ke dalam makanannya. Hal ini salah satu alternatif yang cukup ampuh agar kucing mau mengkonsumsinya dan cara cepat agar kucing pet parents tidak mengalami kerontokan lagi.', 'kucingbulu.png', NULL, NULL, 'cleaning', 'cat'),
(28, 'Kenali Jenis-Jenis Pasir Kucing, Harga Pasir Kucing, dan Tips Memilih Pasir Kucing yang Bagus untuk Peliharaan Kamu', 'Harga Pasir Kucing Wangi – Pernahkah kamu mendengar soal jenis pasir kucing wangi?\r\n\r\nApakah hanya pasir kucing wangi saja yang bisa digunakan untuk kebutuhan poop dan pee kucing?\r\n\r\nSudah pahamkah kamu tentang jenis-jenis pasir kucing?\r\n\r\nKalau kamu sedang memikirkan jawaban dari pertanyaan pertanyaan di atas atau sedang bingung mencari referensi dan informasi seputar dunia kucing, Arthacat adalah teman baru yang tepat untukmu karena Arthacat menyediakan beragam informasi seputar dunia kucing serta produk dan aksesoris yang tepat untuk kucing kesayanganmu.\r\n\r\nJangan anggap sepele soal pasir kucing apalagi jika kucingmu termasuk jenis kucing indoor atau lebih sering beraktivitas di dalam ruangan. Hal ini akan banyak berpengaruh pada kesehatan dan kenyamanan kucing serta lingkungan rumahmu. Pemilihan jenis pasir kucing yang tepat akan mempermudah kamu dalam mengurus kebersihan kucing dan rumah sehingga memelihara kucing dalam rumah tetap terasa nyaman dan menyenangkan.\r\n\r\npembelian secara online melalui platform belanja online favoritmu, baik itu lewat marketplace, media sosial ataupun website resmi yang menjual perlengkapan dan aksesoris hewan peliharaan.\r\n\r\nHarga pasir kucing satu dengan yang lainnya pun cukup beragam, bergantung pada kuantitas dan kualitas dari jenis pasir kucing tersebut. Namun tidak bisa disimpulkan bahwa pasir kucing yang bagus memiliki harga yang tinggi. Karena kini sudah banyak merek pasir kucing dengan harga yang terjangkau menawarkan kualitas yang prima.\r\n\r\nPasir zeolit merupakan jenis pasir kucing yang cukup populer karena mudah ditemukan hampir di semua pet shop. Harga pasir kucing zeolit paling murah diantara jenis pasir kucing lainnya, membuat jenis pasir kucing ini menjadi pilihan favorit bagi mereka yang menyukai pilihan hemat dan ekonomis.\r\n\r\nPada umumnya, pasir zeolit tersedia dalam beberapa pilihan ukuran yang biasanya menggunakan satuan milimeter, mulai dari 1 milimeter, 2 milimeter, 3 milimeter hingga ukuran terbesar sekitar 5 milimeter.\r\n\r\nKelebihan dari jenis pasir kucing zeolit selain harganya yang murah adalah dapat dicuci dan didaur ulang. Kelemahannya, jenis pasir kucing zeolit bukan termasuk jenis pasir kucing wangi dan tidak dapat menyerap urin atau air seni kucing dengan maksimal karena pasir ini tidak dilengkapi dengan daya serap air sehingga kemungkinan pengguna pasir kucing zeolit akan menemukan genangan air di bagian bawah litter box. Hal ini membuat litter box akan menebarkan bau kurang sedap bila tidak segera dibersihkan.\r\n\r\nJenis pasir kucing zeolit adalah pasir kucing yang bagus untuk kamu yang memiliki preferensi harga yang ekonomis, telaten membersihkan perlengkapan kucing termasuk litter box secara teratur dan memiliki kucing dalam jumlah yang sedikit.', 'kucingpasir.jpg', NULL, NULL, 'cleaning', 'cat'),
(29, 'Mengapa Anjing Saya Minum Banyak Air?', 'Agar anjing tetap sehat, mereka harus selalu mendapatkan air bersih. Namun, bagaimana jika Anda melihat anjing Anda minum banyak air? Apa yang menyebabkan anjing minum banyak air? Dan berapa banyak yang dianggap terlalu banyak? Mudah untuk mengabaikan anjing yang minum terlalu banyak, tetapi penting untuk memantau asupan air anjing Anda untuk memastikan ia sehat. Memahami apa yang dimaksud dengan rasa haus yang berlebihan adalah kunci untuk mengetahui kapan harus mencari perhatian dokter hewan untuk peningkatan konsumsi air.\r\n\r\nAturan praktis yang baik adalah bahwa seekor anjing membutuhkan sekitar satu ons air per pon berat badan per hari. Dengan kata lain, anjing seberat 10 pon akan membutuhkan 10 ons, anjing seberat 20 pon akan membutuhkan 20 ons, dan seterusnya. Kebutuhan ini bervariasi, tergantung pada tahap kehidupan, tingkat aktivitas, iklim, dan pola makan anjing Anda. Anjing yang sangat aktif, anjing menyusui, anak anjing, dan anjing yang hidup di iklim hangat akan membutuhkan lebih banyak air daripada anjing lain. Anjing yang makan makanan kaleng akan membutuhkan lebih sedikit air karena makanannya mengandung air. Meskipun satu ons per pon adalah pedoman umum, anjing harus diizinkan minum air sebanyak yang mereka inginkan, kecuali dokter hewan Anda menyarankan sebaliknya. Anjing harus diizinkan mengakses air gratis setiap saat, bahkan di malam hari, karena kekurangan air dapat menyebabkan dehidrasi, yang menyebabkan masalah yang lebih serius, termasuk ketidakseimbangan elektrolit dan kerusakan ginjal.\r\n\r\nReed Animal Hospital menyarankan untuk menyediakan sumber air bersih secara terus-menerus, dan menghubungi dokter hewan Anda jika ada kekhawatiran tentang konsumsi air anjing Anda.\r\n\r\nAnjing yang minum banyak air mungkin melakukannya karena berbagai alasan. Misalnya, anak anjing minum banyak air karena ginjalnya belum berkembang sepenuhnya dan tidak dapat mengonsentrasikan urin dengan baik. Selain itu, anak anjing sangat aktif. Anjing yang lebih tua, meskipun tidak terlalu aktif, sering kali minum lebih banyak karena masalah kognitif atau medis. Mengapa anjing minum banyak air? Mari kita lihat beberapa alasan lain untuk peningkatan konsumsi air:\r\n1.Faktor Cuaca dan Lingkungan : Anjing yang tinggal di iklim panas lebih mungkin mengalami dehidrasi. Mereka cenderung lebih haus dan membutuhkan lebih banyak air untuk tetap terhidrasi dengan baik.\r\n2.Perubahan Pola Makan dan Makanan : Anjing yang memakan makanan basah atau pola makan dengan kandungan cairan tinggi akan membutuhkan lebih sedikit air daripada anjing yang hanya memakan makanan kering. Mengganti makanan basah dengan makanan kering dapat membuat anjing minum banyak air.\r\n3.Peningkatan Aktivitas Fisik : Semakin banyak anjing berolahraga, semakin banyak air yang dibutuhkannya untuk tetap aktif.\r\n4.Obat-obatan : Obat-obatan tertentu, termasuk diuretik, obat anti kejang, dan kortikosteroid, dapat menyebabkan anjing minum lebih banyak air dan buang air kecil.\r\n5.Kondisi Medis dan Penyakit : Terkadang, peningkatan rasa haus disebabkan oleh ketidakseimbangan elektrolit atau dehidrasi. Hal ini dapat disebabkan oleh berbagai hal, seperti makanan bersodium tinggi, panas yang berlebihan, atau penyakit. Jika anjing Anda mengalami muntah, diare, lesu, lemah, atau masalah neurologis, ketidakseimbangan elektrolit mungkin menjadi penyebabnya. Gusi lengket (kering dan lengket), air liur kental, gusi merah cerah, dan terengah-engah berlebihan merupakan tanda-tanda Jika Anda melihat salah satu dari gejala ini, carilah perawatan dokter hewan.\r\n\r\nMinum banyak bukanlah masalah tersendiri, tetapi apa saja tanda-tanda yang harus membuat Anda khawatir tentang konsumsi air anjing Anda? Terkadang, sulit untuk memperhatikan pola minum yang tidak normal, terutama jika Anda memiliki lebih dari satu anjing. Jika Anda kesulitan memantau seberapa banyak air yang diminum anjing Anda, ada mangkuk air yang dapat membantu, termasuk beberapa yang menggunakan teknologi microchip untuk mengidentifikasi anjing mana yang minum air. Jika anjing Anda memiliki gejala tambahan, seperti muntah, diare, lesu, nafsu makan menurun, terengah-engah, gangguan pernapasan, lemas, pingsan, darah dalam urin, mengejan saat buang air kecil, atau malaise umum, segera periksakan hewan peliharaan Anda secepat mungkin. Jika perlu, cari bantuan dokter hewan darurat.', 'anjingminum.jpg', NULL, NULL, 'food', 'dog'),
(30, 'Makanan Thanksgiving yang BOLEH Dimakan Hewan Peliharaan', 'Thanksgiving sudah di depan mata, dan jika Anda pemilik hewan peliharaan, kami tahu Anda bersyukur atas sahabat-sahabat kecil berbulu itu. Saat wajah-wajah kecil yang manis itu menatap Anda saat Anda sedang menyiapkan pesta Thanksgiving, mungkin sulit untuk menolak berbagi makanan. Untungnya, ada beberapa makanan lezat yang dapat Anda berikan dengan aman--dengan jumlah sedang--dengan hewan peliharaan Anda selama mereka tidak memiliki alergi atau memiliki pantangan makanan.\r\n\r\nDada kalkun adalah pilihan yang lezat, asalkan hewan peliharaan Anda tidak alergi. Berhati-hatilah untuk hanya berbagi dada kalkun dalam jumlah yang sangat sedikit, berhati-hatilah untuk membuang kulit atau sisa lemak seperti kuahnya. Makanan berlemak dapat membebani pankreas hewan dan mengakibatkan kondisi yang mengancam jiwa yang disebut pankreatitis. Beberapa ras anjing, seperti Miniature Schnauzer, Yorkshire Terrier, dan Shetland Sheepdog, sangat rentan terhadap pankreatitis, jadi mereka tidak boleh diberi camilan daging. Teliti ras anjing Anda sendiri sebelum berbagi sisa kalkun, untuk memastikan itu tidak berbahaya. Dan apa pun jenis hewan peliharaan Anda, jauhkan tulang kalkun dan tali apa pun yang melilit kalkun dari jangkauannya.\r\n\r\nKebanyakan sayuran merupakan camilan sehat untuk anjing. Brokoli, kembang kol, wortel, seledri, kacang hijau, dan ubi jalar merupakan camilan yang baik, asalkan tidak diolah dengan bahan tambahan berlemak atau pemanis buatan.\r\n\r\nRoti merupakan camilan yang aman untuk anjing setelah dipanggang. Sebaliknya, adonan roti tidak boleh dimakan, karena campuran ragi dan gula dapat menyebabkan kondisi kesehatan yang berbahaya bagi anjing.\r\n\r\nBeberapa makanan pembuka Anda mungkin cocok untuk hewan peliharaan. Jika Anda menyajikan salmon asap, Anda dapat membaginya sedikit dengan hewan peliharaan Anda. Hal yang sama berlaku untuk potongan kecil keju dari piring keju Anda.\r\nIsian kalkun baik-baik saja, asalkan tidak mengandung bahan-bahan berbahaya. Bahan-bahan dalam isian yang dapat menyebabkan masalah bagi anjing adalah bawang, kismis, dan kismis hitam.\r\nSekarang setelah Anda tahu apa yang aman untuk dibagikan dengan anggota keluarga berbulu Anda, mari kita bahas beberapa hal yang harus dihindari. Jangan berbagi makanan penutup dan permen dengan kucing dan anjing atau membiarkan mereka menikmati makanan berlemak. Berhati-hatilah saat anjing Anda masuk ke tempat sampah dan memakan tanaman hias, yang dapat membahayakan hewan. Pastikan hewan peliharaan yang penakut tidak kewalahan dengan orang baru; Anda tidak ingin hewan peliharaan lari terbirit-birit.\r\n\r\nBahkan selama liburan, Anda dapat mempercayai Reed Animal Hospital untuk merawat hewan peliharaan Anda seperti hewan peliharaan kami sendiri. Tujuan kami adalah membantu Anda dan hewan peliharaan Anda menikmati hidup yang sehat dan memuaskan bersama, dan untuk mencapai tujuan tersebut, tim kami yang luar biasa menawarkan berbagai layanan. Kami memiliki dokter hewan, teknisi, asisten, dan resepsionis, yang semuanya siap membantu Anda dan hewan peliharaan Anda, dan kami bahkan menawarkan rujukan ke dokter bedah spesialis, yang banyak di antaranya akan datang ke kantor kami untuk berkonsultasi dengan hewan peliharaan Anda.', 'kucingThanksgiving.jpg', NULL, NULL, 'food', 'cat'),
(31, 'Makanan Thanksgiving yang BOLEH Dimakan Hewan Peliharaan', 'Thanksgiving sudah di depan mata, dan jika Anda pemilik hewan peliharaan, kami tahu Anda bersyukur atas sahabat-sahabat kecil berbulu itu. Saat wajah-wajah kecil yang manis itu menatap Anda saat Anda sedang menyiapkan pesta Thanksgiving, mungkin sulit untuk menolak berbagi makanan. Untungnya, ada beberapa makanan lezat yang dapat Anda berikan dengan aman--dengan jumlah sedang--dengan hewan peliharaan Anda selama mereka tidak memiliki alergi atau memiliki pantangan makanan.\r\n\r\nDada kalkun adalah pilihan yang lezat, asalkan hewan peliharaan Anda tidak alergi. Berhati-hatilah untuk hanya berbagi dada kalkun dalam jumlah yang sangat sedikit, berhati-hatilah untuk membuang kulit atau sisa lemak seperti kuahnya. Makanan berlemak dapat membebani pankreas hewan dan mengakibatkan kondisi yang mengancam jiwa yang disebut pankreatitis. Beberapa ras anjing, seperti Miniature Schnauzer, Yorkshire Terrier, dan Shetland Sheepdog, sangat rentan terhadap pankreatitis, jadi mereka tidak boleh diberi camilan daging. Teliti ras anjing Anda sendiri sebelum berbagi sisa kalkun, untuk memastikan itu tidak berbahaya. Dan apa pun jenis hewan peliharaan Anda, jauhkan tulang kalkun dan tali apa pun yang melilit kalkun dari jangkauannya.\r\n\r\nKebanyakan sayuran merupakan camilan sehat untuk anjing. Brokoli, kembang kol, wortel, seledri, kacang hijau, dan ubi jalar merupakan camilan yang baik, asalkan tidak diolah dengan bahan tambahan berlemak atau pemanis buatan.\r\n\r\nRoti merupakan camilan yang aman untuk anjing setelah dipanggang. Sebaliknya, adonan roti tidak boleh dimakan, karena campuran ragi dan gula dapat menyebabkan kondisi kesehatan yang berbahaya bagi anjing.\r\n\r\nBeberapa makanan pembuka Anda mungkin cocok untuk hewan peliharaan. Jika Anda menyajikan salmon asap, Anda dapat membaginya sedikit dengan hewan peliharaan Anda. Hal yang sama berlaku untuk potongan kecil keju dari piring keju Anda.\r\nIsian kalkun baik-baik saja, asalkan tidak mengandung bahan-bahan berbahaya. Bahan-bahan dalam isian yang dapat menyebabkan masalah bagi anjing adalah bawang, kismis, dan kismis hitam.\r\nSekarang setelah Anda tahu apa yang aman untuk dibagikan dengan anggota keluarga berbulu Anda, mari kita bahas beberapa hal yang harus dihindari. Jangan berbagi makanan penutup dan permen dengan kucing dan anjing atau membiarkan mereka menikmati makanan berlemak. Berhati-hatilah saat anjing Anda masuk ke tempat sampah dan memakan tanaman hias, yang dapat membahayakan hewan. Pastikan hewan peliharaan yang penakut tidak kewalahan dengan orang baru; Anda tidak ingin hewan peliharaan lari terbirit-birit.\r\n\r\nBahkan selama liburan, Anda dapat mempercayai Reed Animal Hospital untuk merawat hewan peliharaan Anda seperti hewan peliharaan kami sendiri. Tujuan kami adalah membantu Anda dan hewan peliharaan Anda menikmati hidup yang sehat dan memuaskan bersama, dan untuk mencapai tujuan tersebut, tim kami yang luar biasa menawarkan berbagai layanan. Kami memiliki dokter hewan, teknisi, asisten, dan resepsionis, yang semuanya siap membantu Anda dan hewan peliharaan Anda, dan kami bahkan menawarkan rujukan ke dokter bedah spesialis, yang banyak di antaranya akan datang ke kantor kami untuk berkonsultasi dengan hewan peliharaan Anda.', 'anjingThanksgiving.jpg', NULL, NULL, 'food', 'dog'),
(32, '12 Makanan Ringan yang Ternyata Berbahaya bagi Anjing', 'Hal ini tidak pernah gagal. Anda mulai memakan makanan lezat, dan mata anjing Anda tiba-tiba tertuju pada Anda, memohon Anda untuk berbagi. Sulit untuk tidak menyerah pada wajah-wajah kecil yang manis itu, tetapi berhati-hatilah saat berbagi makanan manusia dengan hewan peliharaan Anda. Banyak makanan umum, bahan tambahan, dan bumbu yang dapat berbahaya atau bahkan beracun bagi teman-teman berbulu kita. Cara terbaik untuk melindungi kesehatan anjing Anda adalah dengan memperhatikan makanan seperti yang ada dalam daftar ini.\r\n\r\n1.Selai Kacang dengan Xylitol : Anjing menyukai selai kacang dan biasanya aman bagi mereka, tetapi periksa labelnya. Xylitol adalah pemanis buatan yang umum, dan sangat beracun bagi anjing. Jika Anda akan memberikan selai kacang kepada anjing Anda, pilih merek tanpa pemanis tambahan.\r\n2.Anggur dan Kismis : Bahkan sejumlah kecil anggur atau kismis dapat menyebabkan gagal ginjal pada anjing. Tanda-tanda awal termasuk muntah, lesu, dan depresi.\r\n3.Bawang merah dan bawang putih : Tidak masalah dalam bentuk apa pun; digiling, dikeringkan, dimasak atau mentah, semuanya berbahaya bagi anjing Anda. Bawang merah dan bawang putih dapat membunuh sel darah merah yang menyebabkan anemia. Dalam jumlah besar, bawang merah dan bawang putih dapat menjadi racun.\r\n4.Sayap Ayam : Tulang yang dimasak dapat pecah dan menyebabkan kerusakan internal. Meskipun Anda memakan sayap ayam tanpa tulang, jangan berikan pada anjing Anda. Makanan yang digoreng tidak baik untuk anjing dan bumbunya sering mengandung bawang merah atau bawang putih, yang tidak boleh dimakan anjing.\r\n5.Bacon : Tidak ada salahnya menggigit bacon sesekali, tetapi batasi hanya untuk camilan sesekali. Anjing tidak dapat mencerna lemak semudah manusia, jadi jangan biarkan anjing menjilati lemak dari piring.\r\n6.Yogurt Manis : Jika Anda ingin memberikan yogurt pada anjing Anda, pilihlah yogurt yang tawar dan tanpa pemanis.\r\n7.Cokelat : Bahkan camilan yang dilapisi cokelat tipis pun bisa berakibat fatal bagi anjing. Jauhkan semua cokelat, termasuk kacang berlapis cokelat, pretzel, dan permen dari jangkauan anjing Anda. Bahkan, hindari makanan apa pun yang mengandung cokelat, kakao, mentega kakao, atau kakao.\r\n8.Acar : Mentimun segar baik untuk anjing, tetapi acar mengandung kadar natrium dan rempah-rempah yang tinggi seperti bawang merah dan bawang putih, yang beracun bagi anjing. Cuka juga bisa membuat perut anjing sakit.\r\n9.Permen Licorice Hitam : Anjing tidak boleh makan permen, dan permen licorice hitam berbahaya. Permen ini dapat meningkatkan tekanan darah anjing Anda dan menyebabkan kelemahan otot serta muntah-muntah.\r\n10.Kacang-kacangan : Kacang-kacangan tidak memiliki nilai gizi yang baik untuk anjing Anda, dan beberapa kacang bisa beracun. Berhati-hatilah saat berjalan-jalan, dan jangan biarkan anjing Anda memakan kacang pohon yang jatuh. Kacang-kacangan ini bisa berjamur dan sangat berbahaya.\r\n11.Keripik & Saus : Makanan ini mengandung banyak sodium dan rempah-rempah berbahaya, sehingga berbahaya bagi anjing.\r\n12.Susu dan Produk Susu Lainnya: Susu dan produk berbahan dasar susu mungkin menggoda untuk diberikan kepada anjing, tetapi dapat menyebabkan diare, masalah pencernaan, dan juga dapat menyebabkan alergi makanan.\r\n\r\nBila Anda berusaha menjaga hewan peliharaan Anda tetap sehat, percayalah pada Reed Animal Hospital . Kami memperlakukan hewan peliharaan Anda seperti hewan peliharaan kami sendiri. Tujuan kami adalah membantu Anda dan hewan peliharaan Anda menikmati hidup yang sehat dan memuaskan bersama. Tim kami yang luar biasa menawarkan berbagai layanan. Kami memiliki dokter hewan, teknisi, asisten, dan resepsionis, yang semuanya terlatih untuk membantu Anda dan hewan peliharaan Anda. Kami bahkan menawarkan rujukan ke dokter bedah spesialis, yang banyak di antaranya datang ke kantor kami untuk konsultasi.', 'anjingringan.jpg', NULL, NULL, 'food', 'dog'),
(33, 'Mengapa Anda Harus Merawat Gigi Hewan Peliharaan Anda', 'Kebersihan mulut yang baik bukan hanya menjadi perhatian manusia. Plak adalah zat berbahaya yang dapat menumpuk pada gigi kucing dan anjing, sehingga pembersihan gigi kucing dan anjing menjadi keharusan bagi kesehatan hewan peliharaan ini secara keseluruhan di San Jose dan sekitarnya. Jika Anda memiliki anjing atau kucing di rumah, pertimbangkan alasan berikut untuk menjaga kesehatan giginya.\r\n\r\nPlak merupakan musuh jaringan gusi yang sehat. Jika plak menumpuk di email gigi, plak dapat menyebabkan peradangan gusi yang meluas yang dapat menyebabkan resesi jaringan dan gigi tidak stabil. Jika tidak menjaga kebersihan mulut secara teratur, kucing atau anjing Anda dapat mengalami kehilangan gigi. Akibat perawatan gigi yang buruk ini dapat sangat menyakitkan bagi hewan peliharaan Anda, jadi bantulah ia menikmati gigi yang sehat seumur hidup. Membersihkan giginya di rumah dengan pasta gigi dan sikat gigi hewan peliharaan merupakan langkah yang penting. Melakukan  pembersihan gigi kucing atau anjing  secara teratur juga dapat mengurangi risiko yang terkait dengan penumpukan plak.\r\n\r\nKehilangan gigi tidak hanya mengubah penampilan hewan peliharaan Anda. Pakar dokter hewan memperingatkan bahwa hal itu dapat berdampak signifikan pada nutrisi dan kesehatannya secara keseluruhan. Jika kucing atau anjing Anda kehilangan gigi, mengunyah makanan bisa menjadi sulit dan tidak nyaman. Akibatnya, hewan peliharaan Anda bisa kehilangan berat badan atau kekurangan gizi karena ia tidak bisa lagi menelan makanan kaya nutrisi yang Anda berikan. Jika Anda merawat giginya, Anda dapat lebih memastikan kesehatannya yang berkelanjutan.\r\n\r\nTidak menggosok gigi selama beberapa jam dapat menyebabkan bau tidak sedap yang kentara, dan hal yang sama dapat terjadi jika Anda mengabaikan kebutuhan perawatan gigi hewan peliharaan Anda . Napas kucing atau anjing seharusnya tidak berbau busuk. Jika gigi hewan peliharaan Anda bersih dan sehat, napasnya akan berbau harum. Mengingat banyak hewan peliharaan suka menunjukkan kasih sayang kepada pemiliknya melalui kontak dekat, menjilati, dan tindakan serupa, memastikan kucing atau anjing Anda memiliki kebersihan mulut yang baik dapat bermanfaat bagi Anda berdua.', 'kucinggigi.jpg', NULL, NULL, 'cleaning', 'cat'),
(34, 'Mengapa Anda Harus Merawat Gigi Hewan Peliharaan Anda', 'Kebersihan mulut yang baik bukan hanya menjadi perhatian manusia. Plak adalah zat berbahaya yang dapat menumpuk pada gigi kucing dan anjing, sehingga pembersihan gigi kucing dan anjing menjadi keharusan bagi kesehatan hewan peliharaan ini secara keseluruhan di San Jose dan sekitarnya. Jika Anda memiliki anjing atau kucing di rumah, pertimbangkan alasan berikut untuk menjaga kesehatan giginya.\r\n\r\nPlak merupakan musuh jaringan gusi yang sehat. Jika plak menumpuk di email gigi, plak dapat menyebabkan peradangan gusi yang meluas yang dapat menyebabkan resesi jaringan dan gigi tidak stabil. Jika tidak menjaga kebersihan mulut secara teratur, kucing atau anjing Anda dapat mengalami kehilangan gigi. Akibat perawatan gigi yang buruk ini dapat sangat menyakitkan bagi hewan peliharaan Anda, jadi bantulah ia menikmati gigi yang sehat seumur hidup. Membersihkan giginya di rumah dengan pasta gigi dan sikat gigi hewan peliharaan merupakan langkah yang penting. Melakukan  pembersihan gigi kucing atau anjing  secara teratur juga dapat mengurangi risiko yang terkait dengan penumpukan plak.\r\n\r\nKehilangan gigi tidak hanya mengubah penampilan hewan peliharaan Anda. Pakar dokter hewan memperingatkan bahwa hal itu dapat berdampak signifikan pada nutrisi dan kesehatannya secara keseluruhan. Jika kucing atau anjing Anda kehilangan gigi, mengunyah makanan bisa menjadi sulit dan tidak nyaman. Akibatnya, hewan peliharaan Anda bisa kehilangan berat badan atau kekurangan gizi karena ia tidak bisa lagi menelan makanan kaya nutrisi yang Anda berikan. Jika Anda merawat giginya, Anda dapat lebih memastikan kesehatannya yang berkelanjutan.\r\n\r\nTidak menggosok gigi selama beberapa jam dapat menyebabkan bau tidak sedap yang kentara, dan hal yang sama dapat terjadi jika Anda mengabaikan kebutuhan perawatan gigi hewan peliharaan Anda . Napas kucing atau anjing seharusnya tidak berbau busuk. Jika gigi hewan peliharaan Anda bersih dan sehat, napasnya akan berbau harum. Mengingat banyak hewan peliharaan suka menunjukkan kasih sayang kepada pemiliknya melalui kontak dekat, menjilati, dan tindakan serupa, memastikan kucing atau anjing Anda memiliki kebersihan mulut yang baik dapat bermanfaat bagi Anda berdua.', 'anjingMerawatGigi.jpeg', NULL, NULL, 'cleaning', 'dog'),
(35, 'Apa Manfaat Pembersihan Gigi Tanpa Anestesi?', 'Perawatan gigi anjing dan kucing merupakan komponen penting dari kesehatan secara keseluruhan, tetapi pemilik hewan peliharaan terkadang merasa cemas tentang prosedur ini karena biasanya dilakukan dengan anestesi. Meskipun anestesi dapat diberikan dengan aman di rumah sakit hewan, anestesi selalu mengandung risiko. Jika Anda khawatir tentang kesehatan gigi hewan peliharaan Anda atau Anda ragu untuk membiarkan mereka menjalani anestesi, bicarakan dengan rumah sakit hewan Anda di Campbell atau Saratoga tentang kemungkinan pembersihan gigi tanpa anestesi. Ada beberapa keuntungan dari jenis perawatan gigi untuk hewan peliharaan ini.\r\n\r\nMenghilangkan risiko anestesi adalah manfaat terbesar dari jenis pembersihan gigi ini. Pembersihan tanpa anestesi sangat membantu bagi hewan peliharaan yang lebih tua yang memiliki risiko komplikasi lebih tinggi akibat anestesi atau hewan peliharaan yang sensitif terhadap anestesi di masa lalu. Pendekatan ini memungkinkan semua hewan peliharaan mendapatkan pembersihan gigi menyeluruh dan menikmati manfaat kesehatan dari gigi dan gusi yang bersih, tanpa rentan terhadap komplikasi anestesi.\r\n\r\nKerugian dari pembersihan gigi dengan anestesi adalah hewan peliharaan memerlukan waktu istirahat yang lama saat anestesi mulai hilang. Selama waktu tersebut, hewan peliharaan Anda mungkin merasa mual dan lesu, dan mereka mungkin memerlukan pengawasan. Jika hewan peliharaan Anda menjalani pembersihan gigi tanpa anestesi, waktu istirahat ini akan hilang. Hewan peliharaan Anda akan segera keluar dari rumah sakit hewan dan siap untuk kembali beraktivitas seperti biasa dan tidak akan merasakan sakit perut dan pusing yang disebabkan oleh anestesi.\r\n\r\nPenggunaan anestesi menimbulkan sejumlah biaya baru dalam proses pembersihan gigi hewan peliharaan. Pembersihan gigi tanpa anestesi jauh lebih terjangkau, jadi Anda tidak perlu khawatir lagi akan membahayakan kesehatan gigi hewan peliharaan Anda .', 'anjingAnestesi.jpg', NULL, NULL, 'cleaning', 'dog'),
(36, 'Memilih Makanan Kucing yang Baik dan Cara Pemberiannya', 'Dalam memelihara kucing, memberikan makanan yang tepat sangat penting untuk diperhatikan. Hal ini tentu bertujuan agar kesehatan hewan peliharaan terjaga. Kucing yang sehat membutuhkan makanan berkualitas tinggi dengan nutrisi seimbang, mulai dari protein, asam lemak esensial, karbohidrat, mineral dan vitamin. Sebelum memilih jenis makanan kucing, penting untuk mempertimbangkan umur, kondisi kesehatan dan kebutuhan nutrisi.\r\n\r\nJenis-Jenis Makanan Kucing\r\nMakanan kucing berdasarkan teksturnya ada tiga jenis yaitu makanan kering, semi basah dan basah. Jenis makanan ini dipengaruhi oleh kandungan kadar air. Makanan kering biasanya mengandung air 6-10%, semi basah mengandung air 35% dan makanan basah mengandung air hingga 80%. Pemilihan jenis makanan kucing yang tepat perlu melihat beberapa faktor, seperti umur, tingkat aktivitas, kondisi kesehatan dan kesukaan kucing. Berikut adalah beberapa jenis makanan kucing yang umum tersedia:\r\n1.Makanan kering (kibbles)\r\nMerupakan salah satu bentuk makanan kucing yang paling umum digunakan. Makanan kering disediakan dalam bentuk kibbles atau pelet kering yang mudah dikonsumsi kucing. Jenis makanan ini praktis dalam pemberian dan penyimpanan, serta tahan lama atau tidak mudah basi. Saat mengunyah kibbles juga dapat membantu membersihkan gigi kucing. Bahan utama makanan ini biasanya berupa daging, ikan atau sumber protein lain yang dicampur dan diolah menjadi butiran kering.\r\n2.Makanan basah\r\nMerupakan makanan kucing dalam kaleng atau kantong yang bertekstur lembap seperti daging. Jenis makanan ini bisa membantu menjaga hidrasi kucing karena kandungan air yang lebih tinggi. Makanan basah mengandung tinggi protein sehingga cocok untuk kucing yang memerlukan protein yang tinggi. Ada banyak varian makanan basah, untuk anak kucing, kucing dewasa serta khusus untuk masalah kesehatan, seperti gangguan ginjal atau pencernaan.\r\n3.Makanan semi basah\r\nMakanan semi basah memiliki tekstur yang setengah lembap. Tekstur ini menjadi pilihan yang menarik bagi banyak kucing yang tidak menyukai tekstur kering atau basah. Kandungan air tersebut tetap bisa membantu dalam menjaga kucing terhidrasi.\r\n\r\n\r\nPemberian Makan Kucing\r\n\r\nSetelah memilih makanan yang tepat untuk kucing, selanjutnya perlu memperhatikan kapan waktu pemberian makan yang teratur dan konsisten serta seberapa banyak jumlahnya. Rutinitas pemberian makan yang teratur akan membantu kucing merasa senang dan nyaman.\r\n\r\n1.Jumlah pemberian\r\nPemberian makan dapat diatur sesuai kebutuhan. Takaran makanan kucing yang tepat akan bervariasi tergantung pada usia, berat badan, aktivitas, dan kesehatan kucing. Sebaiknya hindari memberi makan dalam porsi yang terlalu banyak karena dapat menyebabkan kegemukan dan berisiko terjadi masalah kesehatan pada kucing. Jumlah pemberian makanan dapat mengikuti panduan porsi makan yang tertera di label makanan atau berkonsultasi dengan dokter hewan.\r\n\r\n2.Waktu pemberian\r\nKucing juga membutuhkan jadwal makan yang rutin untuk membentuk kebiasaan. Ketika mulai terbiasa dengan jadwal makan yang dibuat, kucing akan lebih menikmati saat memakannya. Dengan mengikuti jadwal yang rutin, nafsu makan kucing dapat terangsang ketika mendekati waktu makan dan dapat makan dengan lahap.', 'kucingPemberiannya.jpg', NULL, NULL, 'food', 'cat'),
(37, 'Mengolah Makanan Kucing', 'Sebagai hewan karnivora, kucing harus makan daging dan tidak boleh mengonsumsi makanan tidak sehat yang sarat dengan karbohidrat yang tidak dapat dicerna. Memberi makanan yang tidak tepat pada kucing bisa mengakibatkan masalah kesehatan dan pada akhirnya akan mengurangi usia harapan usia harapan hidup kucing.\r\n\r\nSalah satu cara terbaik untuk memberi protein yang diperlukan adalah dengan memasak sendiri makanan untuk kucing. Ini juga dapat dijadikan hiburan yang menyenangkan bagi mereka yang membuatnya. Yang harus catlovers ketahui adalah unsur-unsur penting dalam makanan kucing dan beberapa cara untuk memasaknya agar kucing catlovers mendapatkan nutrisi terbaik.\r\n\r\n\r\nKetahui syarat-syarat yang dibutuhkan dalam makanan kucing\r\n\r\nKucing memerlukan nutrisi yang jauh berbeda dengan manusia, yang harus diperhatikan dan direncanakan dengan cermat agar kebutuhan makanannya terpenuhi. Kucing memerlukan makanan yang banyak mengandung protein dan lemak. Kucing bahkan memerlukan protein sebanyak dua kali lipat dari yang dibutuhkan anjing.\r\n\r\nSekitar 85% makanan kucing yang dibutuhkan oleh kucing harus berbentuk daging, jeroan, lemak, dan tulang. Sedankan 15% sisanya dalam bentuk sayuran, daun-daunan, dan makanan berserat.\r\n\r\nKenali semua bagian dari makanan yang sehat untuk kucing\r\n\r\nBeberapa jenis makanan yang sehat untuk kucing di antaranya:\r\n\r\n1.Air bersih\r\nHarus mudah diakses dan tersedia setiap saat\r\n\r\n2.Protein\r\nKebanyakan kucing tidak mau melahap makanan yang mengandung protein kurang dari 20%\r\n\r\n3.Lemak\r\nKucing memerlukan lemak untuk mendapatkan energi, asam lemak penting, asupan vitamin yang larut dalam lemak, dan rasanya\r\n\r\n4.Vitamin A\r\nKucing membutuhkan vitamin ini dalam dosis yang memadai. Vitamin A ini bisa ditemukan dalam telur, hati, dan susu tetapi harus digunakan secara hati-hati\r\n\r\n5.Vitamin B\r\nKucing memerlukan vitamin B dan akan melahap ragi apabila muncul tanda-tanda kekurangan vitamin ini, seperti demam atau hilangnya nafsu makan selama beberapa hari\r\n\r\n6.Vitamin E\r\nVitamin E diperlukan untuk mengurai lemak tak jenuh dalam makanan kucing), serta kalsium (ini memerlukan bagian penting yang digunakan untuk membangun dan memilihara tulang kucing)\r\n\r\n7.Taurine\r\nMerupakan asan amino dan menjadi hal yang penting dalam makanan kucing. Makanan kucing buatan pabrik biasanya telah menyediakan taurine dalam jumlah yang mencukupi (baik dalam bentuk kering maupun basah).\r\n\r\nKucing berisiko kekurangan taurine apabila anda memberinya makanan buatan sendiri atau makanan vegetarian. Kekurangan taurine pada kucing bisa mengakibatkan terjadinya degenerasi pada retina pusat, yang bisa menyebabkan kebutaan, serta gagal jantung. Jadi, taurine adalah bahan penting yang harus ada dalam makanan kucing.\r\n\r\n\r\nPikirkan mengenai kapan dan bagaimana anda memberi makan kucing\r\n\r\nSebagai contoh, kucing yang memiliki tahap kehidupan yang berbeda bisa memerlukan jadwal makan dan jenis makanan yang berbeda pula. Meskipun hampir semua kucing bisa mengatur asupan makanan dengan cukup baik, ada sejumlah kasus yang mengharuskan anda untuk mengatur asupan makanan untuk kucing anda.\r\n\r\nAnak kucing harus diberi makan sebanyak 3 hingga 4 kali dalam sehari mulai dari usia enam minggu hingga tiga bulan. Menjelang umur enam bulan, makanannya bisa dikurangi menjadi dua kali dalam sehari.\r\n\r\nKucing yang telah dewasa boleh makan sesuka hati, dan melahap makanan sepanjang hari, namun apabila ini tidak memungkinkan, berilah makan beberapa kali sehari.\r\n\r\nApabila anda mempunyai beberapa kucing yang memiliki kebutuhan makan berbeda, mungkin anda harus mencari tahu sistem pemberian makan terbaik agar kucing anda tidak saling melahap makanan kucing lain.', 'kucingmengolah.jpg', NULL, NULL, 'food', 'cat');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(7, 'user222', 'user222@gmail.com', 'semoga bisa lebih dikembangkan lagi', '2025-01-13 07:32:52', '2025-01-13 07:32:52'),
(8, 'user222', 'user222@gmail.com', 'coba', '2025-01-13 07:34:52', '2025-01-13 07:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hewans`
--

CREATE TABLE `hewans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama_hewan` varchar(50) NOT NULL,
  `ras_hewan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `usia_hewan` int(11) NOT NULL,
  `berat_hewan` decimal(8,2) NOT NULL,
  `temperature_hewan` decimal(5,2) NOT NULL,
  `makanan` varchar(100) NOT NULL,
  `jumlah_vaksinasi` int(11) NOT NULL,
  `vaksinasi_terakhir` varchar(50) NOT NULL,
  `tanggal_vaksinasi` date NOT NULL,
  `penyakit` varchar(100) NOT NULL,
  `obat` varchar(100) NOT NULL,
  `kategori_hewan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hewans`
--

INSERT INTO `hewans` (`id`, `user_id`, `gambar`, `nama_hewan`, `ras_hewan`, `jenis_kelamin`, `usia_hewan`, `berat_hewan`, `temperature_hewan`, `makanan`, `jumlah_vaksinasi`, `vaksinasi_terakhir`, `tanggal_vaksinasi`, `penyakit`, `obat`, `kategori_hewan`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"uploads\\/hewan\\/1736695043_6783dd03b5bcd.jpg\"]', 'Coemiiell', 'British Shorthair', 'Betina', 1, 3.00, 38.00, 'daging ikan, snack kucing', 3, '3', '2025-01-12', 'Tidak ada', 'Obat cacing', 'Kucing', '2025-01-12 08:17:23', '2025-01-12 08:17:23'),
(2, 1, '[\"uploads\\/hewan\\/1736696684_6783e36c072f2.jpg\"]', 'Cashian', 'Maltese', 'Jantan', 3, 5.00, 40.00, 'daging ayam, snack anjing', 3, '2', '2025-01-01', 'Asam Lambung', 'Pereda Nyeri', 'Anjing', '2025-01-12 08:44:44', '2025-01-15 05:08:40'),
(9, 2, '[\"uploads\\/hewan\\/1736941008_67879dd0cc982.jpg\"]', 'Owi', 'Scottish Fold', 'Betina', 2, 5.00, 33.00, 'daging ikan, snack', 3, '2', '2025-01-15', 'Sehat', '-', 'Kucing', '2025-01-15 04:36:48', '2025-01-15 04:36:48'),
(10, 1, '[\"uploads\\/hewan\\/1736946854_6787b4a60ebaa.jpg\"]', 'Uwiie', '-', 'Jantan', 5, 5.00, 33.00, 'daging ikan, snack kucing', 0, '0', '2025-01-13', '-', '-', 'Kucing', '2025-01-15 06:14:14', '2025-01-15 06:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_14_081350_create_jadwals_table', 1),
(5, '2024_12_14_082414_create_rekomendasis_table', 1),
(6, '2024_12_14_083045_create_profils_table', 1),
(7, '2024_12_29_113106_create_blogs_table', 1),
(8, '2025_01_11_101115_create_hewans_table', 1),
(9, '2025_01_13_064151_add_user_id_to_hewans_table', 2),
(10, '2025_01_13_091106_add_category_and_animal_to_blogs_table', 3),
(11, '2025_01_13_141605_create_contacts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profils`
--

CREATE TABLE `profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasis`
--

CREATE TABLE `rekomendasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UXQWfrOQDMFp4D9ncbdFt0cjVuNRUbgj2brNS3D4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTRtN0JoRjhyQ1ZaQTBmNlRWSk14V20zZ2JodUZhWnRVNVcxTGRtSiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2phZHdhbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736950994);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User Humanoid', 'user01@gmail.com', NULL, '$2y$12$tTNBKWmIXkbbTVcJCNf/8Oiynp0YtfSeqB1OQcpxNqB.J8Oa0SGju', '3mh1bZ4AuWF1EogOICjQlvIaEpySVqXGInoxJ6l8pRtmRCrgX57ZEVcqJ5Dt', '2025-01-12 09:00:50', '2025-01-13 05:58:29'),
(2, 'user222', 'user222@gmail.com', NULL, '$2y$12$6LxWptH/AycB5gwfqzSUjuLbW6nNtZ52oEEMsI3L1EqVcoecXX4WW', 'geGa3JuwIUWveIeQX8p5Sx4iM59M0gktf9AdXbIaBV34eE9FMkwSTftk9cFz', '2025-01-12 23:35:28', '2025-01-12 23:35:28'),
(3, 'username', 'user12@gmail.com', NULL, '$2y$12$JSM7I/4jfpJxYsSpcpjyCeTqwCQ07yvZ3CgytVNo8NPW/ilD/LENq', 'gCwXeNFFLjy6h5kt3hjE5NfX6EYx8IdcKyanCErdgSBY1Q5DSIF4192UM169', '2025-01-15 00:51:56', '2025-01-15 00:53:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hewans`
--
ALTER TABLE `hewans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hewans_user_id_foreign` (`user_id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekomendasis`
--
ALTER TABLE `rekomendasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hewans`
--
ALTER TABLE `hewans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profils`
--
ALTER TABLE `profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekomendasis`
--
ALTER TABLE `rekomendasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hewans`
--
ALTER TABLE `hewans`
  ADD CONSTRAINT `hewans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
