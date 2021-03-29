-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 06:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petanicourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `penulis_id` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `penulis_id`, `created_at`, `updated_at`) VALUES
(1, 'Tutorial memasak', '1', '2021-03-27 14:39:59', '2021-03-27 14:39:59'),
(2, 'Tutorial menjadi ibu rumah tangga', '1', '2021-03-27 14:39:59', '2021-03-27 14:39:59'),
(3, 'Psikologi menurut ahli', '2', '2021-03-27 14:39:59', '2021-03-27 14:39:59'),
(4, 'Course dasar Laravel', '3', '2021-03-27 14:39:59', '2021-03-27 14:39:59'),
(5, 'Course middle Laravel', '3', '2021-03-27 14:39:59', '2021-03-27 14:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pemrograman Web', '2021-03-27 14:54:29', '2021-03-27 14:55:39'),
(2, 'Pemrograman Android', '2021-03-27 14:54:29', '2021-03-27 14:55:39'),
(3, 'Sistem Informasi', '2021-03-27 14:54:29', '2021-03-27 14:55:39'),
(4, 'Jaringan Komputer', '2021-03-27 14:58:20', '2021-03-27 14:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_member`
--

CREATE TABLE `kelas_member` (
  `kelas_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas_member`
--

INSERT INTO `kelas_member` (`kelas_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-27 15:05:41', '2021-03-27 15:05:41'),
(1, 2, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(1, 3, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(1, 4, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(1, 5, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(2, 1, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(2, 2, '2021-03-27 15:05:42', '2021-03-27 15:05:42'),
(3, 3, '2021-03-27 15:05:43', '2021-03-27 15:05:43'),
(3, 4, '2021-03-27 15:05:43', '2021-03-27 15:05:43'),
(3, 5, '2021-03-27 15:05:43', '2021-03-27 15:05:43'),
(4, 1, '2021-03-27 15:05:43', '2021-03-27 15:05:43'),
(4, 2, '2021-03-27 15:05:43', '2021-03-27 15:05:43'),
(4, 3, '2021-03-27 15:05:43', '2021-03-27 15:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Putra', '2021-03-27 14:53:04', '2021-03-27 14:53:04'),
(2, 'Purnama', '2021-03-27 14:53:04', '2021-03-27 14:53:04'),
(3, 'Wati', '2021-03-27 14:53:04', '2021-03-27 14:53:04'),
(4, 'Laitsi', '2021-03-27 14:53:04', '2021-03-27 14:53:04'),
(5, 'Anwar', '2021-03-27 14:53:04', '2021-03-27 14:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `nama`, `umur`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'ardhapanduwinata', 22, 'Malang', '2021-03-17 08:15:44', '2021-03-17 08:15:44'),
(3, 'wi', 25, 'Malang, Lowokwaru', '2021-03-17 08:59:58', '2021-03-17 08:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'ardha', '2021-03-27 02:23:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, ' Demir Flora D\'Angelo ', '2021-03-27 14:35:49', '2021-03-27 14:36:00'),
(2, ' Rosalie Gerd Chvátal ', '2021-03-27 14:35:49', '2021-03-27 14:36:00'),
(3, ' Kasimira Bonifác Wallace ', '2021-03-27 14:35:49', '2021-03-27 14:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(10) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `umur`, `alamat`) VALUES
(1, 'ardhapanduwinata', 22, 'Malang, Lowokwaru'),
(3, 'Naradi Megantara', 29, 'Jr. Jayawijaya No. 452, Sabang 83283, Banten'),
(4, 'Padmi Nuraini', 30, 'Psr. Sutan Syahrir No. 621, Bitung 47593, NTT'),
(5, 'Paulin Wulandari S.Sos', 37, 'Psr. Adisucipto No. 733, Lhokseumawe 32059, Sulteng'),
(6, 'Bakti Firgantoro S.I.Kom', 35, 'Jr. Lumban Tobing No. 637, Administrasi Jakarta Timur 28655, Sumsel'),
(7, 'Baktiadi Saptono', 33, 'Dk. Sumpah Pemuda No. 74, Langsa 35435, Papua'),
(8, 'Mariadi Natsir S.Psi', 25, 'Dk. Wahidin No. 261, Palopo 74233, Kaltara'),
(9, 'Yance Yani Rahayu', 30, 'Dk. Bazuka Raya No. 9, Pasuruan 31929, Lampung'),
(10, 'Jelita Maya Hasanah M.Pd', 29, 'Jln. Otto No. 835, Bitung 80540, Aceh'),
(11, 'Marwata Maulana', 35, 'Psr. Veteran No. 404, Administrasi Jakarta Selatan 13264, DIY'),
(12, 'Qori Rahmawati', 35, 'Gg. Juanda No. 922, Pagar Alam 96491, Sulsel'),
(13, 'Rafid Pradipta', 36, 'Dk. Bacang No. 32, Yogyakarta 55538, Jateng'),
(14, 'Anita Najwa Padmasari M.Ak', 30, 'Jln. Bahagia No. 566, Kupang 51387, Malut'),
(15, 'Galar Saefullah S.Psi', 25, 'Psr. R.E. Martadinata No. 991, Administrasi Jakarta Pusat 28101, Maluku'),
(16, 'Eva Yuniar', 39, 'Psr. Sutoyo No. 456, Padangsidempuan 20647, Sulteng'),
(17, 'Ajeng Melinda Novitasari S.Farm', 29, 'Gg. Acordion No. 605, Mojokerto 53634, Kalteng'),
(18, 'Nurul Lestari S.Kom', 26, 'Jln. Asia Afrika No. 916, Bukittinggi 13436, Sulsel'),
(19, 'Oskar Uwais M.Kom.', 31, 'Psr. Ketandan No. 250, Pontianak 69353, Sulut'),
(20, 'Jane Mandasari', 31, 'Psr. Pattimura No. 789, Bitung 22404, Malut'),
(21, 'Pangeran Pradana S.Kom', 29, 'Jln. Astana Anyar No. 771, Padangpanjang 32536, Lampung'),
(22, 'Satya Jagaraga Putra', 30, 'Ds. Cut Nyak Dien No. 333, Bandar Lampung 72541, Papua'),
(23, 'Daruna Siregar', 36, 'Kpg. Bak Mandi No. 35, Batam 17333, Sulteng'),
(24, 'Ina Hastuti S.Ked', 37, 'Gg. Gegerkalong Hilir No. 967, Pasuruan 15435, Sumut'),
(25, 'Maryanto Jono Mandala S.Gz', 37, 'Psr. Sutarto No. 55, Jambi 74174, Papua'),
(26, 'Hani Nasyidah', 27, 'Kpg. Wora Wari No. 247, Kupang 34262, Sulut'),
(27, 'Surya Pradipta M.M.', 34, 'Ki. Bhayangkara No. 281, Metro 30902, Babel'),
(28, 'Xanana Latupono', 40, 'Kpg. Orang No. 221, Pontianak 98555, Kalbar'),
(29, 'Jaeman Purwa Maryadi S.IP', 39, 'Jln. Babakan No. 474, Surakarta 78872, Jatim'),
(30, 'Dipa Marpaung', 27, 'Jr. Peta No. 35, Langsa 51842, Sulteng'),
(31, 'Balijan Vega Tampubolon', 30, 'Ki. Sutami No. 613, Malang 49037, Aceh'),
(32, 'Mahmud Wibowo', 40, 'Dk. Bak Mandi No. 905, Tanjung Pinang 49908, Papua'),
(33, 'Dariati Prabowo', 34, 'Dk. Labu No. 444, Surakarta 31462, Lampung'),
(34, 'Laila Rahayu', 34, 'Gg. Kali No. 749, Palembang 40405, Gorontalo'),
(35, 'Zahra Yolanda', 27, 'Jr. Daan No. 445, Tanjung Pinang 49635, Sulsel'),
(36, 'Upik Taufik Wijaya', 37, 'Psr. Gambang No. 725, Tebing Tinggi 68648, Gorontalo'),
(37, 'Bakiono Labuh Gunarto', 29, 'Dk. Dahlia No. 696, Surabaya 38580, Kepri'),
(38, 'Soleh Halim', 29, 'Kpg. Abang No. 865, Pangkal Pinang 65661, Jateng'),
(39, 'Jane Mulyani', 30, 'Jln. Industri No. 932, Pariaman 10512, Sulsel'),
(40, 'Usyi Shania Purwanti S.Kom', 40, 'Dk. Warga No. 395, Banjarmasin 53177, Kalteng'),
(41, 'Daru Maryadi S.Kom', 38, 'Psr. Yoga No. 382, Tangerang 64342, Sulsel'),
(42, 'Ajeng Wirda Pratiwi', 29, 'Psr. Babadan No. 698, Administrasi Jakarta Utara 13154, Jateng'),
(43, 'Hani Farida', 38, 'Kpg. Madrasah No. 592, Bontang 15065, Sumut'),
(44, 'Gading Jagaraga Sitompul', 31, 'Jln. Supono No. 619, Padangpanjang 41306, Kalsel'),
(45, 'Zaenab Halimah', 39, 'Dk. Abdul Rahmat No. 329, Ternate 48441, Kalteng'),
(46, 'Kasiran Maryadi', 28, 'Gg. Bara Tambar No. 459, Pematangsiantar 52945, Jateng'),
(47, 'Dagel Ian Sihotang M.Kom.', 33, 'Ds. Jayawijaya No. 479, Batu 79289, Babel'),
(48, 'Syahrini Permata', 33, 'Ki. Camar No. 308, Pekalongan 95951, Kaltim'),
(49, 'Lintang Oktaviani', 25, 'Kpg. Bank Dagang Negara No. 423, Yogyakarta 99643, Pabar'),
(50, 'Patricia Rahmawati', 32, 'Kpg. Baik No. 790, Pariaman 16543, Jabar'),
(51, 'Gambira Hidayanto S.Pt', 30, 'Jln. Laswi No. 427, Palembang 15500, Sulteng'),
(52, 'Nasim Najmudin', 25, 'Jr. Rajawali Timur No. 701, Ternate 31790, Kalbar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wali_murid`
--

CREATE TABLE `wali_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_murid`
--

INSERT INTO `wali_murid` (`id`, `nama`, `murid_id`, `created_at`, `updated_at`) VALUES
(1, 'wina', 1, '2021-03-27 02:27:47', '2021-03-27 02:27:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_member`
--
ALTER TABLE `kelas_member`
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wali_murid`
--
ALTER TABLE `wali_murid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wali_murid`
--
ALTER TABLE `wali_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas_member`
--
ALTER TABLE `kelas_member`
  ADD CONSTRAINT `kelas_id` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
