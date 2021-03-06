-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 12:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `jenis_kategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `jenis_kategori`) VALUES
(1, 'Makanan', 'Cakee'),
(3, 'Minuman', 'Boba'),
(4, 'Makanan', 'Desert');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kode_menu` varchar(255) NOT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `harga_menu` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_menu` varchar(250) NOT NULL,
  `jenis_menu` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `kode_menu`, `nama_menu`, `harga_menu`, `foto`, `status_menu`, `jenis_menu`) VALUES
(1, '901', 'Cake Strawbery', '19000', 'rainbow_cake_20402_16x92.jpg', 'Status Makanan', 'makanan'),
(2, '901', 'SaysStory Fraanchise', '12000', 'franchise-say-story-murah.jpg', 'Tersedia', 'minuman'),
(3, '89', 'SaysStory Choklateeee', '1000', 'index2.jpg', 'Status Makanan', 'minuman'),
(4, '89', 'Urangg', '1000', '32.jpg', 'Tidak', 'makanan'),
(5, '1929', 'SaysStory Choklate', '56000', 'franchise-say-story-murah1.jpg', 'Tersedia', 'minuman'),
(7, '78787', 'SaysStory tytyddddd', '9898', 'blurred-busy-restaurant-background-free-photo.JPG', 'Status Makanan', 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `tanggal_pemesan` date NOT NULL,
  `kode_pemesanan` varchar(255) NOT NULL,
  `nama_pembeli` varchar(250) NOT NULL,
  `id_menu` int(12) NOT NULL,
  `jenis_menu` varchar(120) NOT NULL,
  `no_hp` varchar(250) NOT NULL,
  `status_order` varchar(250) NOT NULL,
  `jumlah_pemesanan` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `tanggal_pemesan`, `kode_pemesanan`, `nama_pembeli`, `id_menu`, `jenis_menu`, `no_hp`, `status_order`, `jumlah_pemesanan`) VALUES
(2, '2022-06-15', '1999', 'Ahmad', 0, 'minuman', '089281', 'Selesai', '150'),
(3, '2022-06-10', '120', 'Fais', 3, 'minuman', '08182827', 'Selesai', '150'),
(6, '2022-06-14', '878', 'reza', 3, '3', '656757', 'Selesai', '90'),
(7, '2022-06-15', '78878', 'FAldan', 0, 'Jenis Menu', '089878', 'Selesai', '0'),
(8, '2022-06-15', '7887', 'Neng', 1, '0', '0987878', 'Selesai', '900'),
(9, '2022-06-15', '7878', 'Tytyd', 2, 'makanan', '98989', 'Selesai', '900');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(1, 'Admin', 'admin@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1),
(2, 'User', 'user@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2),
(4, 'ahmadfauzi', 'ahmadfauzi@gmail.com', '$2y$10$WW79.dXXCkva8Txcg.Lre.RAP4OCsD5mK/aJUpLDSlphkU5opldcS', 2),
(5, 'ahmad faiz', 'ahmadfaiz@gmail.com', '$2y$10$0gvq5Jqg3ArLwkJd2Jcyauy8m7OBvULNWsX2o.K7XPOok4NquHM8i', 2),
(6, 'ahmad faiz', 'ahmadfaisasu@gmail.com', '$2y$10$kRl4PKQ2QV8BZ0O/o6tOD.cBoXvvICzR..dfRXLWontDwnpBUj9LK', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_email_unique` (`email`),
  ADD KEY `login_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `login_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
