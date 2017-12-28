-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2017 at 08:09 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangrapat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'putri', '4093fed663717c843bea100d17fb67c8'),
(3, 'asd', 'bfd59291e825b5f2bbf1eb76569f8fe7');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `kd_ruangan` varchar(255) NOT NULL,
  `tgl_booking` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_penggunaan` date NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_user`, `kd_ruangan`, `tgl_booking`, `tgl_penggunaan`, `keterangan`) VALUES
(176, 9, 'R001', '2017-09-19 07:34:33', '2017-09-19', 'rapat LKTM'),
(177, 9, 'R002', '2017-11-01 05:14:16', '2017-11-30', 'rapat LKTA'),
(178, 9, 'R002', '2017-11-01 05:09:54', '2017-10-30', 'rapat'),
(179, 9, 'R001', '2017-11-01 05:11:04', '0000-00-00', 'rapat'),
(180, 9, 'R001', '2017-11-09 17:53:44', '2017-11-10', 'rapat'),
(181, 10, 'R002', '2017-11-30 11:50:52', '2017-12-21', 'rapat lktd'),
(182, 17, 'R002', '2017-12-27 04:41:28', '2017-12-28', 'rapat Pusdatin'),
(183, 9, 'R002', '2017-12-11 17:00:00', '2017-12-31', 'Rapat HIMA');

-- --------------------------------------------------------

--
-- Table structure for table `foto_ruangan`
--

CREATE TABLE `foto_ruangan` (
  `id_foto` int(11) NOT NULL,
  `kd_ruangan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto_ruangan`
--

INSERT INTO `foto_ruangan` (`id_foto`, `kd_ruangan`, `foto`) VALUES
(9, 'R001', 'ruang rapat a_1.jpg'),
(10, 'R001', 'ruang rapat a_2.jpg'),
(11, 'R001', 'ruang rapat a_3.jpg'),
(12, 'R001', 'ruang rapat a_4.jpg'),
(13, 'R001', 'ruang rapat a_5.jpg'),
(14, 'R002', 'ruang rapat b_1.jpg'),
(15, 'R002', 'ruang rapat b_2.jpg'),
(16, 'R002', 'ruang rapat b_3.jpg'),
(17, 'R002', 'ruang rapat b_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `kd_ruangan` varchar(255) NOT NULL,
  `nama_ruangan` char(20) NOT NULL,
  `kapasitas` int(30) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kd_ruangan`, `nama_ruangan`, `kapasitas`, `unit_kerja`) VALUES
('R001', 'Ruang Rapat A', 100, 'Pusdatin'),
('R002', 'Ruang Rapat B', 30, 'Pusdatin'),
('R003', 'Ruang Rapat C', 30, 'Pusdatin'),
('R004', 'Ruang Rapat D', 20, 'Pusdatin'),
('R005', 'Ruang Rapat 5', 40, 'Pusdatin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `NIP` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `NIP`, `nama`, `email`, `password`, `unit_kerja`, `jabatan`) VALUES
(1, 0, 'alfi ramdhani', 'alfiskensa@gmail.com', 'dc8e535fc058bfda4d72', '', 'kepala upt'),
(2, 0, 'bajora', '', '67890', '', 'manager'),
(3, 0, 'putri', '', '55555', '', 'staff'),
(4, 0, 'alfi', '', '012345', '', 'staff'),
(8, 0, 'alfi', 'vincentalfi@gmail.com', 'dc8e535fc058bfda4d724fdc2addb3f7', 'pusdatin', 'kepala upt'),
(9, 0, 'alfi ramdhani', 'alfiuhamka@gmail.com', 'f181d18dfb40c0d78e670eeb258aad29', 'pusdatin', 'kepala upt'),
(10, 0, 'alfi', 'alfiramdhani@gmail.com', 'dc8e535fc058bfda4d724fdc2addb3f7', 'pusdatin', 'kepala'),
(11, 0, 'alfi ramdhani', 'alfialfi@gmail.com', 'f181d18dfb40c0d78e670eeb258aad29', '', 'kepala bidang'),
(12, 0, 'yusuf', 'yusuf@gmail.com', '8542516f8870173d7d1daba1daaaf0a1', '', 'anggota'),
(13, 0, 'fuad', 'fuad123@gmail.com', '65e8800b5c6800aad896f888b2a62afc', '', 'direktur'),
(14, 0, 'jjs', 'j', '8ce4b16b22b58894aa86c421e8759df3', '', 'k'),
(17, 1403015006, 'alfi ramdhani', 'alfi@outlook.com', 'f181d18dfb40c0d78e670eeb258aad29', 'kepala', 'Pusdatin'),
(18, 140305086, 'putri', 'putriprtwi@gmail.com', '2e2a21d40a9d946a226fa0619c2ceb11', 'staff', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`,`id_user`,`kd_ruangan`) USING BTREE,
  ADD KEY `id_user` (`id_user`),
  ADD KEY `kd_ruangan` (`kd_ruangan`);

--
-- Indexes for table `foto_ruangan`
--
ALTER TABLE `foto_ruangan`
  ADD PRIMARY KEY (`id_foto`,`kd_ruangan`) USING BTREE,
  ADD KEY `kd_ruangan` (`kd_ruangan`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `foto_ruangan`
--
ALTER TABLE `foto_ruangan`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`kd_ruangan`) REFERENCES `ruangan` (`kd_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto_ruangan`
--
ALTER TABLE `foto_ruangan`
  ADD CONSTRAINT `foto_ruangan_ibfk_1` FOREIGN KEY (`kd_ruangan`) REFERENCES `ruangan` (`kd_ruangan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
