-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2022 pada 11.55
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoesid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_sepatu`
--

CREATE TABLE `pembelian_sepatu` (
  `id_ps` int(200) NOT NULL,
  `nama_ps` varchar(200) NOT NULL,
  `alamat_ps` varchar(200) NOT NULL,
  `ukuran_ps` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_sepatu`
--

CREATE TABLE `produk_sepatu` (
  `id_sepatu` int(200) NOT NULL,
  `nama_sepatu` varchar(200) NOT NULL,
  `harga_sepatu` varchar(200) NOT NULL,
  `gambar_sepatu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_sepatu`
--

INSERT INTO `produk_sepatu` (`id_sepatu`, `nama_sepatu`, `harga_sepatu`, `gambar_sepatu`) VALUES
(63, 'Nike Hazard Falcon', '2000000', 'c.webp'),
(80, '535', '4255', 'd.webp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Puding', 'apasih@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'Puding', '123456789@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(3, 'padang', '234@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', 'user'),
(4, 'farhan', 'farhan@gmail.com', 'd1bbb2af69fd350b6d6bd88655757b47', 'admin'),
(5, 'apahayo', 'hayo@gmail.com', '6d8a6dae33d1c8276853e32544b4ccf6', 'admin'),
(6, 'akuadmin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(7, 'adminsiapa', 'siapa@gmail.com', '2128e15b849bb3d5b1fa88cc18d494fe', 'admin'),
(8, 'dama', 'farhan@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(9, '123', '123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(11, 'Rito Mosaza', 'rizalabimanyu2002@gmail.com', 'qqq', 'admin'),
(12, 'rizal abimanyu', 'ra@gmail.com', 'qwert', 'user'),
(13, 'rizal', 'rizal@gmail.com', 'qqq', 'user'),
(14, 'rizal', 'rizal2002@gmail.com', 'qwert', 'user'),
(15, 'qwert', 'qwert@gmail.com', 'qwert', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembelian_sepatu`
--
ALTER TABLE `pembelian_sepatu`
  ADD PRIMARY KEY (`id_ps`);

--
-- Indeks untuk tabel `produk_sepatu`
--
ALTER TABLE `produk_sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indeks untuk tabel `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembelian_sepatu`
--
ALTER TABLE `pembelian_sepatu`
  MODIFY `id_ps` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk_sepatu`
--
ALTER TABLE `produk_sepatu`
  MODIFY `id_sepatu` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
