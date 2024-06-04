-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 10:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL,
  `movieName` varchar(55) NOT NULL,
  `duration` int(11) NOT NULL,
  `actors` varchar(55) NOT NULL,
  `directors` varchar(55) NOT NULL,
  `releaseYear` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieID`, `movieName`, `duration`, `actors`, `directors`, `releaseYear`, `userID`) VALUES
(1, 'Fight club', 8340, 'Edward Norton', 'David Fincher', 1999, 3),
(2, 'Fire and Ice', 7200, 'Edward Norton,Robert De Niro,', 'Martin Scorsese', 1999, 3),
(3, 'Star Wars', 10800, 'Martin Sheen,Edward Norton,', 'David Fincher', 1997, 3),
(4, 'heat', 7560, 'Martin Sheen,Edward Norton,Robert De Niro,', 'Francis Ford Coppola', 1989, 3),
(8, ' america ', 78946, 'Edward Norton,Robert De Niro,', 'Francis Ford Coppola', 1997, 3),
(9, ' america ', 78946, 'Edward Norton,Robert De Niro,', 'Francis Ford Coppola', 1997, 3),
(10, 'once upon a time in america', 78416, 'Edward Norton,', 'Francis Ford Coppola', 1989, 3),
(11, '\"The good, the bad and the ugly\"', 12000, 'Robert De Niro,', 'Martin Scorsese', 1999, 3),
(12, 'transformers', 5400, 'Edward Norton,Robert De Niro,', 'David Fincher', 1974, 3),
(13, 'Funny Games', 5871, 'Martin Sheen,Robert De Niro,', 'Martin Scorsese', 1997, 4),
(14, 'Gummo', 5871, 'Edward Norton,', 'David Fincher', 1982, 4),
(15, 'Tampopo', 6890, 'Robert De Niro,', 'Martin Scorsese', 1979, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
