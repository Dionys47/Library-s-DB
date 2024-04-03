-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 12:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library's_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ble`
--

CREATE TABLE `ble` (
  `Klient_ID` int(11) NOT NULL,
  `Liber_ID` int(11) NOT NULL,
  `Cmim_Blerje` int(11) NOT NULL,
  `Sasi_Blerje` int(11) NOT NULL,
  `Date_Blerje` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ble`
--

INSERT INTO `ble` (`Klient_ID`, `Liber_ID`, `Cmim_Blerje`, `Sasi_Blerje`, `Date_Blerje`) VALUES
(1, 3, 85, 2, '0000-00-00'),
(1, 4, 62, 1, '2012-12-21'),
(2, 5, 39, 2, '2021-12-01'),
(3, 2, 55, 1, '2017-04-30'),
(5, 1, 70, 4, '2022-10-08'),
(6, 0, 50, 2, '2020-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `botuesi`
--

CREATE TABLE `botuesi` (
  `Botues_ID` int(11) NOT NULL,
  `Botues_Emer` varchar(20) NOT NULL,
  `Botues_Mbiemer` varchar(20) NOT NULL,
  `Botues_Adrese` varchar(30) NOT NULL,
  `Botues_Nr_Telefoni` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `botuesi`
--

INSERT INTO `botuesi` (`Botues_ID`, `Botues_Emer`, `Botues_Mbiemer`, `Botues_Adrese`, `Botues_Nr_Telefoni`) VALUES
(0, 'F. SCOTT', 'FITZGERALD', 'SAINT PAUL, 599 SUM.', '2022255101'),
(1, 'RALPH', 'ELLISON', '1586 Powderly Rd, NY', '2147483647'),
(2, 'ΤΟΝΙ', 'MORRISON', 'Grand View, Hudson, N.Y.', '412659840'),
(3, 'CHINUA', 'ACHEBE', 'NIGERIA, NSUKKA', '988559110'),
(4, 'CHARLOTTE', 'BRONTE', 'ENG, WEST YORKSHIRE, HAWORTH', '792240110');

-- --------------------------------------------------------

--
-- Table structure for table `furnizon`
--

CREATE TABLE `furnizon` (
  `Liber_ID` int(11) NOT NULL,
  `Botues_ID` int(11) NOT NULL,
  `Cmim_Furnizimi` int(11) NOT NULL,
  `Sasi_Furnizimi` int(11) NOT NULL,
  `Date_Furnizimi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnizon`
--

INSERT INTO `furnizon` (`Liber_ID`, `Botues_ID`, `Cmim_Furnizimi`, `Sasi_Furnizimi`, `Date_Furnizimi`) VALUES
(0, 0, 60, 100, '1997-05-15'),
(1, 1, 84, 90, '1999-08-20'),
(2, 2, 66, 60, '2000-09-14'),
(3, 3, 102, 80, '1999-01-18'),
(4, 4, 75, 80, '2003-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `huazon`
--

CREATE TABLE `huazon` (
  `Klient_ID` int(11) NOT NULL,
  `Liber_ID` int(11) NOT NULL,
  `Date_Huazimi` date NOT NULL,
  `Date_Dorezimi` date NOT NULL,
  `Cmim_Huazimi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `huazon`
--

INSERT INTO `huazon` (`Klient_ID`, `Liber_ID`, `Date_Huazimi`, `Date_Dorezimi`, `Cmim_Huazimi`) VALUES
(0, 0, '2018-05-16', '2018-06-17', 12),
(0, 2, '2008-12-21', '2009-01-22', 11),
(1, 1, '2019-08-03', '2019-09-04', 11),
(2, 6, '2009-11-26', '2009-12-27', 13),
(4, 1, '2011-05-17', '2011-06-18', 15),
(4, 5, '2010-02-04', '2010-03-05', 10);

-- --------------------------------------------------------

--
-- Table structure for table `klienti`
--

CREATE TABLE `klienti` (
  `Klient_ID` int(11) NOT NULL,
  `Klient_Emer` varchar(20) NOT NULL,
  `Klient_Mbiemer` varchar(20) NOT NULL,
  `Klient_Nr_Telefoni` varchar(40) NOT NULL,
  `Klient_Adrese` varchar(30) NOT NULL,
  `Klient_Datelindje` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienti`
--

INSERT INTO `klienti` (`Klient_ID`, `Klient_Emer`, `Klient_Mbiemer`, `Klient_Nr_Telefoni`, `Klient_Adrese`, `Klient_Datelindje`) VALUES
(0, 'LENCI', 'LIKA', '+355698569127', 'VLORE, LAGJA PAVARESIA', '1988-10-15'),
(1, 'ADRIANA', 'MEMAJ', '+355685910023', 'VLORE, 24 MAJI', '1992-03-22'),
(2, 'SILVANA', 'SHESHI', '+355675969178', 'BERAT, 30 VJETORI', '2002-02-18'),
(3, 'GEZIM', 'MALAJ', '+355695603329', 'BERAT, UZNOVE', '2000-12-11'),
(4, 'FATMIR', 'KUKA', '+355695954809', 'TIRANE, RR. NAIM FRASHERI', '1996-06-29'),
(5, 'TOMORR', 'HENA', '+355675002809', 'ELBASAN, RR.RINIA', '1992-07-01'),
(6, 'ALBANA', 'CUKO', '+355676332807', 'TIRANE, RR. ALI DEMI', '1983-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `libraria`
--

CREATE TABLE `libraria` (
  `Liber_ID` int(11) NOT NULL,
  `Liber_Autori` varchar(40) NOT NULL,
  `Liber_Emer` varchar(20) NOT NULL,
  `Liber_Lloji` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libraria`
--

INSERT INTO `libraria` (`Liber_ID`, `Liber_Autori`, `Liber_Emer`, `Liber_Lloji`) VALUES
(0, 'THE GREAT GATSBY', 'F. SCOTT FITZGERALD', 'TRAGJEDI'),
(1, 'INVISIBLE MAN', 'RALPH ELLISON', 'NOVELE FANTA-SHKENCO'),
(2, 'BELOVED', 'TONI MORRISON', 'NOVELE HISTORIKE'),
(3, 'THINGS FALL APART', 'CHINUA ACHEBE', 'NOVELE FANTA-SHKENCO'),
(4, 'JANE EYRE', 'CHARLOTTE BRONTE', 'NOVELE ROMANCE'),
(5, 'VILLETTE', 'CHARLOTTE BRONTE', 'NOVELE'),
(6, 'THE BLACK BALL', 'RALPH ELLISON', 'ROMAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ble`
--
ALTER TABLE `ble`
  ADD PRIMARY KEY (`Klient_ID`,`Liber_ID`),
  ADD KEY `Liber_ID` (`Liber_ID`);

--
-- Indexes for table `botuesi`
--
ALTER TABLE `botuesi`
  ADD PRIMARY KEY (`Botues_ID`);

--
-- Indexes for table `furnizon`
--
ALTER TABLE `furnizon`
  ADD PRIMARY KEY (`Liber_ID`,`Botues_ID`),
  ADD KEY `Botues_ID` (`Botues_ID`);

--
-- Indexes for table `huazon`
--
ALTER TABLE `huazon`
  ADD PRIMARY KEY (`Klient_ID`,`Liber_ID`),
  ADD KEY `Liber_ID` (`Liber_ID`);

--
-- Indexes for table `klienti`
--
ALTER TABLE `klienti`
  ADD PRIMARY KEY (`Klient_ID`);

--
-- Indexes for table `libraria`
--
ALTER TABLE `libraria`
  ADD PRIMARY KEY (`Liber_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ble`
--
ALTER TABLE `ble`
  ADD CONSTRAINT `ble_ibfk_1` FOREIGN KEY (`Klient_ID`) REFERENCES `klienti` (`Klient_ID`),
  ADD CONSTRAINT `ble_ibfk_2` FOREIGN KEY (`Liber_ID`) REFERENCES `libraria` (`Liber_ID`);

--
-- Constraints for table `furnizon`
--
ALTER TABLE `furnizon`
  ADD CONSTRAINT `furnizon_ibfk_1` FOREIGN KEY (`Liber_ID`) REFERENCES `libraria` (`Liber_ID`),
  ADD CONSTRAINT `furnizon_ibfk_2` FOREIGN KEY (`Botues_ID`) REFERENCES `botuesi` (`Botues_ID`);

--
-- Constraints for table `huazon`
--
ALTER TABLE `huazon`
  ADD CONSTRAINT `huazon_ibfk_1` FOREIGN KEY (`Klient_ID`) REFERENCES `klienti` (`Klient_ID`),
  ADD CONSTRAINT `huazon_ibfk_2` FOREIGN KEY (`Liber_ID`) REFERENCES `libraria` (`Liber_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
