-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 14, 2021 at 09:06 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bga_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `obra`
--

CREATE TABLE `obra` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `obra`
--

INSERT INTO `obra` (`id`, `title`, `date`, `format`, `medium`, `file`) VALUES
(1, 'Los Suicidas del Sisga No 1', '1965-01-01', '120x100 cm', 'Óleo sobre lienzo', 'suicidas-sisga-1.jpg'),
(2, 'El Paraíso', '1997-01-01', '160x45 cm', 'Óleo sobre lienzo', 'el-paraiso.jpg'),
(3, 'Zócalo de la tragedia', '1983-01-01', '100x70 cm', 'Tipografía sobre papel', 'zocalo-tragedia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `referente`
--

CREATE TABLE `referente` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `obra_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referente`
--

INSERT INTO `referente` (`id`, `title`, `date`, `publisher`, `archivo`, `obra_id`) VALUES
(1, 'Doble suicidio en \"El Sisga\"', '1965-06-29', 'El Tiempo', 'doble-suicidio-el-tiempo.jpg', 1),
(2, 'Una indígena y su hijo murieron en persecución', '1996-05-24', 'El Tiempo', 'indigena-hijo-el-tiempo.jpg', 2),
(3, 'Láminas de paisajes latinoamericanos', NULL, NULL, 'laminas-paisajes.jpg', 2),
(4, 'Exmilitar Mata a la Esposa de su Amigo y se Suicida', NULL, NULL, 'exmilitar-mata-esposa.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referente`
--
ALTER TABLE `referente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dc.identiffier` (`id`),
  ADD KEY `obra_id` (`obra_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obra`
--
ALTER TABLE `obra`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `referente`
--
ALTER TABLE `referente`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `referente`
--
ALTER TABLE `referente`
  ADD CONSTRAINT `referente-obra` FOREIGN KEY (`obra_id`) REFERENCES `obra` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
