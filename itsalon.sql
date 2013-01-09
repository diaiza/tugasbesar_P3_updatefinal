-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 09. Januari 2013 jam 23:12
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itsalon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hairstyle`
--

CREATE TABLE IF NOT EXISTS `hairstyle` (
  `id_hairstyle` varchar(3) NOT NULL,
  `nama_hairstyle` varchar(20) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `id_variable` varchar(3) NOT NULL,
  `id_jadwal` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hairstyle`
--

INSERT INTO `hairstyle` (`id_hairstyle`, `nama_hairstyle`, `username`, `password`, `id_variable`, `id_jadwal`) VALUES
('H01', 'Rudi Hadiswarno', 'rudi01', 'rudi01', 'V01', 'J01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` varchar(3) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` varchar(3) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
  `id_pesanan` varchar(3) NOT NULL,
  `nama_pesanan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nama_variable` varchar(15) NOT NULL,
  `nama_hairstyle` varchar(20) NOT NULL,
  `harga_variable` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(2) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `alamat`, `telp`) VALUES
('01', 'Tiara N. Anggraeni', 'tiara1', 'tiara1', 'Cileungsi - Bogor', '081212345555'),
('02', 'Izzah F. Akmaliah', 'izzah1', 'izzah1', 'Cimahpar - Bogor', '088812340000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `variable`
--

CREATE TABLE IF NOT EXISTS `variable` (
  `id_variable` varchar(3) NOT NULL,
  `nama_variable` varchar(15) NOT NULL,
  `harga_variable` varchar(10) NOT NULL,
  `tipe_variable` varchar(10) NOT NULL,
  `id_hairstyle` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
