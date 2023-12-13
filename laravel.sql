-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Des 2023 pada 04.34
-- Versi server: 5.7.33
-- Versi PHP: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_publikasi` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikels`
--

INSERT INTO `artikels` (`id`, `kategori_id`, `judul`, `slug`, `desc`, `img`, `views`, `status`, `tanggal_publikasi`, `created_at`, `updated_at`) VALUES
(3, 16, 'SEJARAH SINGKAT PERKEMBANGAN OLAHRAGA SQUASH', 'sejarah-singkat-perkembangan-olahraga-squash', '<p>Setiap cabang atau jenis olahraga tentu memiliki silsilah atau sejarah terbentuknya olahraga itu. Begitupun juga olahraga squash yang akhir-akhir ini mulai populer dikalangan pecinta dan pelaku olahraga. Nah kali ini Olahraga bagus akan mengupas sedikit tentang sejarah perkembangan olahraga squash hingga masuk ke Indonesia dan populer.</p>\r\n\r\n<p>Sejarah singkat perkembangan squash dimulai dari abad ke-19 seorang murid sekolah di daerah Fleet Prison london Inggris pada tahun 1820. meski terlahir di Inggris, olahraga squash didirikan secara resmi oleh Amerika serikat pada tahun 1907 dengan nama Unaited States Squash Rackuets Association. Sedangkan di Inggris sendiri baru dibentuk pada tahun 1928 dengan nama Squash Rackets Asociation.</p>\r\n\r\n<p>Di Indonesia sendiri, olahraga squash sebenarnya sudah dikenal sejak perang Dunia ke II berakhir, tepatnya pada 1948 tentara Inggrislah yang pertama kali membangun lapangan squash di Indonesia yang terletak di Embong Sawo Surabaya. Namun saat itu, hany perwira yang berpangkat jendral saja yang boleh memainkan olahraga squash. Bahkan sampai tahun 1978 hanya orang asing yang memainkan olahraga squash di Indonesia.</p>\r\n\r\n<p>Pada tahun 1981 Indonesia berhasil menggelar kejuaraan squash berkat jasa seorang anak bangsa yang sekaligus cikal bakal populernya olahraga squash yaitu Bambang Gatot Subroto. Hanya empat pengda yang tergabung dalam PSRSI (Persatuan Squash Raket Seluruh Indonesia). Pada tahun 1995 barulah terbentuk PSI (Persatuan Squash Indonesia) dan keberadaannya diakui oleh KONI pusat.</p>\r\n\r\n<p>Perkembangan olahraga squash berjalan hingga sekarang. hampir disetiap kejuaraan dari mulai lokal hingga nasional bahkan internasional olahraga squash selalu diikutsertakan. Nah itulah sejarah singkat perkembangan olahraga squash yang bisa saya bagikan mudah-mudahan bermanfaat. Silahkan buka halaman berikutnya untuk materi yang lain.&nbsp;</p>\r\n\r\n<p><strong>Sumber:&nbsp;</strong>olahragabagus.blogspot.com</p>', '6547792bd0f3d.jpg', 1, '1', '2023-11-05', '2023-11-05 04:14:51', '2023-11-05 23:39:16'),
(4, 15, 'TEKNIK MEMEGANG STICK GOLF YANG BAIK DAN BENAR', 'teknik-memegang-stick-golf-yang-baik-dan-benar', '<p>Jika kita mendengar yang namanya olahraga golf, coba apa yang ada di pemikiran anda ?? tentu kita pasti akan bilang olahraganya orang kaya betul bukan.? Jika kita amati dan perhatikan olahraga golf terlihat sangat mudah dan cenderung membosankan. Padahal jika anda tau yang namanya olahraga golf tidak hanya tenaga yang dikeluarkan tetapi fikiran juga sangat dikuras habis karena membutuhkan sangat ful konsentrasi.</p>\r\n\r\n<p>Nah pada kesempatan ini saya akan berbagi tentang bagaimana teknik memegang atick golf yang baik dan benar mudah-mudahan bisa memudahkan anda jika belajar main golf. woow cara memegang saja harus sudah benar ya...</p>\r\n\r\n<h2>1. Teknik memegang stick golf yang baik dan benar yang pertama</h2>\r\n\r\n<p>Simpan grip (pegangan stick) pada tangan kiri anda secara menyilang, dan pangkal grip betada di telapak kiri anda dagian bawah dan miring sampai ruas bagian kedua jari telunjuk anda. lalu genggam dengan lembut, tidak keras dan tidak lembek (rileks). perhatikan tumpuan genggaman anda ada dipusat jari manis dan jari tengah. Ingat posisikan genggaman anda seperti berbentuk V lurus dengan head club (kepala stick).</p>\r\n\r\n<h2>2. Selanjutnya tangan kanan secara perlahan menggenggam dari arah bawah</h2>\r\n\r\n<p>Dengan jari kelingking berada diantara jari tengah dan jari telunjuk tangan kiri. Lalu genggam dengan lembut tangan kiri pada bagian V dan membentuk V baru dengan tangan kanan serta buat shaft (batang stick). Ingat jangan takut pegangan anda terlepas ketika anda swing. jika teknik memegang stick golf yang baik dan benar pasti tidak akan terlepas dan tidak akan kendor.</p>\r\n\r\n<h2>3. Jika sudah anda lakukan rangkaian teknik tadi maka anda sudah siap untuk melakukan swing (mengayun stick) dengan baik dan benar.</h2>\r\n\r\n<p>Nah sekarang apakah pegangan yang anda lakukan pada saat bermain golf sudah benar.? silahkan anda nilai dan rasakan sendiri. Mudah-mudahan materi teknik memegang stick golf yang baik dan benar ini bermanfaat dan menjadi salahsatu refrensi berlatih anda. Terimakasih.</p>', '654779fba130b.jpg', 0, '1', '2023-11-05', '2023-11-05 04:18:19', '2023-11-05 08:12:01'),
(5, 13, 'MANFAAT OLAHRAGA BAGI ANAK USIA DINI', 'manfaat-olahraga-bagi-anak-usia-dini', '<p>Anak usia dini merupakan aset yang sangat berharga bagi perkembangannya. Diusia ini juga peran pengenalan olahraga sangat diperlukan guna menunjang kemampuan fisik dan mentalnya. Bagi anak usia dini merupakan kesempatan emas untuk belajar sehingga disebut juga&nbsp;<em>golden age.</em></p>\r\n\r\n<p>Olahraga tidak hanya bermanfaat bagi kesehatan, menurunkan berat badan bagi orang dewasa, atau menjaga kebugaran. Namun olahraga juga mempunyai segudang manfaat khususnya bagi anak usia dini. Nah pada kesempatan kali ini olahraga bagus akan berbagi tentang manfaat olahraga bagi anak usia dini yang merupakan hal yang cukup penting khususnya untuk perkembangan motorik anak.</p>\r\n\r\n<p>Dalam penerapan olahraga bagi anak usia dini target yang harus dicapai bukanlah sebuah prestasi atau kesiapan untuk bertanding, namun bagaimana anak berkambang dengan segala pergerakannya sehingga bukan hasil yang menjadi tolak ukur melainkan proses yang perlu anda terapkan. Dalam masa ini (anak usia dini) yang diperlukan adalah kegembiraan, pengenalan, dan aktivitas gerak yang bertujuan. Oleh karena itu jika anda seorang guru olahraga atau pelatih cabang olahraga anda tidak perlu menekankan penguasaan teknik atau peraturan pertandingan bagi anak usia dini.&nbsp;</p>\r\n\r\n<p>Manfaat olahraga bagi anak usia dini akan terasa dengan sendirinya seiring dengan pertumbuhan hidupnya. Karena jika penerapan olahraga mengarah kepada pembentukan mungkin secara prestasi saat itu akan tercapai, tetapi perkembangan dimasa yang akan datang khususnya pertumbuhannya akan terganggu dan bahkan sulit untuk tumbuh secara maksimal.</p>\r\n\r\n<p>Berbeda dengan penerapan yang mengedepankan proses pembinaan secara bertahap dan lebih mengutamakan pada kegembiraan anak, mungkin prosesnya sedikit panjang namun hasil akhirnya akan sangat luarbiasa.Anak pada saatnya nanti bukan hanya akan meraih prstasi yang di bangun sejak dini tetapi juga manfaat lain akan dirasakannya seperti peningkatan kesehatan, kecerdasan, jiwa sportifitas, rasa percaya diri, disiplin dan bisa diajak kerjasama dengan baik.</p>\r\n\r\n<p>Itulah sedikit materi yang bisa olahraga bagus bagikan tentang manfaat olahraga bagi anak usia dini mudah-mudahan bermanfaat.</p>\r\n\r\n<p><strong>Sumber:&nbsp;</strong>olahragabagus.blogspot.com</p>', '65477ac9a937d.jpg', 0, '1', '2023-11-05', '2023-11-05 04:21:45', '2023-11-05 08:11:37'),
(6, 15, 'PERATURAN-PERATURAN DALAM OLAHRAGA PANAHAN', 'peraturan-peraturan-dalam-olahraga-panahan', '<p>Olahraga panahan adalah jenis olahraga yang menggunakan busur untuk membidik sasarannya. Dalam olahraga memanah ada peraturan-peraturan yang perlu anda ketahui dan perlu anda ikuti. Nah pada kesempatan kali ini olahraga bagus akan berbagi tentang peraturan-peraturan dalam olahraga panahan.</p>\r\n\r\n<p>Olahraga panahan khususnya dalam ajang kompetisi dapat diselenggarakan baik didalam ruangan ataupun diluar ruangan.Sedangkan untuk jarak atau jangkauan bidikan sangat berpariasi dari mulai 18 meter dan 25 meter untuk pemain junior. Sedangkan untuk senior jarak bidikan 30 meter hingga 90 meter. Tetapi untuk standar olimpiade yaitu jarak 70 meter.</p>\r\n\r\n<p>Dalam kompetisi panahan, yang dimainkan di dalam ruangan seorang pemanah masing-masing mendapat kesempatan untuk memanah 3 kali sampai 6 kali memanah tergantung model kompetisi yang dimainkan. sedangkan yang dimainkan di luar ruangan seorang pemanah masing-masing bisa sampai 20 kali memanah.&nbsp;</p>\r\n\r\n<p>Didalam kompetisi resmi, peraturan-peraturan dalam olahraga panahan ada batasan waktu yang sudah ditetapkan. Sedangkan target bidikan ditandai dengan cincin target. Itulah sedikit tentang Peraturan-peraturan dalam olahraga panahan yang bisa saya sampaikan mudah-mudahan bisa bermanfaat.</p>\r\n\r\n<p><strong>Sumber:&nbsp;</strong>olahragabagus.blogspot.com</p>', '65478d319f194.jpg', 1, '1', '2023-11-05', '2023-11-05 05:40:17', '2023-12-11 19:34:31'),
(7, 15, 'TEKNIK MEMEGANG RAKET BULUTANGKIS YANG BAIK DAN BENAR', 'teknik-memegang-raket-bulutangkis-yang-baik-dan-benar', '<p>Bermain bulutangkis adalah salahsatu permainan yang menggunakan alat yaitu raket. Teknik dalam bermain bulutangkis sangat penting untuk dipelajari terutama bagi pemula. Pada kesempatan kali ini olahraga bagus akan membahas tentang teknik memegang raket bulutangkis yang baik dan benar.</p>\r\n\r\n<p>Memegang raket dengan benar adalah kunci dalam berlatih bulutangkis. Salahsatu teknik dasar yang wajib dikuasai oleh para pemain bulutangkis. Ada beberapa teknik pegangan dalam olahraga bulutangkis yang bisa anda pelajari yaitu:</p>\r\n\r\n<h2>1. American Grip</h2>\r\n\r\n<p>Teknik ini sangat standar digunakan dan sangat epektif karena sangat mudah dalam melatihnya. Yaitu dangan cara letakan raket di lantai, kemudian ambil bagian ujung pegangan (handle) seperti &nbsp;memegang pemukul kasur. Bagian ibu jari dengan jari telunjuk menempel pada bagian permukaan pegangan dan posisi raket miring sejajar dengan lantai. Teknik pegangan ini sangat ampuh untuk melakukan pukulan ( smassh) ataupun menghalau bola.</p>\r\n\r\n<h2>2. Forehand Grip</h2>\r\n\r\n<p>Teknik pegangan selanjutnya yaitu dengan cara letakan raket di alntai dengan posisi miring, lalu pegang raket dengan cara bagian tangan antara ibu jari dengan jari telunjuk dalam posisi menempel pada permukaan yang sempit. Letak ibu jari tidak boleh jauh dari jari telunjuk. Pegangan ini akan sangat kuat dan tidak mudah lepas. Teknik ini bertujuan untuk menahan laju bola yang datang ke sebelah kanan sehingga bola dapat dikembalikan dengan baik.</p>\r\n\r\n<h2>3. Pegangan Backhand Grip</h2>\r\n\r\n<p>Pegangan backhand merupakan teknik lanjutan dari pegangan forehand. Yaitu dengan cara memutar raket seperempat putaran kekiri, posisi ibu jari agak dekat dengan daun raket, Teknik pegangan ini sangat epektif dilakukan pada saat memukul (smash) bola. Karena selain hasil pukulannya sangat keras tetapi arah bola lebih bisa terkontrol.</p>\r\n\r\n<h2>4. Combination Grip (pegangan campuran)</h2>\r\n\r\n<p>Teknik pegangan &nbsp;ini bisa dilakukan dengan cara. Mengubah cara pegangan raket yang disesuaikan degan arah datangnya bola (shuttleccok) dan jenis pukulan yang diinginkan. Teknik ini merupakan perpaduan dari forehand grip dan backhand grip.&nbsp;Dalam melakukan Pegangan ini pemain tidak perlu mengubah posisi raket saat akan memukul bola.(shuttleccok).</p>\r\n\r\n<p>Nah sekarang tinggal anda praktekan dalam belajar bermain bulutangkis. Setelah mempelajari teknik memegang raket bulutangkis yang baik dan benar anda bisa merasakan perubahan baik dalam teknik pegangan ataupun dalam bermain bulutangkis secara permainan. Itulah salahsatu teknik dalam bermain bulutangkis yaitu teknik memegang raket bulutangkis yang baik dan benar yang bisa saya bagikan mudah-mudahan bermanfaat.</p>', '65478e931ea22.png', 6, '1', '2023-11-05', '2023-11-05 05:46:11', '2023-11-05 19:23:37'),
(8, 15, 'LINGKUP KESEHATAN OLAHRAGA /SPORTS MEDICINE', 'lingkup-kesehatan-olahraga-sports-medicine', '<p>Kesehatan olahraga adalah sekumpuan ilmu-ilmu yang membahas segala permasalahan kesehatan yang berkaitan dengan olahraga. Artinya lingkup kesehatan olahraga/<em>sports medicine</em>&nbsp;sangat erat dengan ilmu kedokteran yang bertujuan memelihara kesehatan atlet.</p>\r\n\r\n<p>Dalam pembahasan kali ini olahraga bagus akan mengupas tentang lingkup kesehatan olahraga&nbsp;<em>sports medicine&nbsp;</em>guna membina kesehatan jasmani secara umum dan membina kesehatan jasmani secara khusus. Hasil telaah dari berbagai sumber, saya sederhanakan menjadi 3 bagian penting yaitu lingkup yang meliputi aspek jasmaniah, rohaniah, dan aspek lingkungan.</p>\r\n\r\n<h2>1. Aspek jasmaniah</h2>\r\n\r\n<p>Pada aspek jasmaniah lingkup kesehatan olahraga sangat jelas berperan, karena aspek ini adalah awal dari segala bentuk pembinaan. Dari aspek jasmaniah seorang pelatih atau guru bisa menganalisa dan mengetahui dari mulai pertumbuhan dan perkembangan seorang atlet, menganalisa anatomi tubuh sehingga pelatih atau guru bisa menebak perkembangan atlet secara kecabangannya. Lingkup kesehatan olahraga juga tidak akan lepas deri upaya pencegahan seperti pencegahan cedera olahraga, yang bisa di analisis dan upaya penyembuhan cedera melalui metode massage.</p>\r\n\r\n<h2>2. Aspek rohaniah dan sosial</h2>\r\n\r\n<p>Pada aspek ini sangat erat kaitannya dengan faktor keyakinan diri. hal ini berkaitan juga dengan psikologi olahraga, pedagogoi olahraga, dan sosiologi olahraga.</p>\r\n\r\n<h2>3. Aspek Lingkungan</h2>\r\n\r\n<p>Aspek ini sangat berpengaruh terhadap perkembangan atlet . Lingkup kesehatan olahraga sangat berhubungan dengan aspek lingkungan. Aspek ini bisa muncul dalam diri atlet ketika dia terangsang oleh lingkungannya.</p>\r\n\r\n<p><strong>Sumber:&nbsp;</strong>olahragabagus.blogspot.com</p>', '6547902562067.jpg', 42, '1', '2023-11-05', '2023-11-05 05:52:53', '2023-11-05 21:24:38'),
(9, 13, 'TIPS OLAHRAGA YANG BAIK UNTUK PEMULA', 'tips-olahraga-yang-baik-untuk-pemula', '<p>Jika Anda baru ingin memulai kebiasaan berolahraga, Anda wajib mengetahui sejumlah tips olahraga yang baik agar bisa memperoleh manfaat sesungguhnya. Seperti Anda ketahui, olahraga memberikan dampak besar bagi tubuh, salah satunya menjaga kebugaran dan kesehatan fisik maupun mental. Namun, untuk bisa memperoleh manfaat tersebut secara optimal, Anda harus mengetahui&nbsp;cara olahraga yang baik dan benar. Yuk langsung saja simak berbagai tips olahraga untuk pemula yang sebaiknya tidak Anda lewatkan di artikel berikut ini!</p>\r\n\r\n<h2>Tips Olahraga untuk Pemula</h2>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/Image/bagus-untuk-kesehatan-simak-5-manfaat-olahraga-bagi-tubuh-ini-pantang-diabaikan-1653392364.jpg\" style=\"height:70%; width:70%\" /></p>\r\n\r\n<p>Di samping menjaga kebugaran tubuh, olahraga ternyata juga berperan penting dalam mencegah berbagai risiko penyakit. Maka dari itu, berolahraga secara rutin disebut sebagai salah satu kunci hidup sehat. Namun, jika Anda masih belum terbiasa dan bingung memulainya dari mana, Anda bisa simak berbagai tips olahraga untuk pemula berikut ini.</p>\r\n\r\n<h2>Tips Olahraga untuk Pemula</h2>\r\n\r\n<p>Di samping menjaga kebugaran tubuh, olahraga ternyata juga berperan penting dalam mencegah berbagai risiko penyakit. Maka dari itu, berolahraga secara rutin disebut sebagai salah satu kunci hidup sehat.&nbsp;</p>\r\n\r\n<p>Namun, jika Anda masih belum terbiasa dan bingung memulainya dari mana, Anda bisa simak berbagai tips olahraga untuk pemula berikut ini.</p>\r\n\r\n<h3>1. Perhatikan Kondisi Tubuh</h3>\r\n\r\n<p>Tips olahraga untuk pemula yang pertama adalah memperhatikan kondisi tubuh. Ya, Anda wajib memastikan bahwa tubuh Anda cukup fit untuk memulai berolahraga. Apalagi jika Anda sebelumnya tidak terbiasa melakukan aktivitas fisik berat. Hindari pula olahraga saat sedang sakit karena hal ini justru menghambat proses penyembuhan dan membuat tubuh semakin lemah. Sementara, bila Anda berusia 45 tahun ke atas atau memiliki kondisi kesehatan tertentu seperti asma, penyakit jantung, dan masalah kronis lainnya, cobalah konsultasikan terlebih dahulu dengan dokter mengenai cara olahraga yang aman.</p>\r\n\r\n<h3>2. Pilih Olahraga yang Sederhana Terlebih Dahulu</h3>\r\n\r\n<p>Saat baru ingin memulai kebiasaan olahraga, cobalah jenis latihan yang sederhana terlebih dahulu, seperti jogging, bersepeda, berenang, dan semacamnya. Seiring waktu, hal ini akan membantu Anda jadi lebih aktif hingga akhirnya tubuh dapat menyesuaikan diri dengan aktivitas fisik tersebut. Setelah itu, barulah Anda bisa beralih ke jenis latihan yang lebih berat secara bertahap, seperti&nbsp;angkat beban, HIIT cardio, dan lain sebagainya. Latihan kekuatan dan fleksibilitas otot dapat Anda pilih guna meningkatkan kemampuan ketika berolahraga.</p>\r\n\r\n<h3>3. Awali dengan Target yang Ringan dan Realistis</h3>\r\n\r\n<p>Tips olahraga yang baik berikutnya adalah mengawali latihan dengan target ringan dan realistis. Pasalnya, sering kali orang-orang baru mulai olahraga dengan memasang target terlalu jauh dan sulit untuk dicapai, sehingga akhirnya menyerah dan tak melanjutkan latihan. Maka dari itu, Anda disarankan memulai dengan target ringan terlebih dulu, misal jogging selama 15 menit setiap hari atau berenang dua kali dalam seminggu.</p>\r\n\r\n<p>Atau, bila Anda menargetkan mampu berlari sejauh 5 kilometer, Anda bisa mengawali dengan latihan yang terukur dan bisa dicapai seperti lari jarak pendek 500 meter. Nanti, setelah terbiasa, Anda bisa meningkatkan ritme dan frekuensi olahraga tersebut sedikit demi sedikit sesuai kemampuan. Yang terpenting, Anda melakukannya secara rutin dan konsisten. Mulai secara rutin dan konsisten 3 sampai 4 kali seminggu selama 30 menit kemudian tingkatkan bertahap.</p>\r\n\r\n<h3>4. Gunakan Pakaian Olahraga yang Tepat</h3>\r\n\r\n<p>Tips olahraga untuk pemula lainnya adalah menggunakan pakaian maupun sepatu yang tepat. Hal ini bukan berarti Anda harus berpenampilan menarik saat latihan, namun dimaksudkan agar olahraga Anda jadi lebih nyaman dan efektif. Pilihlah pakaian yang tipis, ringan, dan mampu menyerap keringat serta memungkinkan evaporasi dari panas tubuh dengan baik. Anda juga bisa sesuaikan pakaian dan perlengkapan lainnya dengan jenis olahraga yang Anda lakukan. Sebab, setiap olahraga biasanya memiliki preferensi pakaian maupun sepatu berbeda. Contohnya seperti sepak bola dan basket.</p>\r\n\r\n<h3>5. Pelajari Gerakan yang Baik dan Benar</h3>\r\n\r\n<p>Tips olahraga selanjutnya yang tak kalah penting adalah mempelajari gerakan dengan baik dan benar. Pasalnya, setiap jenis olahraga mempunyai tata cara dan juga aturan. Jika keliru, maka latihan tersebut tak akan memberikan hasil yang optimal. Inilah alasan mengapa Anda harus memahami dan melakukan olahraga dengan teknik tepat, terutama jika Anda masih pemula.</p>\r\n\r\n<p><strong>Sumber:&nbsp;</strong>sehataqua.co.id</p>', '65486d446d092.jpg', 1, '1', '2023-11-06', '2023-11-05 21:36:20', '2023-11-05 21:37:12'),
(10, 16, 'SEJARAH SEPAK BOLA: EVOLUSI DAN PERKEMBANGAN DARI MASA KE MASA', 'sejarah-sepak-bola-evolusi-dan-perkembangan-dari-masa-ke-masa', '<p>Sepak bola merupakan olahraga yang paling populer di dunia. Termasuk di Indonesia, sepak bola juga menjadi olahraga yang sangat disukai dan banyak dimainkan oleh masyarakat. Jauh sebelum dikenal seperti saat ini, permainan sepak bola pada awal perkembangannya ternyata sangat berbeda. Aturan-aturannya kemudian berkembang dari masa ke masa hingga menjadi seperti saat ini. Nah, kita akan mengulas bagaimana sejarah awal dari sepak bola. Selain itu, kita juga bahas bagaimana evolusi sepak bola dan aturan-aturannya saat ini.</p>\r\n\r\n<h2>Sejarah Sepak Bola</h2>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/Image/download.jpeg\" style=\"height:70%; width:70%\" /><br />\r\nDilansir dari buku Bahan Ajar Sepakbola Dasar yang disusun Emral dari Universitas Negeri Padang (UNP), sejarah awal sepak bola terjadi pada era tahun 1122-247 sebelum Masehi (SM) di Cina. Saat itu, permainan ini dikenal dengan nama Tsu-Chiu. Tsu berarti kaki, Chiu berarti bola. Hal ini dibuktikan dari buku-buku yang ditinggalkan tentara Cina. Dalam buku itu terdapat gambar-gambar orang seperti sedang bermain sepak bola. Saat itu pertandingan sepak bola dimainkan dua regu yang masing-masing regu terdiri dari puluhan orang.<br />\r\n<br />\r\nSelain Cina, banyak juga sejarah yang menyebutkan sepak bola berasal dari negara lain, seperti dari Inggris, Jepang, Mesir, Yunani, Romawi, Italia dan Prancis. Misal di Mesir, ada bukti relief yang menggambarkan seperti orang bermain sepak bola. Di Inggris, ada pendapat yang mengatakan sepak bola pada awalnya dimainkan dengan menendang tengkorak bangsa Viking yang telah menjajah mereka.</p>\r\n\r\n<h2>Sejarah Sepak Bola di Zaman Modern</h2>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/storage/photos/1/Image/026103600_1662867388-ATLETICO-MADRID-Vs-CELTA-VIGO-AFP-3.jpg\" style=\"height:70%; width:70%\" /><br />\r\nDi zaman modern, sejarah sepak bola banyak dikembangkan di Inggris dengan berdirinya The Football Association (FA). Pada abad ke-19, pemerintah Inggris mengakui bahwa sepak bola menyehatkan badan, sehingga banyak pelajar dan mahasiswa yang memainkannya dengan aturan-aturan berbeda.<br />\r\n<br />\r\nSalah satunya, aturan dibuat oleh Cambridge University. Aturan itu misalnya sepak bola boleh menggunakan tangan dan kaki. Namun aturan tersebut dinilai tidak sesuai dengan keinginan masyarakat sipil. Justru aturan itu kemudian diadaptasi untuk permainan rugby. Pada 1863, terbentuklah The Football Association sebagai badan resmi yang mengatur tentang sepak bola di Inggris. Anggota FA ini kebanyakan dari masyarakat sipil. Dengan berdirinya FA, maka aturan tentang sepak bola sudah seragam.</p>', '654896811d117.jpeg', 7, '1', '2023-11-06', '2023-11-06 00:32:17', '2023-11-26 20:37:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(13, 'Tips', 'tips', '2023-11-05 04:04:31', '2023-11-05 04:04:31'),
(15, 'Pengetahuan', 'pengetahuan', '2023-11-05 04:10:20', '2023-11-05 04:10:20'),
(16, 'Sejarah', 'sejarah', '2023-11-05 04:10:39', '2023-11-05 04:10:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_24_045713_create_kategoris_table', 1),
(6, '2023_09_24_045714_create_artikels_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yoel', 'tyoel7701@gmail.com', NULL, '$2y$10$nem33U/FEZGRBx5Ew6GTgOOlt5Jt5indqydHImOu0kFma/ZQ1EUAe', '1', 'g8EiIolhI3gV43VvmZ0NhFLgvy05lKahUmO1cDqdNcUCFvEIq8GRCS5E3nTe', '2023-10-29 19:35:45', '2023-10-29 22:22:17'),
(2, 'Tugi', 'tugi123@gmail.com', NULL, '$2y$10$j/7C.EO6HEbK1r781DIxiu5wOn.SflzwdElCbXhJ7G8DREZe6nH4G', '2', 'tLhv42vFJ67iriMhfcxGIk2ujsdYUAmYTneHyXeUYu2Xc0uewgPfukB6ytps', '2023-10-29 21:23:28', '2023-10-29 22:22:52'),
(3, 'Nizhar', 'nizhar123@gmail.com', NULL, '$2y$10$SnXua3uRcXBwGdntYAQ68O7H5h3YaO2nNxD93hsXOTgAbTWtuZIDe', '1', NULL, '2023-11-06 00:15:42', '2023-11-06 00:15:42');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikels_kategori_id_index` (`kategori_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikels`
--
ALTER TABLE `artikels`
  ADD CONSTRAINT `artikels_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
