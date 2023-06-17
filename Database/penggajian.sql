-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 09:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(9, 'Staff Marketing', '6500000', '800000', '500000'),
(12, 'Mandor', '5500000', '800000', '500000'),
(18, 'Admin', '4700000', '850000', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `jumlah_hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `jumlah_hadir`, `sakit`, `alpha`) VALUES
(48, '062023', '32011110904902', 'Amad', 'Laki-laki', 'Staff Marketing', 19, 1, 3),
(49, '062023', '3201111909090', 'Jhony', 'Laki-laki', 'Mandor', 20, 1, 2),
(50, '062023', '32011115845', 'Adi', 'Perempuan', 'Mandor', 30, 1, 1),
(51, '062023', '32011117184', 'Dinda', 'Perempuan', 'Admin', 30, 1, 0),
(52, '052023', '32011115845', 'Adi', 'Laki-laki', 'Mandor', 20, 1, 0),
(53, '052023', '32011110904902', 'Amad', 'Laki-laki', 'Staff Marketing', 30, 0, 2),
(54, '052023', '32011117184', 'Dinda', 'Perempuan', 'Admin', 30, 1, 0),
(55, '052023', '3201111909090', 'Jhony', 'Laki-laki', 'Mandor', 20, 0, 1),
(56, '062023', '320111158403', 'Wulan', 'Perempuan', 'Admin', 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(48, '32011110904902', 'Amad', 'amad', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Staff Marketing', '2023-06-04', 'Pegawai Tidak Tetap', 'avatar34.jpg', 2),
(49, '3201111909090', 'Jhony', 'jhony', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Mandor', '2021-01-04', 'Pegawai Tetap', 'ujang3.jpg', 2),
(54, '32011115845', 'Adi', 'adi', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Mandor', '2023-06-10', 'Pegawai Tetap', 'avatar35.jpg', 2),
(55, '32011117184', 'Dinda', 'dinda', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Admin', '2023-06-10', 'Pegawai Tetap', 'avatar26.jpg', 1),
(56, '320111158403', 'Wulan', 'wulan', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Admin', '2023-06-13', 'Pegawai Tetap', 'avatar27.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(4, 'alpha', 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
