-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 01:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_album` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_seo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `nama_album`, `album_seo`, `gambar`, `created_at`, `updated_at`) VALUES
(17, 'Kartun Keren', 'kartun-keren', '1587261818.jpg', '2020-04-18 19:03:38', '2020-04-18 19:05:16'),
(22, 'Film Favorit', 'film-favorit', '1587263320.jpg', '2020-04-18 19:23:45', '2020-04-18 19:28:40'),
(23, 'Game Mania', 'game-mania', '1587263123.jpg', '2020-04-18 19:25:23', '2020-04-18 19:25:23'),
(24, 'Artwork 3D', 'artwork-3d', '1587264814.jpg', '2020-04-18 19:30:35', '2020-04-18 19:53:34'),
(25, 'Arsitektur Bersejarah', 'arsitektur-bersejarah', '1587270567.jpg', '2020-04-18 19:45:16', '2020-04-18 21:29:27'),
(26, 'Olahraga Pilihan', 'olahraga-pilihan', '1587264601.jpg', '2020-04-18 19:50:01', '2020-04-18 19:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_galeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_album` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `nama_galeri`, `keterangan`, `foto`, `id_album`, `created_at`, `updated_at`, `id_user`) VALUES
(25, 'Olaf Frozen', 'Olaf Frozen', '1587267088.jpg', 17, '2020-04-18 20:31:29', '2020-04-18 20:31:29', 7),
(27, 'Avatar', 'Avatar The Last Airbender', '1587265138.jpg', 17, '2020-04-18 19:58:59', '2020-04-18 19:58:59', 1),
(28, 'Sonic The Hedgehog', 'Sonic the hedgehog', '1587265659.jpg', 17, '2020-04-18 20:07:40', '2020-04-18 20:07:40', 7),
(29, 'Naruto Shippuden', 'Naruto Shippuden', '1587265513.jpg', 17, '2020-04-18 20:05:13', '2020-04-18 20:05:13', 7),
(30, 'Iron Man', 'Iron Man', '1587265776.jpg', 17, '2020-04-18 20:09:37', '2020-04-18 20:09:37', 7),
(31, 'Ninjago', 'Di awal diceritakan bagaimana jahatnya Garmadon, tapi selalu dikalahkan oleh enam ninja dengan kendaraan keren yang identitasnya misterius. Mereka adalah kebanggaan dan pahlawan yang selalu dielu-elukan Ninjago.', '1587265043.png', 17, '2020-04-18 19:57:23', '2020-04-18 22:00:33', 1),
(32, 'Mario Bros', 'Mario Bros Game Character', '1587265380.jpg', 17, '2020-04-18 20:03:00', '2020-04-18 20:03:00', 1),
(33, 'James Bond', 'james bond', '1587270311.jpg', 22, '2020-04-18 21:25:11', '2020-04-18 21:25:11', 11),
(34, 'Kensin Himura', 'kenshin', '1587270386.jpg', 22, '2020-04-18 21:26:26', '2020-04-18 21:26:26', 11),
(35, 'Clash Royale', 'game favorit', '1587270448.jpg', 23, '2020-04-18 21:27:28', '2020-04-18 21:27:28', 11),
(36, 'Lentik Mata Wanita', 'lentik mata wanita', '1587270492.jpg', 24, '2020-04-18 21:28:12', '2020-04-18 21:28:12', 11);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_05_122252_create_album_table', 1),
(4, '2020_04_05_122313_create_galeri_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2020_04_12_034005_add_field_user_galeri', 2),
(7, '2020_04_12_042331_add_field_lever_user', 3);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'Lukmanul Hakim', 'bukulokomedia@gmail.com', NULL, '$2y$10$w0DYHP/bwNvg0R.cnf3hKeiA5igNmmS0SaA4Hd6wJ7Ip42oRdNHoe', NULL, '2020-04-09 22:18:30', '2020-04-09 22:18:30', 'admin'),
(4, 'Hakim Olajuwon', 'algosigma@gmail.com', NULL, '$2y$10$oX0EAIxXUE/3FX6PxlUaW.xloNlK3EF9vquI0f3zNS9nEiXvRZsyC', NULL, '2020-04-12 00:37:03', '2020-04-12 00:37:03', 'operator'),
(7, 'Perwira Abrianto', 'perwira@bukulokomedia.com', NULL, '$2y$10$Jk/4RI81wzSuz9GUGbNDReUNKXy3AJpZ.39txc//9P6lH6ID6fkBm', NULL, '2020-04-12 20:21:40', '2020-04-12 20:21:40', 'admin'),
(10, 'Beauty Khuluqiyah', 'beauty@beast.com', NULL, '$2y$10$IB.o/c97AGaIPqB1K.OpkuUo/mNRxkd8VrebKNShNE/4OG1dTRLe.', NULL, '2020-04-12 20:41:55', '2020-04-12 20:41:55', 'operator'),
(11, 'Untung Slamet', 'untung@bukulokomedia.com', NULL, '$2y$10$Wj3.tD96wV./0Klx9RZw/.v.oIQQTq.2Y/E0a3NMooDmpfzsoXaf2', NULL, '2020-04-12 20:42:40', '2020-04-12 20:42:40', 'operator'),
(12, 'Yazid Nafian', 'bukuflash@yahoo.com', NULL, '$2y$10$XxMt1vEFDClVMAVEZoBEcepBkTFlw6Kl/LfVOsn7aEXh4zY4UgQF.', NULL, '2020-04-12 20:43:46', '2020-04-12 20:43:46', 'operator'),
(13, 'Administrator', 'admin@bukulokomedia.com', NULL, '$2y$10$InY6lpAw1r9X9boFL/GnMeY/6/MSP7N90SmGPyZZ45Qtov5qpdfiS', NULL, '2020-04-13 03:06:59', '2020-04-13 03:06:59', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeri_id_album_foreign` (`id_album`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_id_album_foreign` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
