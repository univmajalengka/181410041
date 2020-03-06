-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2020 pada 08.36
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `si_manajemen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('rai', 'pass');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barrang`
--

CREATE TABLE IF NOT EXISTS `tabel_barrang` (
  `id_barang` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `id_lok` varchar(20) NOT NULL,
  `tgl_peng` varchar(20) NOT NULL,
  `inven` varchar(20) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `asal` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_asal`
--

CREATE TABLE IF NOT EXISTS `tabel_data_asal` (
  `id_asal` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_asal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_detail`
--

CREATE TABLE IF NOT EXISTS `tabel_data_detail` (
  `id_brg` varchar(20) NOT NULL,
  `atk` varchar(20) NOT NULL,
  `elektronik` varchar(20) NOT NULL,
  `perabotan` varchar(20) NOT NULL,
  `bangunan` varchar(20) NOT NULL,
  `perlengkapan` varchar(20) NOT NULL,
  `ket` varchar(20) NOT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_klas`
--

CREATE TABLE IF NOT EXISTS `tabel_data_klas` (
  `id_klas` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_klas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_lokasi`
--

CREATE TABLE IF NOT EXISTS `tabel_data_lokasi` (
  `id_lok` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_lok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
