-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 11:43 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dialysis`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `age` int(25) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `firstname`, `lastname`, `address`, `date`, `month`, `year`, `age`, `sex`, `diagnosis`) VALUES
(19, 'Carlo', 'Carpio', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(20, 'Carlo', 'Carpio', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(21, 'Carlo', 'Carpio', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(22, 'Ricardo', 'Calamora', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(23, 'Ricardo', 'Calamora', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(24, 'Ricardo', 'Calamora', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(25, 'Ricardo', 'Calamora', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(26, 'Ricardo', 'Calamora', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(27, 'Leticia', 'Centina', '', '2019-11-04', 'November', '2019', 0, 'Female', ''),
(28, 'Leticia', 'Centina', '', '2019-11-11', 'November', '2019', 0, 'Female', ''),
(29, 'Leticia', 'Centina', '', '2019-11-14', 'November', '2019', 0, 'Female', ''),
(30, 'Leticia', 'Centina', '', '2019-11-07', 'November', '2019', 0, 'Female', ''),
(31, 'Leticia', 'Centina', '', '2019-11-18', 'November', '2019', 0, 'Female', ''),
(32, 'Adan', 'Dedase', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(33, 'Adan', 'Dedase', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(34, 'Adan', 'Dedase', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(35, 'Adan', 'Dedase', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(37, 'Rener', 'Dollente', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(38, 'Rener', 'Dollente', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(39, 'Rener', 'Dollente', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(40, 'Rener', 'Dollente', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(41, 'Rener', 'Dollente', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(42, 'Helen', 'Dolot', '', '2019-11-04', 'November', '2019', 0, 'Female', ''),
(43, 'Helen', 'Dolot', '', '2019-11-11', 'November', '2019', 0, 'Female', ''),
(44, 'Helen', 'Dolot', '', '2019-11-14', 'November', '2019', 0, 'Female', ''),
(45, 'Helen', 'Dolot', '', '2019-11-07', 'November', '2019', 0, 'Female', ''),
(46, 'Helen', 'Dolot', '', '2019-11-18', 'November', '2019', 0, 'Female', ''),
(47, 'Henry', 'Emberga', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(48, 'Henry', 'Emberga', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(49, 'Henry', 'Emberga', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(50, 'Narciso', 'Escandor', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(51, 'Narciso', 'Escandor', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(52, 'Narciso', 'Escandor', '', '2019-11-12', 'November', '2019', 0, 'Male', ''),
(53, 'Narciso', 'Escandor', '', '2019-11-15', 'November', '2019', 0, 'Male', ''),
(54, 'Fermin', 'Escanilla', '', '2019-11-02', 'November', '2019', 0, 'Male', ''),
(55, 'Fermin', 'Escanilla', '', '2019-11-06', 'November', '2019', 0, 'Male', ''),
(57, 'Fermin', 'Escanilla', '', '2019-11-09', 'November', '2019', 0, 'Male', ''),
(58, 'Fermin', 'Escanilla', '', '2019-11-16', 'November', '2019', 0, 'Male', ''),
(59, 'Jovet', 'Estabaya', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(60, 'Jovet', 'Estabaya', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(61, 'Jovet', 'esta', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(62, 'Allan', 'Estorninos', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(63, 'Allan', 'Estorninos', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(64, 'Allan', 'Estorninos', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(65, 'Allan', 'Estorninos', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(66, 'Allan', 'Estorninos', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(67, 'Mark Anthony', 'Formento', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(68, 'Mark Anthony', 'Formento', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(69, 'Mark Anthony', 'Formento', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(70, 'Roger', 'Hasal', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(72, 'Roger', 'Hasal', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(73, 'Roger', 'Hasal', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(74, 'Bernardo', 'Himor', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(75, 'Bernardo', 'Himor', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(76, 'Bernardo', 'Himor', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(77, 'Jose', 'Homo Jr.', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(78, 'Jose', 'Homo Jr.', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(79, 'Jose', 'Homo Jr.', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(80, 'Renante', 'Oseo', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(81, 'Renante', 'Oseo', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(82, 'Renante', 'Oseo', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(83, 'Renante', 'Oseo', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(84, 'Kenneth', 'Oseo', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(85, 'Jose Mateo', 'Jayona', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(86, 'Jose Mateo', 'Jayona', '', '2019-11-08', 'November', '2019', 0, 'Male', ''),
(87, 'Jose Mateo', 'Jayona', '', '2019-11-15', 'November', '2019', 0, 'Male', ''),
(88, 'Carlito', 'Millano', '', '2019-11-01', 'November', '2019', 0, 'Male', ''),
(89, 'Carlito', 'Millano', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(90, 'Carlito', 'Millano', '', '2019-11-06', 'November', '2019', 0, 'Male', ''),
(91, 'Carlito', 'Millano', '', '2019-11-08', 'November', '2019', 0, 'Male', ''),
(92, 'Carlito', 'Millano', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(93, 'Carlito', 'Millano', '', '2019-11-13', 'November', '2019', 0, 'Male', ''),
(94, 'Carlito', 'Millano', '', '2019-11-15', 'November', '2019', 0, 'Male', ''),
(95, 'Carlito', 'Millano', '', '2019-11-18', 'November', '2019', 0, 'Male', ''),
(96, 'Wilfredo', 'Francisco', '', '2019-11-05', 'November', '2019', 0, 'Male', ''),
(97, 'Wilfredo', 'Francisco', '', '2019-11-08', 'November', '2019', 0, 'Male', ''),
(98, 'Wilfredo', 'Francisco', '', '2019-11-12', 'November', '2019', 0, 'Male', ''),
(99, 'Wilfredo', 'Francisco', '', '2019-11-15', 'November', '2019', 0, 'Male', ''),
(100, 'Jolly', 'Jebulan', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(101, 'Jolly', 'Jebulan', '', '2019-11-11', 'November', '2019', 0, 'Male', ''),
(102, 'Jolly', 'Jebulan', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(103, 'Estelita', 'Mandane', '', '2019-11-04', 'November', '2019', 0, 'Male', ''),
(104, 'Estelita', 'Mandane', '', '2019-11-07', 'November', '2019', 0, 'Male', ''),
(105, 'Estelita', 'Mandane', '', '2019-11-14', 'November', '2019', 0, 'Male', ''),
(106, 'Jessie', 'Mangampo', '', '2019-11-02', 'November', '2019', 0, 'Female', ''),
(107, 'Rowel', 'Gutlay', '', '2019-10-18', 'October', '2019', 0, 'Male', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
