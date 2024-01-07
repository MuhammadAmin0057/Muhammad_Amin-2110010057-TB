-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 13.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(4) NOT NULL,
  `nama_mobil` varchar(10) NOT NULL,
  `no_polisi` varchar(20) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `harga_sewa` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `no_polisi`, `merek`, `harga_sewa`, `status`) VALUES
('A002', 'Bus Mini', 'DA3465VX', 'JAZZ', '600000', 'Notready'),
('A003', 'Bus mini', 'DA5664MJ', 'SEDAN', '500000', 'Notready'),
('A005', 'Bus', 'DA9402GT', 'Kencang', '18000000', 'Notready'),
('A008', 'AYLA', 'DA0986TU', 'HONDA', '480000', 'Notready');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perental`
--

CREATE TABLE `perental` (
  `id_perental` varchar(4) NOT NULL,
  `nama_perental` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perental`
--

INSERT INTO `perental` (`id_perental`, `nama_perental`, `alamat`, `no_tlp`, `no_ktp`, `status`) VALUES
('A001', 'min', 'kuin', '43252252', '235235', 'Notready'),
('A002', 'Alfi', 'Kapuas', '09847327121', '8493382761783', 'Notready'),
('A006', 'wahyu', 'alalak', '0858737283', '838276278435', 'Notready'),
('A009', 'Ahmad', 'tulip', '083275643', '89583773885', 'Notready');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental`
--

CREATE TABLE `rental` (
  `id_rental` varchar(4) NOT NULL,
  `id_penyewa` varchar(4) NOT NULL,
  `id_mobil` varchar(4) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `nama_mobil` varchar(10) NOT NULL,
  `harga_sewa` varchar(10) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rental`
--

INSERT INTO `rental` (`id_rental`, `id_penyewa`, `id_mobil`, `nama_penyewa`, `nama_mobil`, `harga_sewa`, `tgl`, `status`) VALUES
('A004', 'A001', 'A002', 'min', 'Bus Mini', '600000', 'null', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tlp` varchar(13) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `tgl_lahir`, `username`, `email`, `tlp`, `password`) VALUES
(1, 'user', '24-10-2003', 'mhmmdmin24', 'mhmmdamin39@gmail.com', '083127493595', '12345678'),
(3, 'amin', '01-10-2002', 'minmin', 'min21@gmail.com', '082153476328', '11223344');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `perental`
--
ALTER TABLE `perental`
  ADD PRIMARY KEY (`id_perental`);

--
-- Indeks untuk tabel `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id_rental`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
