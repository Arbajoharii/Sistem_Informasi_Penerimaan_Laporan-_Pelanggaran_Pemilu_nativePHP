-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2019 at 01:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbarsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `id` int(5) NOT NULL,
  `jenis_pelanggaran` varchar(50) NOT NULL,
  `nama_pelapor` varchar(100) NOT NULL,
  `tempat_kejadian` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `pihak_terlapor` varchar(50) NOT NULL,
  `kronologi_kejadian` varchar(500) NOT NULL,
  `bukti_dugaan` varchar(100) NOT NULL,
  `staff_penerima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id`, `jenis_pelanggaran`, `nama_pelapor`, `tempat_kejadian`, `tgl_masuk`, `pihak_terlapor`, `kronologi_kejadian`, `bukti_dugaan`, `staff_penerima`) VALUES
(7, 'Kode Etik', 'Ardi Setiawan', 'TPS 3 Desa Karang Nangka', '2017-12-31', 'Eko Suat (Tim Sukses)', 'Saudara Eko Didapati telah membagikan uang kepada warga yang memilih', 'Poto dari pelapor', 'Amran S.H'),
(8, 'Administrasi', 'Andi', 'KPU Batu Bara', '2017-12-31', 'Ipul (Caleg)', 'Belum seselai verifikasi', 'Berkas yang belum di verifikasi', 'Amran S.H'),
(9, 'Kode Etik', 'Ipul', 'Gereja Lima Puluh', '2017-12-31', 'Andi', 'Didapati kampanye di tempat ibadah', 'Rekaman Suaran', 'Pandi S.H'),
(10, 'Pidana', 'Mastur', 'Perkebunan tanah datar', '2017-12-31', 'Ipul', 'Mengancam Tim Sukses', 'Sms yang diterima', 'Amran S.H'),
(11, 'Administrasi', 'Eko', 'Medan', '2017-12-31', 'Ardi', 'kampanye sebelum waktunya', 'Poto dari pelapor', 'Karim S.H');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nik` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tgl_melapor` date NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`nik`, `nama_lengkap`, `tgl_melapor`, `jenis_kelamin`, `alamat`, `id`) VALUES
('01/PID.B/2018/PN.KIS', 'A. Nasution', '2018-12-14', '2', '-', 4),
('01/PDT.G/2018/PN.KIS', 'J. Siahaan', '2018-12-10', '0', '-', 5),
('02/PID.B/2018/PN.KIS', 'Bejo', '2018-12-11', '0', 'Input ke CTS', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Divisi Penindakan dan Pelanggaran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
