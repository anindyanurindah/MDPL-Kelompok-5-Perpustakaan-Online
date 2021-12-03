-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2021 pada 01.24
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpbookstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(2, 'Minceu Cantip', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_ketegori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `halaman` varchar(5) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `stok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_ketegori`, `judul`, `gambar`, `penerbit`, `pengarang`, `halaman`, `harga`, `stok`) VALUES
(21, 14, '          Kalkulus', '20210602043150.jpg', '           PT. Yuk Bisa Yuk', '         Anindya S.Kom, M.Kom', ' 225', '         2', '65'),
(23, 14, '   Kimia', '20210601182719.png', '   CV. Maju', '   Abdillah S.Kom, M.Kom', '   90', '  250000', '19'),
(24, 15, 'PHP', '20170217164739.jpg', 'PT. Asik', 'Annisa S.Kom, M.Kom', '100', '5000000', '16'),
(25, 16, 'Bisnis Online', '20170217164900.jpg', 'PT. Beruang', 'Indah S.Kom, M.Kom', '10', '100000', '45'),
(27, 15, 'Sistem Operasi', '20170221040107.jpg', 'PT. Aman', 'Fany S.Kom, M.Kom', '100', '200000', '40'),
(33, 18, 'Sebuah Usaha Untuk Melupakan', '20210602043334.jpg', 'Pt. Gramedia', 'Boy Candra', '273', '150000', '19'),
(34, 15, 'zzzz', '20211009174204.jpg', 'anin', 'anin', '234', '10000', '34'),
(35, 16, 'aaa', '20211124095037.png', 'aaa', 'aaaaaa', '1223', '', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chekout`
--

CREATE TABLE `chekout` (
  `id_chekout` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_tlp` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `status_terima` enum('belum di terima','sudah diterima') NOT NULL,
  `active` enum('T','F','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chekout`
--

INSERT INTO `chekout` (`id_chekout`, `id_pembeli`, `nama`, `alamat`, `nomor_tlp`, `tanggal`, `status_terima`, `active`) VALUES
(23, 8, '222', '232323', '232323', '21-05-2021', 'sudah diterima', 'F'),
(29, 26, 'dillah', 'kulon progo', '12345678', '24-05-2021', 'sudah diterima', 'F'),
(30, 27, 'xxx', 'solo', '12345678', '27-05-2021', 'sudah diterima', 'F'),
(31, 26, 'abdillah', 'kulpro', '12345678', '28-05-2021', 'sudah diterima', 'F'),
(32, 26, 'Abdilllah', 'kulon progo', '12345678', '28-05-2021', 'belum di terima', 'F'),
(33, 26, 'q', 'kulon progo', '123456', '28-05-2021', 'sudah diterima', 'F'),
(34, 26, 'Abdilllah', 'kulon progo', '12345678', '28-05-2021', 'belum di terima', 'F'),
(35, 26, 'abb', 'kulon progo', '12345678', '28-05-2021', 'sudah diterima', 'F'),
(36, 26, 'Abdilllah', 'kulon progo', '12345678', '28-05-2021', 'sudah diterima', 'F'),
(37, 26, 'Abdilllah', 'kulon progo', '12345678', '30-05-2021', 'sudah diterima', 'F'),
(38, 28, 'akakaka', 'zzzz', 'qewr', '24-11-2021', 'sudah diterima', 'F'),
(39, 28, '', '', '', '24-11-2021', 'sudah diterima', 'F');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_pembeli`, `nama`, `username`, `password`) VALUES
(28, 'xabiru', 'xabiru', 'xabiru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_ketegori` int(11) NOT NULL,
  `kategori` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_ketegori`, `kategori`) VALUES
(14, 'Pendidikan'),
(15, 'Tehnologi Informatika'),
(16, 'Kewirausahaan'),
(18, 'Romance'),
(32, 'Horor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_chekout` int(11) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL,
  `total_bayar` varchar(50) NOT NULL,
  `status` enum('new','old') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_pembeli`, `id_buku`, `id_chekout`, `qty`, `harga`, `total_harga`, `total_bayar`, `status`) VALUES
(16, 13, 26, 23, '1', ' 99000000', '99000000', '', 'old'),
(52, 8, 21, 28, '1', ' 1000000', '1000000', '', 'old'),
(55, 27, 21, 30, '1', '  300000', '300000', '', 'old');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `chekout`
--
ALTER TABLE `chekout`
  ADD PRIMARY KEY (`id_chekout`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_ketegori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `chekout`
--
ALTER TABLE `chekout`
  MODIFY `id_chekout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_ketegori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
