-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2022 pada 11.15
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
-- Struktur dari tabel `produk_sepatu`
--

CREATE TABLE `produk_sepatu` (
  `id_sepatu` int(200) NOT NULL,
  `nama_sepatu` varchar(20) NOT NULL,
  `ukuran_sepatu` varchar(20) NOT NULL,
  `harga_sepatu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_sepatu`
--

INSERT INTO `produk_sepatu` (`id_sepatu`, `nama_sepatu`, `ukuran_sepatu`, `harga_sepatu`) VALUES
(1, 'Geoff Max Dragon Ice', '42', '500000'),
(2, 'Brodo Vulcan Fire', '44', '1000000'),
(3, 'Nike Dark Shadow', '41', '2000000'),
(4, 'Adidas Thunder Bolt', '40', '2500000'),
(5, 'Diadora Head Hammer', '43', '3000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk_sepatu`
--
ALTER TABLE `produk_sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk_sepatu`
--
ALTER TABLE `produk_sepatu`
  MODIFY `id_sepatu` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
