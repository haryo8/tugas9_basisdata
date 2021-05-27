-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2021 at 04:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haryo9_311910572`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kode_kamar` int(11) NOT NULL,
  `jenis_kamar` int(11) NOT NULL,
  `tarif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kode_kamar`, `jenis_kamar`, `tarif`) VALUES
(322, 45, 15000),
(323, 70, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `no_registrasi` int(11) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `lama_inap` int(11) NOT NULL,
  `tarif` int(25) NOT NULL,
  `total_tarif` int(25) NOT NULL,
  `kode_kamar` int(15) NOT NULL,
  `id_penghuni` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`no_registrasi`, `tgl_daftar`, `lama_inap`, `tarif`, `total_tarif`, `kode_kamar`, `id_penghuni`) VALUES
(321, '2021-05-04', 3, 15000, 50000, 322, 901),
(332, '2021-05-04', 6, 201000, 456000, 323, 443),
(345, '2021-05-13', 4, 15000, 60000, 322, 902);

-- --------------------------------------------------------

--
-- Table structure for table `tamu_hotel`
--

CREATE TABLE `tamu_hotel` (
  `id_penghuni` int(11) NOT NULL,
  `nama_penghuni` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu_hotel`
--

INSERT INTO `tamu_hotel` (`id_penghuni`, `nama_penghuni`) VALUES
(443, 'ardi'),
(901, 'haryo'),
(902, 'jack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kode_kamar`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`no_registrasi`),
  ADD KEY `kode_kamar` (`kode_kamar`),
  ADD KEY `id_penghuni` (`id_penghuni`);

--
-- Indexes for table `tamu_hotel`
--
ALTER TABLE `tamu_hotel`
  ADD PRIMARY KEY (`id_penghuni`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `no_registrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `tamu_hotel`
--
ALTER TABLE `tamu_hotel`
  MODIFY `id_penghuni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=903;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`kode_kamar`) REFERENCES `registrasi` (`kode_kamar`);

--
-- Constraints for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD CONSTRAINT `registrasi_ibfk_1` FOREIGN KEY (`id_penghuni`) REFERENCES `tamu_hotel` (`id_penghuni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
