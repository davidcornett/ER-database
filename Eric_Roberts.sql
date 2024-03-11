-- phpMyAdmin SQL Dump
-- version 5.1.1-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2021 at 09:54 PM
-- Server version: 10.4.20-MariaDB-log
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Eric_Roberts`
--
CREATE DATABASE IF NOT EXISTS `Eric_Roberts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Eric_Roberts`;


-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `actorID` int(11) NOT NULL,
  `primaryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actorID`, `primaryName`) VALUES
(1, 'Eric Roberts'),
(2, 'Rebecca De Mornay'),
(3, 'Jon Voight'),
(4, 'Misha Segal'),
(5, 'Dan Schlaack'),
(6, 'Sabine El Gemayel'),
(7, 'Marc Grossman'),
(8, 'Caitlin Blue'),
(9, 'Egidio Tari'),
(10, 'David R. Casey'),
(11, 'Richard Foreman Jr.'),
(12, 'Kandice King'),
(13, 'Timothy Bond'),
(14, 'Robyn Knoll'),
(15, 'Mick Erausquin'),
(16, 'Michael B. Druxman'),
(17, 'Gloria Pryor'),
(18, 'Timothy J. Warenz'),
(19, 'Christian Williams'),
(20, 'Bethany Scott'),
(21, 'Michael Andretti'),
(22, 'Paulo Benedeti'),
(23, 'Paula Devicq'),
(24, 'Tatjana Patitz'),
(25, 'Brad Rowe'),
(26, 'Bernd Heinl'),
(27, 'Chuck Cirino'),
(28, 'Antonio Vivaldi'),
(29, 'Axel Melzener'),
(30, 'Richard Halpern'),
(31, 'Kelly Deco'),
(32, 'Paul van den Boom'),
(33, 'Ken Sanders'),
(34, 'Pat Tagliaferro'),
(35, 'Katherine Dover'),
(36, 'James Shavick'),
(37, 'Bryce Zabel'),
(38, 'Larry Abrams'),
(39, 'Deana Molle'),
(40, 'Tara Marks'),
(41, 'David Adams'),
(42, 'John Adams'),
(43, 'Paige Adams'),
(44, 'C.C. Adcock'),
(45, 'Gale M. Adler'),
(46, 'Justin Adler'),
(47, 'Terrance Afer-Anderson'),
(48, 'Roy Ageloff'),
(49, 'David Agresta'),
(50, 'Fatos Akdeniz');

-- --------------------------------------------------------

--
-- Table structure for table `actors_movies`
--

DROP TABLE IF EXISTS `actors_movies`;
CREATE TABLE `actors_movies` (
  `actorID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors_movies`
--

INSERT INTO `actors_movies` (`actorID`, `movieID`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 20),
(5, 15),
(6, 5),
(7, 4),
(8, 7),
(9, 2),
(10, 1),
(11, 17),
(12, 10),
(12, 15),
(13, 11),
(14, 14),
(15, 18),
(16, 8),
(17, 22),
(18, 25),
(19, 19),
(20, 14),
(21, 12),
(22, 6),
(23, 28),
(24, 1),
(25, 27),
(26, 18),
(27, 1),
(29, 26),
(30, 1),
(31, 1),
(32, 9),
(33, 3),
(34, 23),
(35, 24),
(36, 8),
(37, 2),
(38, 11),
(39, 8),
(40, 1),
(41, 21),
(42, 13),
(43, 2);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `characterID` int(11) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `actorID` int(11) DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`characterID`, `characterName`, `actorID`, `movieID`) VALUES
(3, 'Alex Grady', 2, 2),
(13, 'Blackjack Britton', 9, 12),
(11, 'Bob Wilson', 1, 10),
(23, 'Booker', 18, 21),
(9, 'Bubba Rocque', 8, 8),
(1, 'Buck', 1, 1),
(14, 'Calvin Stasi', 10, 13),
(25, 'Carl Bigsby', 22, 23),
(19, 'Carlo', 15, 17),
(12, 'Colin Wentworth', 1, 11),
(28, 'Dr. Beck', 24, 26),
(10, 'Dylan Cooper', 1, 9),
(22, 'Governor Hughes', 17, 20),
(6, 'Jack', 5, 5),
(27, 'Jack #2', 24, 25),
(5, 'Jack Hart', 4, 4),
(8, 'Karlin Pickett', 7, 7),
(26, 'Leon \'The Neon\' Harris', 23, 24),
(20, 'Maximus Powers', 14, 18),
(16, 'Mr. Eddie', 12, 15),
(30, 'Mr. G', 28, 28),
(24, 'Narrator', 12, 22),
(7, 'Nick Stark', 6, 6),
(29, 'Niko Dukakis', 25, 27),
(21, 'President of the United States', 16, 19),
(15, 'Robert Woodfield', 11, 14),
(2, 'Sara', 2, 1),
(18, 'Stanley Joiner', 14, 16),
(17, 'Victor Haddock', 13, 16),
(4, 'Villard', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL,
  `genreName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genreID`, `genreName`) VALUES
(5, 'Action'),
(11, 'Adventure'),
(3, 'Biography'),
(4, 'Comedy'),
(6, 'Crime'),
(15, 'Documentary'),
(2, 'Drama'),
(14, 'Fantasy'),
(9, 'Horror'),
(12, 'Mystery'),
(1, 'None'),
(16, 'Romance'),
(10, 'Sci-Fi'),
(7, 'Thriller'),
(13, 'Unknown'),
(8, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL,
  `primaryTitle` varchar(255) NOT NULL,
  `startYear` int(11) NOT NULL,
  `genreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieID`, `primaryTitle`, `startYear`, `genreID`) VALUES
(1, 'Runaway Train', 1985, 5),
(2, 'Best of the Best', 1989, 5),
(3, 'By the Sword', 1991, 11),
(4, 'Love Is a Gun', 1994, 6),
(5, 'The Immortals', 1995, 6),
(6, 'It\'s My Party', 1996, 2),
(7, 'Power 98', 1996, 5),
(8, 'Heaven\'s Prisoners', 1996, 2),
(9, 'Past Perfect', 1996, 5),
(10, 'The Shadow Men', 1997, 5),
(11, 'Facade', 1999, 5),
(12, 'Purgatory', 1999, 14),
(13, 'Two Shades of Blue', 1999, 7),
(14, 'Restraining Order', 1999, 5),
(15, 'Tripfall', 2000, 7),
(16, 'No Alibi', 2000, 6),
(17, 'Luck of the Draw', 2000, 6),
(18, 'Miss Castaway and the Island Girls', 2004, 11),
(19, 'First Dog', 2010, 4),
(20, 'The Human Centipede III (Final Sequence)', 2015, 4),
(21, 'Eyes of the Roshi', 2017, 5),
(22, 'Untitled Michael Andretti Project', 420, 15),
(23, 'A Perfect Chaos', 420, 4),
(24, 'Victory by Submission', 2017, 2),
(25, 'Enemy Within', 2016, 5),
(26, 'Stalked by My Doctor', 2015, 7),
(27, 'Someone Dies Tonight', 2022, 7),
(28, 'Rusty Tulloch', 2018, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorID`);

--
-- Indexes for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`actorID`,`movieID`),
  ADD KEY `movieID` (`movieID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`characterID`),
  ADD UNIQUE KEY `characters_unique` (`characterName`,`actorID`,`movieID`),
  ADD KEY `actorID` (`actorID`),
  ADD KEY `movieID` (`movieID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genreID`),
  ADD UNIQUE KEY `genreID` (`genreID`),
  ADD UNIQUE KEY `genreName` (`genreName`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movies_unique` (`primaryTitle`,`startYear`),
  ADD KEY `genreID` (`genreID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `characterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actors_movies_ibfk_1` FOREIGN KEY (`actorID`) REFERENCES `actors` (`actorID`) ON DELETE CASCADE,
  ADD CONSTRAINT `actors_movies_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE CASCADE;

--
-- Constraints for table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`actorID`) REFERENCES `actors` (`actorID`),
  ADD CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
