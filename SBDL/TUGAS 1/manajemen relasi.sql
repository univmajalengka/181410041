-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 13 Mar 2020 pada 02.34
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
('rai', 'pass'),
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
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `id_kelas` (`id_kelas`),
  UNIQUE KEY `id_lok` (`id_lok`),
  KEY `id_kelas_2` (`id_kelas`),
  KEY `id_lok_2` (`id_lok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_barrang`
--

INSERT INTO `tabel_barrang` (`id_barang`, `nama`, `id_kelas`, `id_lok`, `tgl_peng`, `inven`, `jumlah`, `asal`, `status`) VALUES
('9988', 'ahmad', '7788', 'mjl', '19-oktober-20', 'atk', '12', 'perpus', 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_asal`
--

CREATE TABLE IF NOT EXISTS `tabel_data_asal` (
  `id_asal` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_asal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_data_asal`
--

INSERT INTO `tabel_data_asal` (`id_asal`, `nama`) VALUES
('9988', 'ahmad');

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

--
-- Dumping data untuk tabel `tabel_data_detail`
--

INSERT INTO `tabel_data_detail` (`id_brg`, `atk`, `elektronik`, `perabotan`, `bangunan`, `perlengkapan`, `ket`) VALUES
('9988', 'atk', '-', '-', '-', '-', 'pinjam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_klas`
--

CREATE TABLE IF NOT EXISTS `tabel_data_klas` (
  `id_klas` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_klas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_data_klas`
--

INSERT INTO `tabel_data_klas` (`id_klas`, `nama`) VALUES
('7788', 'ahmad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data_lokasi`
--

CREATE TABLE IF NOT EXISTS `tabel_data_lokasi` (
  `id_lok` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  PRIMARY KEY (`id_lok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_data_lokasi`
--

INSERT INTO `tabel_data_lokasi` (`id_lok`, `nama`) VALUES
('mjl', 'ahmad');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_data_asal`
--
ALTER TABLE `tabel_data_asal`
  ADD CONSTRAINT `tabel_data_asal_ibfk_1` FOREIGN KEY (`id_asal`) REFERENCES `tabel_data_detail` (`id_brg`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_data_detail`
--
ALTER TABLE `tabel_data_detail`
  ADD CONSTRAINT `tabel_data_detail_ibfk_1` FOREIGN KEY (`id_brg`) REFERENCES `tabel_barrang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_data_klas`
--
ALTER TABLE `tabel_data_klas`
  ADD CONSTRAINT `tabel_data_klas_ibfk_1` FOREIGN KEY (`id_klas`) REFERENCES `tabel_barrang` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_data_lokasi`
--
ALTER TABLE `tabel_data_lokasi`
  ADD CONSTRAINT `tabel_data_lokasi_ibfk_1` FOREIGN KEY (`id_lok`) REFERENCES `tabel_barrang` (`id_lok`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
