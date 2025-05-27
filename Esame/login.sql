-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 13, 2025 alle 14:56
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`Id`, `firstName`, `lastName`, `email`, `password`) VALUES
(3, 'Danilo', 'Palladino', 'dany88palladino@gmail.com', '6ec66e124fb93c190e9207b0b82f542a'),
(4, 'Danilo', 'Palladino', 'dany88palladino@gmail.c', '8277e0910d750195b448797616e091ad'),
(5, 'Danilo', 'Palladino', 'dany88palladino@g', '83878c91171338902e0fe0fb97a8c47a'),
(6, 'Danilo', 'Palladino', 'dany8palladino@gmail.com', '7b8b965ad4bca0e41ab51de7b31363a1'),
(7, 'emilio', 'palladino', 'emipalla@gmail.com', '430244540aa38ff181545cb0d539f038'),
(8, 'silvana', 'battaglino', 'silvana.battaglino.72@gmail.com', '70d0f390ab72033ed3cf60f7377fdf03'),
(9, 'Roberto', 'Palladino', 'roberto.palladino1968@gmail.com', '123e8e45539a8c362dd324bacff456f4');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
