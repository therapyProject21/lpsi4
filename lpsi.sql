-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2025 pada 12.22
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lpsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `igambar1`
--

CREATE TABLE `igambar1` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `igambar1`
--

INSERT INTO `igambar1` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(13, 'logoLPSI.png', '2025-01-24 10:41:39', '2025-01-24 10:41:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi1`
--

CREATE TABLE `informasi1` (
  `id` int(11) NOT NULL,
  `teks` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi1`
--

INSERT INTO `informasi1` (`id`, `teks`, `created_at`, `updated_at`) VALUES
(23, 'holla\r\n', '2025-01-24 10:27:52', '2025-01-24 10:27:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Nomor` varchar(15) DEFAULT NULL,
  `Password_LPSI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`ID`, `Nama`, `Alamat`, `Nomor`, `Password_LPSI`) VALUES
(5, 'arnab', 'Surabaya, Jawa Timur', '081212341234', '$2y$10$lUBNz88l/bAX5oJDnXO6rekfWFJaAzA75wSunLK8T.kIIp6HHHPUq'),
(6, 'Chairul Hidayat', 'Ampelgading, Pemalang', '083833506086', '$2y$10$u.8NrnbuSdiYiNAkng5xIelCXxjNHBVxbXkx1YqzxJ5Ost5FIg6im');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `igambar1`
--
ALTER TABLE `igambar1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi1`
--
ALTER TABLE `informasi1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `igambar1`
--
ALTER TABLE `igambar1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `informasi1`
--
ALTER TABLE `informasi1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
