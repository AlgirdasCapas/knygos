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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(121) NOT NULL,
  `email` varchar(55) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `admin`) VALUES
(1, 'Snake', 'aqswde', 'hideo@kojima.com', 0),
(2, 'Benjamin', '$2a$12$pjar33nar4D0ExNw1UDP7.J.bG5tnCU6DFNB85tDIndWzZr4Teqqu', 'apocalypse@now.com', 0),
(3, 'kitas', '$2a$12$soKQ4zY1nK4k42spsVrTHOnNv20FyB05ka5Vnka63t8o8AW4BiG2m', 'kitas@lnk.lt', 0),
(4, 'BenjWillard', '$2a$12$9BsXCJWPeRTdUffKOsEZhum0u8sLKokcnU4n/rVeTh03IrtNgGb6S', 'apocalypse@now.com', 0),
(5, 'JohnGotti', '$2a$12$YUwq4n14tAgoGGV97pZgq..4yv.PQw0JOWOoJbGzRieAQ4/BoBSYi', 'gambino@crime.family', 1),
(6, 'BigTony', '$2a$12$LhtVAVJTVE4nxbqaoCtlaumPvigvoeQD08HNnIPOK1a0OaaFlytuK', 'badabing@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
