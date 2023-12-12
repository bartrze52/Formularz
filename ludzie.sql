-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Gru 2023, 16:18
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ludzie`
--

CREATE TABLE `ludzie` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(35) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `newsletter` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ludzie`
--

INSERT INTO `ludzie` (`firstName`, `lastName`, `birthdate`, `email`, `phone`, `province`, `gender`, `newsletter`) VALUES
('Bartosz', 'Trzesniewski', '2023-12-30', 'trzesniewski.bartosz', 123498712, 'dolnośląskie', 'male', 0),
('Kamil', 'Ślimak', '2022-05-12', 'slimak.kamil@zst.rad', 348723894, 'slaskie', 'male', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
