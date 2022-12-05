-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 02:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metodesaw`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(1, 'Layli Luthfiah, SE'),
(2, 'Ainur Rofiq'),
(3, 'Muhammad Mukhlis'),
(4, 'Devi Primadanni, SH'),
(5, 'Tyaste Aditya Nugraha'),
(6, 'Firandita Chairawati, SE'),
(7, 'Fita Andriana U, S. S.I.Pust.'),
(8, 'Ayu Fauziyah Suminar, A.Md'),
(9, 'Sudarmaji'),
(10, 'Achmad Asril Salirizki');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `id_kriteria`, `value`) VALUES
(1, 1, 0.339732143),
(2, 2, 0.214732143),
(3, 3, 0.152232143),
(4, 4, 0.110565476),
(5, 5, 0.079315476),
(6, 6, 0.054315476),
(7, 7, 0.033482143),
(8, 8, 0.015625);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`) VALUES
(1, 'Kesetiaan'),
(2, 'Prestasi Kerja'),
(3, 'Tanggung Jawab'),
(4, 'Ketaatan'),
(5, 'Kejujuran'),
(6, 'Kerja Sama'),
(7, 'Prakarsa'),
(8, 'Kepemimpinan');

-- --------------------------------------------------------

--
-- Table structure for table `matriks`
--

CREATE TABLE `matriks` (
  `id_matriks` int(11) NOT NULL,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_bobot` int(11) DEFAULT NULL,
  `id_skala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matriks`
--

INSERT INTO `matriks` (`id_matriks`, `id_alternatif`, `id_bobot`, `id_skala`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 4),
(3, 1, 3, 4),
(4, 1, 4, 4),
(5, 1, 5, 4),
(6, 1, 6, 4),
(7, 1, 7, 4),
(8, 1, 8, 4),
(9, 2, 1, 4),
(10, 2, 2, 3),
(11, 2, 3, 4),
(12, 2, 4, 4),
(13, 2, 5, 4),
(14, 2, 6, 4),
(15, 2, 7, 4),
(16, 2, 8, 3),
(17, 3, 1, 5),
(18, 3, 2, 4),
(19, 3, 3, 4),
(20, 3, 4, 4),
(21, 3, 5, 4),
(22, 3, 6, 4),
(23, 3, 7, 5),
(24, 3, 8, 4),
(25, 4, 1, 5),
(26, 4, 2, 4),
(27, 4, 3, 4),
(28, 4, 4, 4),
(29, 4, 5, 4),
(30, 4, 6, 4),
(31, 4, 7, 5),
(32, 4, 8, 4),
(33, 5, 1, 4),
(34, 5, 2, 3),
(35, 5, 3, 4),
(36, 5, 4, 4),
(37, 5, 5, 4),
(38, 5, 6, 4),
(39, 5, 7, 5),
(40, 5, 8, 3),
(41, 6, 1, 5),
(42, 6, 2, 5),
(43, 6, 3, 4),
(44, 6, 4, 4),
(45, 6, 5, 4),
(46, 6, 6, 4),
(47, 6, 7, 5),
(48, 6, 8, 4),
(49, 7, 1, 5),
(50, 7, 2, 4),
(51, 7, 3, 5),
(52, 7, 4, 5),
(53, 7, 5, 5),
(54, 7, 6, 5),
(55, 7, 7, 5),
(56, 7, 8, 4),
(57, 8, 1, 5),
(58, 8, 2, 4),
(59, 8, 3, 5),
(60, 8, 4, 4),
(61, 8, 5, 4),
(62, 8, 6, 4),
(63, 8, 7, 5),
(64, 8, 8, 4),
(65, 9, 1, 3),
(66, 9, 2, 4),
(67, 9, 3, 4),
(68, 9, 4, 2),
(69, 9, 5, 3),
(70, 9, 6, 4),
(71, 9, 7, 5),
(72, 9, 8, 2),
(83, 10, 1, 4),
(84, 10, 2, 4),
(85, 10, 3, 3),
(86, 10, 4, 4),
(87, 10, 5, 3),
(88, 10, 6, 3),
(89, 10, 7, 3),
(90, 10, 8, 5),
(92, 2, 1, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `multimoora_1`
-- (See below for the actual view)
--
CREATE TABLE `multimoora_1` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`pra` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `multimoora_2`
-- (See below for the actual view)
--
CREATE TABLE `multimoora_2` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`pra` double
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `multimoora_3`
-- (See below for the actual view)
--
CREATE TABLE `multimoora_3` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`pra` double
,`normalisasi` double
,`normalisasibobot` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `multimoora_4`
-- (See below for the actual view)
--
CREATE TABLE `multimoora_4` (
`id_alternatif` int(11)
,`hasil` double
);

-- --------------------------------------------------------

--
-- Table structure for table `skala`
--

CREATE TABLE `skala` (
  `id_skala` int(11) NOT NULL,
  `nama_skala` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skala`
--

INSERT INTO `skala` (`id_skala`, `nama_skala`, `value`) VALUES
(1, 'Sangat Kurang', '1'),
(2, 'Kurang', '2'),
(3, 'Cukup', '3'),
(4, 'Baik', '4'),
(5, 'Sangat Baik', '5');

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_maxmin`
-- (See below for the actual view)
--
CREATE TABLE `topsis_maxmin` (
`id_matriks` int(11)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`max` double
,`min` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_nilaiv`
-- (See below for the actual view)
--
CREATE TABLE `topsis_nilaiv` (
`id_alternatif` int(11)
,`dplus` double
,`dmin` double
,`nilaiv` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_normalisasi`
-- (See below for the actual view)
--
CREATE TABLE `topsis_normalisasi` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_pembagi`
-- (See below for the actual view)
--
CREATE TABLE `topsis_pembagi` (
`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`bagi` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_sipsin`
-- (See below for the actual view)
--
CREATE TABLE `topsis_sipsin` (
`id_alternatif` int(11)
,`dplus` double
,`dmin` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topsis_terbobot`
-- (See below for the actual view)
--
CREATE TABLE `topsis_terbobot` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`normalisasi` double
,`terbobot` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmatriks_keputusan`
-- (See below for the actual view)
--
CREATE TABLE `vmatriks_keputusan` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vnilai_max`
-- (See below for the actual view)
--
CREATE TABLE `vnilai_max` (
`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`maksimum` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vnormalisasi`
-- (See below for the actual view)
--
CREATE TABLE `vnormalisasi` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vpra_ranking`
-- (See below for the actual view)
--
CREATE TABLE `vpra_ranking` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`normalisasi` double
,`praranking` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vranking`
-- (See below for the actual view)
--
CREATE TABLE `vranking` (
`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`ranking` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_jumlahbobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_jumlahbobot` (
`jumlah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilais`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilais` (
`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`nilaiS` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilaiv`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilaiv` (
`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`nilaiV` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_normalisasibobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_normalisasibobot` (
`id_bobot` int(11)
,`id_kriteria` int(11)
,`value` double
,`jumlah` double
,`normalisasi_wp` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_pangkat`
-- (See below for the actual view)
--
CREATE TABLE `wp_pangkat` (
`id_matriks` int(11)
,`id_alternatif` int(11)
,`nama_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nama_kriteria` varchar(50)
,`id_bobot` int(11)
,`value` double
,`nilai` varchar(50)
,`nama_skala` varchar(50)
,`normalisasi_wp` double
,`pangkat` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_sums`
-- (See below for the actual view)
--
CREATE TABLE `wp_sums` (
`jum` double
);

-- --------------------------------------------------------

--
-- Structure for view `multimoora_1`
--
DROP TABLE IF EXISTS `multimoora_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `multimoora_1`  AS SELECT `vmatriks_keputusan`.`id_matriks` AS `id_matriks`, `vmatriks_keputusan`.`id_alternatif` AS `id_alternatif`, `vmatriks_keputusan`.`nama_alternatif` AS `nama_alternatif`, `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, `vmatriks_keputusan`.`id_bobot` AS `id_bobot`, `vmatriks_keputusan`.`value` AS `value`, `vmatriks_keputusan`.`nilai` AS `nilai`, `vmatriks_keputusan`.`nama_skala` AS `nama_skala`, sqrt(sum(pow(`vmatriks_keputusan`.`nilai`,2))) AS `pra` FROM `vmatriks_keputusan` GROUP BY `vmatriks_keputusan`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `multimoora_2`
--
DROP TABLE IF EXISTS `multimoora_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `multimoora_2`  AS SELECT `vmatriks_keputusan`.`id_matriks` AS `id_matriks`, `vmatriks_keputusan`.`id_alternatif` AS `id_alternatif`, `vmatriks_keputusan`.`nama_alternatif` AS `nama_alternatif`, `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, `vmatriks_keputusan`.`id_bobot` AS `id_bobot`, `vmatriks_keputusan`.`value` AS `value`, `vmatriks_keputusan`.`nilai` AS `nilai`, `vmatriks_keputusan`.`nama_skala` AS `nama_skala`, `multimoora_1`.`pra` AS `pra`, `vmatriks_keputusan`.`nilai`/ `multimoora_1`.`pra` AS `normalisasi` FROM (`vmatriks_keputusan` join `multimoora_1`) WHERE `multimoora_1`.`id_kriteria` = `vmatriks_keputusan`.`id_kriteria` GROUP BY `vmatriks_keputusan`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `multimoora_3`
--
DROP TABLE IF EXISTS `multimoora_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `multimoora_3`  AS SELECT `multimoora_2`.`id_matriks` AS `id_matriks`, `multimoora_2`.`id_alternatif` AS `id_alternatif`, `multimoora_2`.`nama_alternatif` AS `nama_alternatif`, `multimoora_2`.`id_kriteria` AS `id_kriteria`, `multimoora_2`.`nama_kriteria` AS `nama_kriteria`, `multimoora_2`.`id_bobot` AS `id_bobot`, `multimoora_2`.`value` AS `value`, `multimoora_2`.`nilai` AS `nilai`, `multimoora_2`.`nama_skala` AS `nama_skala`, `multimoora_2`.`pra` AS `pra`, `multimoora_2`.`normalisasi` AS `normalisasi`, `multimoora_2`.`normalisasi`* `multimoora_2`.`value` AS `normalisasibobot` FROM `multimoora_2` GROUP BY `multimoora_2`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `multimoora_4`
--
DROP TABLE IF EXISTS `multimoora_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `multimoora_4`  AS SELECT `multimoora_3`.`id_alternatif` AS `id_alternatif`, sum(`multimoora_3`.`normalisasibobot`) AS `hasil` FROM `multimoora_3` GROUP BY `multimoora_3`.`id_alternatif``id_alternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_maxmin`
--
DROP TABLE IF EXISTS `topsis_maxmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_maxmin`  AS SELECT `topsis_terbobot`.`id_matriks` AS `id_matriks`, `topsis_terbobot`.`id_kriteria` AS `id_kriteria`, `topsis_terbobot`.`nama_kriteria` AS `nama_kriteria`, max(`topsis_terbobot`.`terbobot`) AS `max`, min(`topsis_terbobot`.`terbobot`) AS `min` FROM `topsis_terbobot` GROUP BY `topsis_terbobot`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_nilaiv`
--
DROP TABLE IF EXISTS `topsis_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_nilaiv`  AS SELECT `topsis_sipsin`.`id_alternatif` AS `id_alternatif`, `topsis_sipsin`.`dplus` AS `dplus`, `topsis_sipsin`.`dmin` AS `dmin`, `topsis_sipsin`.`dmin`/ (`topsis_sipsin`.`dplus` + `topsis_sipsin`.`dmin`) AS `nilaiv` FROM `topsis_sipsin` GROUP BY `topsis_sipsin`.`id_alternatif``id_alternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_normalisasi`
--
DROP TABLE IF EXISTS `topsis_normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_normalisasi`  AS SELECT `vmatriks_keputusan`.`id_matriks` AS `id_matriks`, `vmatriks_keputusan`.`id_alternatif` AS `id_alternatif`, `vmatriks_keputusan`.`nama_alternatif` AS `nama_alternatif`, `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, `vmatriks_keputusan`.`id_bobot` AS `id_bobot`, `vmatriks_keputusan`.`value` AS `value`, `vmatriks_keputusan`.`nilai` AS `nilai`, `vmatriks_keputusan`.`nama_skala` AS `nama_skala`, `vmatriks_keputusan`.`nilai`/ `topsis_pembagi`.`bagi` AS `normalisasi` FROM (`vmatriks_keputusan` join `topsis_pembagi`) WHERE `topsis_pembagi`.`id_kriteria` = `vmatriks_keputusan`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_pembagi`
--
DROP TABLE IF EXISTS `topsis_pembagi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_pembagi`  AS SELECT `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, sqrt(sum(pow(`vmatriks_keputusan`.`nilai`,2))) AS `bagi` FROM `vmatriks_keputusan` GROUP BY `vmatriks_keputusan`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_sipsin`
--
DROP TABLE IF EXISTS `topsis_sipsin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_sipsin`  AS SELECT `topsis_terbobot`.`id_alternatif` AS `id_alternatif`, sqrt(sum(pow(`topsis_maxmin`.`max` - `topsis_terbobot`.`terbobot`,2))) AS `dplus`, sqrt(sum(pow(`topsis_maxmin`.`min` - `topsis_terbobot`.`terbobot`,2))) AS `dmin` FROM (`topsis_terbobot` join `topsis_maxmin`) WHERE `topsis_terbobot`.`id_kriteria` = `topsis_maxmin`.`id_kriteria` GROUP BY `topsis_terbobot`.`id_alternatif``id_alternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `topsis_terbobot`
--
DROP TABLE IF EXISTS `topsis_terbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topsis_terbobot`  AS SELECT `topsis_normalisasi`.`id_matriks` AS `id_matriks`, `topsis_normalisasi`.`id_alternatif` AS `id_alternatif`, `topsis_normalisasi`.`nama_alternatif` AS `nama_alternatif`, `topsis_normalisasi`.`id_kriteria` AS `id_kriteria`, `topsis_normalisasi`.`nama_kriteria` AS `nama_kriteria`, `topsis_normalisasi`.`id_bobot` AS `id_bobot`, `topsis_normalisasi`.`value` AS `value`, `topsis_normalisasi`.`nilai` AS `nilai`, `topsis_normalisasi`.`nama_skala` AS `nama_skala`, `topsis_normalisasi`.`normalisasi` AS `normalisasi`, `bobot`.`value`* `topsis_normalisasi`.`normalisasi` AS `terbobot` FROM (`topsis_normalisasi` join `bobot`) WHERE `bobot`.`id_kriteria` = `topsis_normalisasi`.`id_kriteria` GROUP BY `topsis_normalisasi`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `vmatriks_keputusan`
--
DROP TABLE IF EXISTS `vmatriks_keputusan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmatriks_keputusan`  AS SELECT `matriks`.`id_matriks` AS `id_matriks`, `alternatif`.`id_alternatif` AS `id_alternatif`, `alternatif`.`nama_alternatif` AS `nama_alternatif`, `kriteria`.`id_kriteria` AS `id_kriteria`, `kriteria`.`nama_kriteria` AS `nama_kriteria`, `bobot`.`id_bobot` AS `id_bobot`, `bobot`.`value` AS `value`, `skala`.`value` AS `nilai`, `skala`.`nama_skala` AS `nama_skala` FROM ((((`matriks` join `skala`) join `bobot`) join `kriteria`) join `alternatif`) WHERE `matriks`.`id_alternatif` = `alternatif`.`id_alternatif` AND `matriks`.`id_bobot` = `bobot`.`id_bobot` AND `matriks`.`id_skala` = `skala`.`id_skala` AND `kriteria`.`id_kriteria` = `bobot`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `vnilai_max`
--
DROP TABLE IF EXISTS `vnilai_max`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnilai_max`  AS SELECT `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, max(`vmatriks_keputusan`.`nilai`) AS `maksimum` FROM `vmatriks_keputusan` GROUP BY `vmatriks_keputusan`.`id_kriteria``id_kriteria`  ;

-- --------------------------------------------------------

--
-- Structure for view `vnormalisasi`
--
DROP TABLE IF EXISTS `vnormalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnormalisasi`  AS SELECT `vmatriks_keputusan`.`id_matriks` AS `id_matriks`, `vmatriks_keputusan`.`id_alternatif` AS `id_alternatif`, `vmatriks_keputusan`.`nama_alternatif` AS `nama_alternatif`, `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, `vmatriks_keputusan`.`id_bobot` AS `id_bobot`, `vmatriks_keputusan`.`value` AS `value`, `vmatriks_keputusan`.`nilai` AS `nilai`, `vmatriks_keputusan`.`nama_skala` AS `nama_skala`, `vmatriks_keputusan`.`nilai`/ `vnilai_max`.`maksimum` AS `normalisasi` FROM (`vmatriks_keputusan` join `vnilai_max`) WHERE `vnilai_max`.`id_kriteria` = `vmatriks_keputusan`.`id_kriteria` GROUP BY `vmatriks_keputusan`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `vpra_ranking`
--
DROP TABLE IF EXISTS `vpra_ranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpra_ranking`  AS SELECT `vnormalisasi`.`id_matriks` AS `id_matriks`, `vnormalisasi`.`id_alternatif` AS `id_alternatif`, `vnormalisasi`.`nama_alternatif` AS `nama_alternatif`, `vnormalisasi`.`id_kriteria` AS `id_kriteria`, `vnormalisasi`.`nama_kriteria` AS `nama_kriteria`, `vnormalisasi`.`id_bobot` AS `id_bobot`, `vnormalisasi`.`value` AS `value`, `vnormalisasi`.`nilai` AS `nilai`, `vnormalisasi`.`nama_skala` AS `nama_skala`, `vnormalisasi`.`normalisasi` AS `normalisasi`, `vnormalisasi`.`value`* `vnormalisasi`.`normalisasi` AS `praranking` FROM `vnormalisasi` GROUP BY `vnormalisasi`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `vranking`
--
DROP TABLE IF EXISTS `vranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vranking`  AS SELECT `vpra_ranking`.`id_alternatif` AS `id_alternatif`, `vpra_ranking`.`nama_alternatif` AS `nama_alternatif`, sum(`vpra_ranking`.`praranking`) AS `ranking` FROM `vpra_ranking` GROUP BY `vpra_ranking`.`id_alternatif``id_alternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_jumlahbobot`
--
DROP TABLE IF EXISTS `wp_jumlahbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_jumlahbobot`  AS SELECT sum(`bobot`.`value`) AS `jumlah` FROM `bobot``bobot`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilais`
--
DROP TABLE IF EXISTS `wp_nilais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilais`  AS SELECT `wp_pangkat`.`id_alternatif` AS `id_alternatif`, `wp_pangkat`.`nama_alternatif` AS `nama_alternatif`, exp(sum(log(`wp_pangkat`.`pangkat`))) AS `nilaiS` FROM `wp_pangkat` GROUP BY `wp_pangkat`.`id_alternatif``id_alternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilaiv`
--
DROP TABLE IF EXISTS `wp_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilaiv`  AS SELECT `wp_nilais`.`id_alternatif` AS `id_alternatif`, `wp_nilais`.`nama_alternatif` AS `nama_alternatif`, `wp_nilais`.`nilaiS`/ `wp_sums`.`jum` AS `nilaiV` FROM (`wp_nilais` join `wp_sums`)  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_normalisasibobot`
--
DROP TABLE IF EXISTS `wp_normalisasibobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_normalisasibobot`  AS SELECT `bobot`.`id_bobot` AS `id_bobot`, `bobot`.`id_kriteria` AS `id_kriteria`, `bobot`.`value` AS `value`, `wp_jumlahbobot`.`jumlah` AS `jumlah`, `bobot`.`value`/ `wp_jumlahbobot`.`jumlah` AS `normalisasi_wp` FROM (`bobot` join `wp_jumlahbobot`)  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_pangkat`
--
DROP TABLE IF EXISTS `wp_pangkat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_pangkat`  AS SELECT `vmatriks_keputusan`.`id_matriks` AS `id_matriks`, `vmatriks_keputusan`.`id_alternatif` AS `id_alternatif`, `vmatriks_keputusan`.`nama_alternatif` AS `nama_alternatif`, `vmatriks_keputusan`.`id_kriteria` AS `id_kriteria`, `vmatriks_keputusan`.`nama_kriteria` AS `nama_kriteria`, `vmatriks_keputusan`.`id_bobot` AS `id_bobot`, `vmatriks_keputusan`.`value` AS `value`, `vmatriks_keputusan`.`nilai` AS `nilai`, `vmatriks_keputusan`.`nama_skala` AS `nama_skala`, `wp_normalisasibobot`.`normalisasi_wp` AS `normalisasi_wp`, pow(`vmatriks_keputusan`.`nilai`,`wp_normalisasibobot`.`normalisasi_wp`) AS `pangkat` FROM (`vmatriks_keputusan` join `wp_normalisasibobot`) WHERE `wp_normalisasibobot`.`id_kriteria` = `vmatriks_keputusan`.`id_kriteria` GROUP BY `vmatriks_keputusan`.`id_matriks``id_matriks`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_sums`
--
DROP TABLE IF EXISTS `wp_sums`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_sums`  AS SELECT sum(`wp_nilais`.`nilaiS`) AS `jum` FROM `wp_nilais``wp_nilais`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `matriks`
--
ALTER TABLE `matriks`
  ADD PRIMARY KEY (`id_matriks`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_bobot` (`id_bobot`),
  ADD KEY `id_skala` (`id_skala`);

--
-- Indexes for table `skala`
--
ALTER TABLE `skala`
  ADD PRIMARY KEY (`id_skala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `matriks`
--
ALTER TABLE `matriks`
  MODIFY `id_matriks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `skala`
--
ALTER TABLE `skala`
  MODIFY `id_skala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot`
--
ALTER TABLE `bobot`
  ADD CONSTRAINT `bobot_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

--
-- Constraints for table `matriks`
--
ALTER TABLE `matriks`
  ADD CONSTRAINT `matriks_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`),
  ADD CONSTRAINT `matriks_ibfk_2` FOREIGN KEY (`id_bobot`) REFERENCES `bobot` (`id_bobot`),
  ADD CONSTRAINT `matriks_ibfk_3` FOREIGN KEY (`id_skala`) REFERENCES `skala` (`id_skala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
