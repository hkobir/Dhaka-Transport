-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 08:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `r_id`) VALUES
(1, 'gabtoli', 1),
(2, 'shyamoli', 1),
(3, 'farmgate ', 1),
(4, 'shahbagh ', 1),
(5, 'motijheel ', 1),
(6, 'sayedabad ', 1),
(7, 'jatrabari', 1),
(8, 'mirpur10', 2),
(9, 'mirpur11', 2),
(10, 'mirpur12', 2),
(11, 'kazipara', 2),
(12, 'shewrapara', 2),
(13, 'agargaon', 2),
(14, 'bijoy sarani', 2),
(15, 'farmgate', 2),
(16, 'kawran_bazar', 2),
(17, 'shahbagh', 2),
(18, 'matsya bhaban', 2),
(19, 'press\r\nclub', 2),
(20, 'paltan', 2),
(21, 'gulistan', 2),
(22, 'banga_bhaban', 2),
(23, 'sayedabad', 2),
(24, 'jatrabari', 2),
(25, 'mirpur1', 3),
(26, 'technical', 3),
(27, 'kalyanpur', 3),
(28, 'asadgate', 3),
(29, 'kalabagan', 3),
(30, 'science_lab', 3),
(31, 'shahbagh', 3),
(32, 'press_club', 3),
(33, 'gulistan', 3),
(34, 'motijhil', 3),
(35, 'jatrabari', 3),
(36, 'abdullahpur', 4),
(37, 'airport', 4),
(38, 'kuril', 4),
(39, 'natun_bazar', 4),
(40, 'badda', 4),
(41, 'rampura', 4),
(42, 'malibagh_railgate', 4),
(43, 'khilgaon', 4),
(44, 'bashabo', 4),
(45, 'mugda', 4),
(46, 'maniknagar', 4),
(47, 'sayedabad', 4),
(48, 'jatrabari', 4),
(49, 'diabari', 4),
(50, 'uttara', 4),
(51, 'tongi', 4),
(52, 'gazipur', 4),
(53, 'jatrabari', 5),
(54, 'sayedabad', 5),
(55, 'mugda', 5),
(56, 'khilgaon', 5),
(57, 'malibagh_railgate', 5),
(58, 'mouchak', 5),
(59, 'moghbazar', 5),
(60, 'kawran_bazar', 5),
(61, 'bangla_motor', 5),
(62, 'farmgate ', 5),
(63, 'asadgate', 5),
(64, 'shyamoli', 5),
(65, 'gabtoli', 5),
(66, 'savar', 5),
(67, 'sayedabad', 6),
(68, 'kamalapur', 6),
(69, 'malibagh', 6),
(70, 'moghbazar', 6),
(71, 'nabisco', 6),
(72, 'mohakhali', 6),
(73, 'banani', 6),
(74, 'khilkhet', 6),
(75, 'airport', 6),
(76, 'tongi', 6),
(77, 'mouchak', 6),
(78, 'new_market', 7),
(79, 'kalabagan', 7),
(80, 'dhanmondi27', 7),
(81, 'dhanmondi32 ', 7),
(82, 'khamarbari', 7),
(83, 'mahakhali', 7),
(84, 'banani', 7),
(85, 'kakoli', 7),
(86, 'kuril', 7),
(87, 'banani', 7),
(88, 'khilkhet', 7),
(89, 'airport', 7),
(90, 'savar', 8),
(91, 'gabtoli', 8),
(92, 'technical', 8),
(93, 'kallyanpur', 8),
(94, 'shyamoli', 8),
(95, 'agargaon', 8),
(96, 'mohakhali', 8),
(97, 'gulshan_1', 8),
(98, 'badda ', 8),
(99, 'natun_bazar', 8),
(100, 'mohammadpur', 9),
(101, 'farmgate ', 9),
(103, 'moghbazar', 9),
(104, 'mouchak', 9),
(105, 'rampura', 9),
(106, 'banasree', 9),
(107, 'demra', 9),
(108, 'gabtoli', 10),
(109, 'technical', 10),
(110, 'ansar_camp', 10),
(111, 'mirpur1', 10),
(112, 'sonyhall', 10),
(113, 'mirpur2', 10),
(114, 'mirpur10', 10),
(115, 'mirpur11', 10),
(116, 'purobi', 10),
(117, 'kalshi', 10),
(118, 'ecb_square', 10),
(119, 'shewrapara', 10),
(120, 'kuril', 10),
(121, 'bashundhara', 10),
(122, 'natun_bazar', 10),
(123, 'uttar_badda', 10),
(124, 'badda', 10),
(125, 'madhya_badda', 10),
(126, 'merul', 10),
(127, 'rampura', 10),
(128, 'banasree', 10),
(129, 'demra', 10),
(130, 'sadarghat', 11),
(131, 'gulistan', 11),
(132, 'paltan ', 11),
(133, 'kakrail', 11),
(134, 'shantinagar', 11),
(135, 'malibagh', 11),
(136, 'mouchak', 11),
(137, 'malibagh_railgate', 11),
(138, 'rampura', 11),
(139, 'badda', 11),
(140, 'natun_bazar', 11),
(141, 'bashundhara', 11),
(142, 'jamuna_future_park', 11),
(143, 'kuril', 11),
(145, 'khilkhet', 11),
(146, 'airport', 11),
(147, 'tongi', 11),
(148, 'gazipur', 11),
(149, 'chittagong_road', 12),
(150, 'sign_board', 12),
(151, 'jatrabari', 12),
(152, 'sayedabad', 12),
(153, 'ittefaq', 12),
(154, 'motijheel', 12),
(155, 'paltan', 12),
(156, 'press_club', 12),
(157, 'motsho_bhaban', 12),
(158, 'shabag', 12),
(159, 'banglamotor', 12),
(160, 'kawran_bazar', 12),
(161, 'farmgate', 12),
(162, 'asadgate', 12),
(163, 'shyamoli', 12),
(164, 'gabtoli', 12),
(165, 'savar', 12),
(166, 'mohammadpur', 12),
(167, 'mohammadpur', 13),
(168, 'shankar', 13),
(169, 'dhanmondi15', 13),
(170, 'jhigatola', 13),
(171, 'science_lab', 13),
(172, 'katabon', 13),
(173, 'shabag', 13),
(174, 'motso_bhaban', 13),
(175, 'kakrail', 13),
(176, 'shantinagar', 13),
(177, 'malibagh', 13),
(178, 'mouchak', 13),
(179, 'malibagh_railgate', 13),
(180, 'rampura', 13),
(181, 'south_banasree', 13),
(182, 'chirialkhana', 14),
(183, 'mirpur1', 14),
(184, 'ansar_camp', 14),
(185, 'gabtoli', 14),
(186, 'shyamoli', 14),
(187, 'khamarbari', 14),
(188, 'farmgate ', 14),
(189, 'kawran_bazar', 14),
(190, 'bangla_motor', 14),
(191, 'moghbazar', 14),
(192, 'mouchak', 14),
(193, 'malibagh', 14),
(194, 'rajarbagh', 14),
(195, 'basabo', 14),
(196, 'mughda', 14),
(197, 'sayedabad', 14),
(198, 'jatrabari', 14),
(200, 'chittagong_road', 14),
(201, 'azimpur', 7),
(202, 'nilkhet', 7),
(203, 'malibagh_railgate', 9);

-- --------------------------------------------------------

--
-- Table structure for table `r1`
--

CREATE TABLE `r1` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `shyamoli` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `shahbagh` varchar(50) NOT NULL,
  `motijheel` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r1`
--

INSERT INTO `r1` (`bus_id`, `bus_name`, `gabtoli`, `shyamoli`, `farmgate`, `shahbagh`, `motijheel`, `sayedabad`, `jatrabari`) VALUES
(1, '8 Number', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Labbayek', 'y', 'y', 'y', 'n', 'n', 'y', 'y'),
(3, 'Mm Lovely', 'y', 'y', 'y', 'n', 'n', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r2`
--

CREATE TABLE `r2` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `mirpur10` varchar(50) NOT NULL,
  `mirpur11` varchar(50) NOT NULL,
  `mirpur12` varchar(50) NOT NULL,
  `kazipara` varchar(50) NOT NULL,
  `shewrapara` varchar(50) NOT NULL,
  `agargaon` varchar(50) NOT NULL,
  `bijoy_sarani` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `kawran_bazar` varchar(50) NOT NULL,
  `shahbagh` varchar(50) NOT NULL,
  `matsya_bhaban` varchar(50) NOT NULL,
  `press_club` varchar(50) NOT NULL,
  `paltan` varchar(50) NOT NULL,
  `gulistan` varchar(50) NOT NULL,
  `banga_bhaban` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r2`
--

INSERT INTO `r2` (`bus_id`, `bus_name`, `mirpur10`, `mirpur11`, `mirpur12`, `kazipara`, `shewrapara`, `agargaon`, `bijoy_sarani`, `farmgate`, `kawran_bazar`, `shahbagh`, `matsya_bhaban`, `press_club`, `paltan`, `gulistan`, `banga_bhaban`, `sayedabad`, `jatrabari`) VALUES
(1, 'Shikor Paribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Best Transport', 'y', 'n', 'n', 'y', 'y', 'y', 'n', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'y', 'y'),
(3, 'Khajababa Paribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r3`
--

CREATE TABLE `r3` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `mirpur1` varchar(50) NOT NULL,
  `technical` varchar(50) NOT NULL,
  `kalyanpur` varchar(50) NOT NULL,
  `asadgate` varchar(50) NOT NULL,
  `kalabagan` varchar(50) NOT NULL,
  `science_lab` varchar(50) NOT NULL,
  `shahbagh` varchar(50) NOT NULL,
  `press_club` varchar(50) NOT NULL,
  `gulistan` varchar(50) NOT NULL,
  `motijhil` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r3`
--

INSERT INTO `r3` (`bus_id`, `bus_name`, `mirpur1`, `technical`, `kalyanpur`, `asadgate`, `kalabagan`, `science_lab`, `shahbagh`, `press_club`, `gulistan`, `motijhil`, `jatrabari`) VALUES
(1, 'Trans Silva Limited', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r4`
--

CREATE TABLE `r4` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `tongi` varchar(50) NOT NULL,
  `abdullahpur` varchar(50) NOT NULL,
  `airport` varchar(50) NOT NULL,
  `kuril` varchar(50) NOT NULL,
  `natun_bazar` varchar(50) NOT NULL,
  `badda` varchar(50) NOT NULL,
  `rampura` varchar(50) NOT NULL,
  `malibagh_railgate` varchar(50) NOT NULL,
  `khilgaon` varchar(50) NOT NULL,
  `bashabo` varchar(50) NOT NULL,
  `mugda` varchar(50) NOT NULL,
  `maniknagar` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL,
  `diabari` varchar(50) NOT NULL,
  `uttara` varchar(50) NOT NULL,
  `gajipur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r4`
--

INSERT INTO `r4` (`bus_id`, `bus_name`, `tongi`, `abdullahpur`, `airport`, `kuril`, `natun_bazar`, `badda`, `rampura`, `malibagh_railgate`, `khilgaon`, `bashabo`, `mugda`, `maniknagar`, `sayedabad`, `jatrabari`, `diabari`, `uttara`, `gajipur`) VALUES
(1, 'Turag Transport', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n'),
(2, 'Raida', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n'),
(3, 'Salsabil', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'y'),
(4, 'Anabil Super', 'y', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'y'),
(5, 'Labbayek', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n'),
(6, 'Mm Lovely', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n'),
(7, 'Suprovat Poribahon', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y'),
(8, 'Prochesta Paribahan', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r5`
--

CREATE TABLE `r5` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `mugda` varchar(50) NOT NULL,
  `khilgaon` varchar(50) NOT NULL,
  `malibagh_railgate` varchar(50) NOT NULL,
  `mouchak` varchar(50) NOT NULL,
  `moghbazar` varchar(50) NOT NULL,
  `kawran_bazar` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `asadgate` varchar(50) NOT NULL,
  `shyamoli` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `savar` varchar(50) NOT NULL,
  `bangla_motor` varchar(50) NOT NULL,
  `bashabo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r5`
--

INSERT INTO `r5` (`bus_id`, `bus_name`, `jatrabari`, `sayedabad`, `mugda`, `khilgaon`, `malibagh_railgate`, `mouchak`, `moghbazar`, `kawran_bazar`, `farmgate`, `asadgate`, `shyamoli`, `gabtoli`, `savar`, `bangla_motor`, `bashabo`) VALUES
(1, 'Labbayek', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Mm Lovely', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(3, 'Turag Transport', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(4, 'Salsabil', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(5, 'Anabil Super', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', 'n'),
(6, 'Raida Enterprise', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(7, 'Shadhin', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'y', 'n'),
(8, 'Ayat', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'y', 'n'),
(9, '6 Number', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r6`
--

CREATE TABLE `r6` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `kamalapur` varchar(50) NOT NULL,
  `malibagh` varchar(50) NOT NULL,
  `mouchak` varchar(50) NOT NULL,
  `moghbazar` varchar(50) NOT NULL,
  `nabisco` varchar(50) NOT NULL,
  `mohakhali` varchar(50) NOT NULL,
  `banani` varchar(50) NOT NULL,
  `khilkhet` varchar(50) NOT NULL,
  `airport` varchar(50) NOT NULL,
  `tongi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r6`
--

INSERT INTO `r6` (`bus_id`, `bus_name`, `sayedabad`, `kamalapur`, `malibagh`, `mouchak`, `moghbazar`, `nabisco`, `mohakhali`, `banani`, `khilkhet`, `airport`, `tongi`) VALUES
(1, 'Balaka', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Suprovat Poribahon', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', 'y', 'y', 'y'),
(3, 'Turag Transport', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y'),
(4, 'Anabil Super', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y'),
(5, 'Salsabil', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r7`
--

CREATE TABLE `r7` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `azimpur` varchar(50) NOT NULL,
  `nilkhet` varchar(50) NOT NULL,
  `new_market` varchar(50) NOT NULL,
  `kalabagan` varchar(50) NOT NULL,
  `dhanmondi27` varchar(50) NOT NULL,
  `dhanmondi32` varchar(50) NOT NULL,
  `khamarbari` varchar(50) NOT NULL,
  `mahakhali` varchar(50) NOT NULL,
  `banani` varchar(50) NOT NULL,
  `kakoli` varchar(50) NOT NULL,
  `kuril` varchar(50) NOT NULL,
  `khilkhet` varchar(50) NOT NULL,
  `airport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r7`
--

INSERT INTO `r7` (`bus_id`, `bus_name`, `azimpur`, `nilkhet`, `new_market`, `kalabagan`, `dhanmondi27`, `dhanmondi32`, `khamarbari`, `mahakhali`, `banani`, `kakoli`, `kuril`, `khilkhet`, `airport`) VALUES
(1, 'Bikash Paribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Winner Transport', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'n', 'n'),
(3, 'Dewan', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r8`
--

CREATE TABLE `r8` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `savar` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `technical` varchar(50) NOT NULL,
  `kallyanpur` varchar(50) NOT NULL,
  `shyamoli` varchar(50) NOT NULL,
  `agargaon` varchar(50) NOT NULL,
  `mohakhali` varchar(50) NOT NULL,
  `gulshan_1` varchar(50) NOT NULL,
  `badda` varchar(50) NOT NULL,
  `natun_bazar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r8`
--

INSERT INTO `r8` (`bus_id`, `bus_name`, `savar`, `gabtoli`, `technical`, `kallyanpur`, `shyamoli`, `agargaon`, `mohakhali`, `gulshan_1`, `badda`, `natun_bazar`) VALUES
(1, 'Boishakhi Poribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Agradut', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r9`
--

CREATE TABLE `r9` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `mohammadpur` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `moghbazar` varchar(50) NOT NULL,
  `mouchak` varchar(50) NOT NULL,
  `rampura` varchar(50) NOT NULL,
  `banasree` varchar(50) NOT NULL,
  `demra` varchar(50) NOT NULL,
  `malibagh_railgate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r9`
--

INSERT INTO `r9` (`bus_id`, `bus_name`, `mohammadpur`, `farmgate`, `moghbazar`, `mouchak`, `rampura`, `banasree`, `demra`, `malibagh_railgate`) VALUES
(1, 'Shadhin', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Alif Enterprise', 'y', 'n', 'n', 'n', 'y', 'y', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r10`
--

CREATE TABLE `r10` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `technical` varchar(50) NOT NULL,
  `ansar_camp` varchar(50) NOT NULL,
  `mirpur1` varchar(50) NOT NULL,
  `sonyhall` varchar(50) NOT NULL,
  `mirpur2` varchar(50) NOT NULL,
  `mirpur10` varchar(50) NOT NULL,
  `mirpur11` varchar(50) NOT NULL,
  `purobi` varchar(50) NOT NULL,
  `kalshi` varchar(50) NOT NULL,
  `ecb_square` varchar(50) NOT NULL,
  `shewrapara` varchar(50) NOT NULL,
  `kuril` varchar(50) NOT NULL,
  `bashundhara` varchar(50) NOT NULL,
  `natun_bazar` varchar(50) NOT NULL,
  `uttar_badda` varchar(50) NOT NULL,
  `badda` varchar(50) NOT NULL,
  `madhya_badda` varchar(50) NOT NULL,
  `merul` varchar(50) NOT NULL,
  `rampura` varchar(50) NOT NULL,
  `banasree` varchar(50) NOT NULL,
  `demra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r10`
--

INSERT INTO `r10` (`bus_id`, `bus_name`, `gabtoli`, `technical`, `ansar_camp`, `mirpur1`, `sonyhall`, `mirpur2`, `mirpur10`, `mirpur11`, `purobi`, `kalshi`, `ecb_square`, `shewrapara`, `kuril`, `bashundhara`, `natun_bazar`, `uttar_badda`, `badda`, `madhya_badda`, `merul`, `rampura`, `banasree`, `demra`) VALUES
(1, 'Achim Poribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Akik Paribahan', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(3, 'Bihongo Paribahan', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(4, 'Rajdhani Super Service', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(5, 'Robrob Paribahan', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'y', 'y', 'y'),
(6, 'Galaxy Line', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y'),
(7, 'Ramjan', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r11`
--

CREATE TABLE `r11` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `sadarghat` varchar(11) NOT NULL,
  `gulistan` varchar(11) NOT NULL,
  `paltan` varchar(11) NOT NULL,
  `kakrail` varchar(11) NOT NULL,
  `shantinagar` varchar(11) NOT NULL,
  `malibagh` varchar(11) NOT NULL,
  `mouchak` varchar(11) NOT NULL,
  `malibagh_railgate` varchar(11) NOT NULL,
  `rampura` varchar(11) NOT NULL,
  `badda` varchar(11) NOT NULL,
  `natun bazar` varchar(11) NOT NULL,
  `bashundhara` varchar(50) NOT NULL,
  `jamuna_future_park` varchar(50) NOT NULL,
  `kuril` varchar(50) NOT NULL,
  `khilkhet` varchar(50) NOT NULL,
  `airport` varchar(50) NOT NULL,
  `gazipur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r11`
--

INSERT INTO `r11` (`bus_id`, `bus_name`, `sadarghat`, `gulistan`, `paltan`, `kakrail`, `shantinagar`, `malibagh`, `mouchak`, `malibagh_railgate`, `rampura`, `badda`, `natun bazar`, `bashundhara`, `jamuna_future_park`, `kuril`, `khilkhet`, `airport`, `gazipur`) VALUES
(1, 'Suprovat Poribahon', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Prochesta Paribahan', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(3, 'Victor Classic', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(4, '7 Number ', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(5, 'Shadhin', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n'),
(6, 'Torongo Plus Transport', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n'),
(7, 'Ramjan', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r12`
--

CREATE TABLE `r12` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `chittagong_road` varchar(50) NOT NULL,
  `sign_board` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `ittefaq` varchar(50) NOT NULL,
  `motijheel` varchar(50) NOT NULL,
  `paltan` varchar(50) NOT NULL,
  `press_club` varchar(50) NOT NULL,
  `motsho bhaban` varchar(50) NOT NULL,
  `shabag` varchar(50) NOT NULL,
  `banglamotor` varchar(50) NOT NULL,
  `kawran_bazar` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `asadgate` varchar(50) NOT NULL,
  `shyamoli` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `savar` varchar(50) NOT NULL,
  `mohammadpur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r12`
--

INSERT INTO `r12` (`bus_id`, `bus_name`, `chittagong_road`, `sign_board`, `jatrabari`, `sayedabad`, `ittefaq`, `motijheel`, `paltan`, `press_club`, `motsho bhaban`, `shabag`, `banglamotor`, `kawran_bazar`, `farmgate`, `asadgate`, `shyamoli`, `gabtoli`, `savar`, `mohammadpur`) VALUES
(1, 'Meshkat Transprt', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Welcome', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `r13`
--

CREATE TABLE `r13` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `mohammadpur` varchar(50) NOT NULL,
  `shankar` varchar(50) NOT NULL,
  `dhanmondi15` varchar(50) NOT NULL,
  `jhigatola` varchar(50) NOT NULL,
  `science_lab` varchar(50) NOT NULL,
  `katabon` varchar(50) NOT NULL,
  `shahbag` varchar(50) NOT NULL,
  `motso_bhaban` varchar(50) NOT NULL,
  `kakrail` varchar(50) NOT NULL,
  `shantinagar` varchar(50) NOT NULL,
  `malibagh` varchar(50) NOT NULL,
  `mouchak` varchar(50) NOT NULL,
  `malibagh_railgate` varchar(50) NOT NULL,
  `rampura` varchar(50) NOT NULL,
  `south_banasree` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r13`
--

INSERT INTO `r13` (`bus_id`, `bus_name`, `mohammadpur`, `shankar`, `dhanmondi15`, `jhigatola`, `science_lab`, `katabon`, `shahbag`, `motso_bhaban`, `kakrail`, `shantinagar`, `malibagh`, `mouchak`, `malibagh_railgate`, `rampura`, `south_banasree`) VALUES
(1, 'Torongo Plus Transport', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Suprovat Poribahon', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(3, 'Prochesta Paribahan', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(4, 'Ramjan', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(5, '13 Number', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `r14`
--

CREATE TABLE `r14` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `chirialkhana` varchar(50) NOT NULL,
  `mirpur1` varchar(50) NOT NULL,
  `ansar_camp` varchar(50) NOT NULL,
  `gabtoli` varchar(50) NOT NULL,
  `shyamoli` varchar(50) NOT NULL,
  `khamarbari` varchar(50) NOT NULL,
  `farmgate` varchar(50) NOT NULL,
  `kawran_bazar` varchar(50) NOT NULL,
  `bangla_motor` varchar(50) NOT NULL,
  `moghbazar` varchar(50) NOT NULL,
  `mouchak` varchar(50) NOT NULL,
  `malibagh` varchar(50) NOT NULL,
  `rajarbagh` varchar(50) NOT NULL,
  `basabo` varchar(50) NOT NULL,
  `mughda` varchar(50) NOT NULL,
  `sayedabad` varchar(50) NOT NULL,
  `jatrabari` varchar(50) NOT NULL,
  `chittagong_road` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r14`
--

INSERT INTO `r14` (`bus_id`, `bus_name`, `chirialkhana`, `mirpur1`, `ansar_camp`, `gabtoli`, `shyamoli`, `khamarbari`, `farmgate`, `kawran_bazar`, `bangla_motor`, `moghbazar`, `mouchak`, `malibagh`, `rajarbagh`, `basabo`, `mughda`, `sayedabad`, `jatrabari`, `chittagong_road`) VALUES
(1, 'Talukdar', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(2, 'Ayat', 'y', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n'),
(3, 'Shadhin', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n'),
(4, 'Labbayek', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'y', 'y', 'y', 'y', 'y'),
(5, 'Mm Lovely', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'y', 'y', 'y', 'y', 'y'),
(6, '6 Number', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'n', 'n', 'n', 'n', 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `r_id` int(11) NOT NULL,
  `route_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`r_id`, `route_name`) VALUES
(1, 'R1(gabtoli-jatrabari)'),
(2, 'R2(mirpur 10-jatrabari)'),
(3, 'R3( mirpur 1- jatrabari) '),
(4, 'R4(jatrabari-gazipur) '),
(5, 'R5:(jatrabari-savar)'),
(6, 'R6(sayedabad-tongi) '),
(7, 'R7(azimpur-airport)'),
(8, 'R8(savar-natun bazar) '),
(9, 'R9(mohammadpur-demra)'),
(10, 'R10(gabtoli-demra)'),
(11, 'R11(sadarghat-gazipur)'),
(12, 'R12(chittagong road-mohammadpur)'),
(13, 'R13(mohammadpur-banasree)'),
(14, 'R14(chirialkhana-chittagong road)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`),
  ADD KEY `fk_rid` (`r_id`);

--
-- Indexes for table `r1`
--
ALTER TABLE `r1`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r2`
--
ALTER TABLE `r2`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r3`
--
ALTER TABLE `r3`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r4`
--
ALTER TABLE `r4`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r5`
--
ALTER TABLE `r5`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r6`
--
ALTER TABLE `r6`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r7`
--
ALTER TABLE `r7`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r8`
--
ALTER TABLE `r8`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r9`
--
ALTER TABLE `r9`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r10`
--
ALTER TABLE `r10`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r11`
--
ALTER TABLE `r11`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r12`
--
ALTER TABLE `r12`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r13`
--
ALTER TABLE `r13`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `r14`
--
ALTER TABLE `r14`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `fk_rid` FOREIGN KEY (`r_id`) REFERENCES `route` (`r_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
