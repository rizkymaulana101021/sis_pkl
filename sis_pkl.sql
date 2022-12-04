-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 05:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `sis_perusahaan`
--

-- --------------------------------------------------------
--
-- Table structure for table `data_perusahaan`
--

CREATE TABLE `data_perusahaan` (
  `id` int(11) NOT NULL,
  `nip_karyawan` int(20) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `nip_pengelola` int(11) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `tgl_perpanjangan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `data_perusahaan`
--

INSERT INTO `data_perusahaan` (
    `id`,
    `nip_karyawan`,
    `id_perusahaan`,
    `nip_pengelola`,
    `tgl_terbit`,
    `tgl_perpanjangan`,
    `status`
  )
VALUES (
    1,
    90001,
    1,
    10001,
    '2017-10-01',
    '2018-01-01',
    2
  ),
  (
    5,
    90002,
    2,
    10002,
    '2017-12-15',
    '2018-02-02',
    1
  ),
  (
    6,
    90003,
    3,
    10003,
    '2017-09-20',
    '2017-11-15',
    3
  );
-- --------------------------------------------------------
--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `id` int(11) NOT NULL,
  `nip_pengelola` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`id`, `nip_pengelola`, `nama`)
VALUES (1, 10001, 'budi'),
  (2, 10002, 'desi'),
  (3, 10003, 'bejo'),
  (4, 10004, 'dini');
-- --------------------------------------------------------
--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telpon` int(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `cp_nama` varchar(50) NOT NULL,
  `cp_email` varchar(50) NOT NULL,
  `cp_telpon` int(15) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (
    `id`,
    `nama_perusahaan`,
    `email`,
    `no_telpon`,
    `alamat`,
    `cp_nama`,
    `cp_email`,
    `cp_telpon`
  )
VALUES (
    1,
    'PT AINO',
    'aino@gmail.com',
    25678901,
    'Yogyakarta',
    'Fulan',
    'email@mail.com',
    897654689
  ),
  (
    2,
    'PT.TELKOM INDONESIA.TBK',
    'telkom@yahoo.com',
    2516289,
    'pajajaran',
    'ahmad jamal',
    'ahmadjamal@gmail.com',
    85720912
  ),
  (
    3,
    'PT WIKA',
    'wika@gmail.com',
    981234567,
    'jakarta pusat',
    'setnov',
    'setnov@yahoo.com',
    89012345
  );
-- --------------------------------------------------------
--
-- Table structure for table `menangani_bagian`
--

CREATE TABLE `menangani_bagian` (
  `id` int(11) NOT NULL,
  `menangani_bagian` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `menangani_bagian`
--

INSERT INTO `menangani_bagian` (`id`, `menangani_bagian`)
VALUES (1, 'karyawan_lepas'),
  (2, 'MM'),
  (3, 'TKJ');
-- --------------------------------------------------------
--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_menangani_bagian` int(11) NOT NULL,
  `kelas` varchar(12) NOT NULL,
  `nip_pengelola` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (
    `id`,
    `id_tahun`,
    `id_menangani_bagian`,
    `kelas`,
    `nip_pengelola`
  )
VALUES (1, 1, 1, 'XI', 10001),
  (2, 1, 2, 'X', 10002),
  (3, 1, 3, 'XII', 10003);
-- --------------------------------------------------------
--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `id` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama_pengelola` varchar(30) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`id`, `nip`, `nama_pengelola`)
VALUES (1, 9001, 'Lola J.s'),
  (2, 9002, 'Cahyadi rozi'),
  (6, 9004, 'Erwin Hasiholan'),
  (7, 9003, 'Zaenal Mutaqin ');
-- --------------------------------------------------------
--
-- Table structure for table `karyawan_lepas`
--

CREATE TABLE `karyawan_lepas` (
  `id` int(11) NOT NULL,
  `nip_karyawan` int(55) NOT NULL,
  `nama_karyawan` varchar(55) NOT NULL,
  `kelas` varchar(55) NOT NULL,
  `menangani_bagian` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `karyawan_lepas`
--

INSERT INTO `karyawan_lepas` (
    `id`,
    `nip_karyawan`,
    `nama_karyawan`,
    `kelas`,
    `menangani_bagian`
  )
VALUES (1, 1001, 'Agysna Minal F', 'XI', 'karyawan_lepas'),
  (2, 1002, 'Dwi Hari', 'Xi', 'Multimedia'),
  (3, 1003, 'Agung Fadilah', 'Xi', 'Tkj'),
  (4, 1004, 'Nurul Rahmi', 'Xi', 'Multimedia'),
  (8, 1005, 'Restie Manda', 'Xi', 'Multimedia'),
  (9, 1006, 'Fachry A', 'Xi', 'Tkj'),
  (10, 1007, 'Sinta aprilia', 'Xi', 'karyawan_lepas'),
  (11, 1008, 'Lutfiah Khaerunnisa', 'Xi', 'karyawan_lepas'),
  (12, 1009, 'Ahmad Waluya', 'Xi', 'karyawan_lepas'),
  (13, 1010, 'Vicka', 'Xi', 'Multimedia'),
  (14, 1011, 'Vicky', 'Xi', 'Multimedia'),
  (15, 1012, 'Ardi', 'Xi', 'Tkj'),
  (16, 1013, 'M. Saleh S', 'Xi', 'karyawan_lepas'),
  (17, 1014, 'Dhimas Marwahyu', 'Xi', 'karyawan_lepas'),
  (18, 1015, 'Astri', 'Xi', 'Multimedia'),
  (19, 1016, 'Rizky Maulana', 'Xi', 'karyawan_lepas'),
  (20, 1017, 'Risda Widarda', 'Xi', 'karyawan_lepas'),
  (21, 1018, 'Rakha Prasetya', 'Xi', 'karyawan_lepas'),
  (22, 1019, 'Atshilah Sahl', 'Xi', 'karyawan_lepas'),
  (23, 1020, 'Nurul Khodijah', 'Xi', 'Tkj'),
  (24, 1021, 'Rheina', 'Xi', 'Tkj');
-- --------------------------------------------------------
--
-- Table structure for table `sidang`
--

CREATE TABLE `sidang` (
  `id` int(11) NOT NULL,
  `nip_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `menangani_bagian` varchar(10) NOT NULL,
  `perusahaan` varchar(30) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
-- --------------------------------------------------------
--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` int(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `id_kelas`, `nama`, `nik`)
VALUES (1, 1, 'Rizky', 90001),
  (2, 1, 'Farhan', 90002),
  (3, 2, 'Rusli', 90003),
  (4, 3, 'dani', 90004);
-- --------------------------------------------------------
--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`)
VALUES (1, 'belum aktif'),
  (2, 'aktif'),
  (3, 'selesai');
-- --------------------------------------------------------
--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id` int(11) NOT NULL,
  `tahun1` int(11) NOT NULL,
  `tahun2` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id`, `tahun1`, `tahun2`)
VALUES (1, 2017, 2018),
  (2, 2018, 2019);
-- --------------------------------------------------------
--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`)
VALUES (1, 'admin', 'admin');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_perusahaan`
--
ALTER TABLE `data_perusahaan`
ADD PRIMARY KEY (`id`),
  ADD KEY `id_perusahaan` (`id_perusahaan`),
  ADD KEY `nip_pengelola` (`nip_pengelola`),
  ADD KEY `nip_karyawan` (`nip_karyawan`),
  ADD KEY `status` (`status`);
--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`);
--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `menangani_bagian`
--
ALTER TABLE `menangani_bagian`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
ADD PRIMARY KEY (`id`),
  ADD KEY `id_menangani_bagian` (`id_menangani_bagian`),
  ADD KEY `id_tahun` (`id_tahun`);
--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `karyawan_lepas`
--
ALTER TABLE `karyawan_lepas`
ADD PRIMARY KEY (`id`),
  ADD KEY `menangani_bagian` (`menangani_bagian`);
--
-- Indexes for table `sidang`
--
ALTER TABLE `sidang`
ADD PRIMARY KEY (`id`),
  ADD KEY `nip_karyawan` (`nip_karyawan`),
  ADD KEY `nama_karyawan` (`nama_karyawan`),
  ADD KEY `menangani_bagian` (`menangani_bagian`),
  ADD KEY `perusahaan` (`perusahaan`);
--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `nik` (`nik`);
--
-- Indexes for table `status`
--
ALTER TABLE `status`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `user`
--
ALTER TABLE `user`
ADD PRIMARY KEY (`id_user`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_perusahaan`
--
ALTER TABLE `data_perusahaan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `menangani_bagian`
--
ALTER TABLE `menangani_bagian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 8;
--
-- AUTO_INCREMENT for table `karyawan_lepas`
--
ALTER TABLE `karyawan_lepas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 26;
--
-- AUTO_INCREMENT for table `sidang`
--
ALTER TABLE `sidang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_perusahaan`
--
ALTER TABLE `data_perusahaan`
ADD CONSTRAINT `data_perusahaan_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id`),
  ADD CONSTRAINT `data_perusahaan_ibfk_2` FOREIGN KEY (`nip_karyawan`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_perusahaan_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Constraints for table `menangani_bagian`
--
ALTER TABLE `menangani_bagian`
ADD CONSTRAINT `menangani_bagian_ibfk_1` FOREIGN KEY (`id`) REFERENCES `kelas` (`id_menangani_bagian`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id`);
--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;