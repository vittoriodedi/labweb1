-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 13, 2025 alle 14:57
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(7, 'Zigulì', 'Caramelle zuccherate alla banana', 1.99, 'prodotti/ziguli.jpg'),
(8, 'Aspirina', 'analgesico, antinfiammatorio ed antipiretico', 7.50, 'prodotti/aspirina.jpg'),
(9, 'burrocacao', 'previene da agenti esterni come freddo e vento o allevia condizioni quali la stomatite e la cheilite angolare.', 2.00, 'prodotti/burrocacao.jpg'),
(10, 'Cerotti', 'striscia con adesivo annesso per medicare i tagli.', 4.00, 'prodotti/cerotti.jpg'),
(11, 'Crema Solare', 'protezione ad ampio spettro dalle radiazioni UVB-UVA e ad azione antiossidante.', 12.34, 'prodotti/crema_solare.jpg'),
(12, 'Zzzquil', 'Integratore per dormire a base di melatonina. 72 pastiglie', 23.49, 'prodotti/zzzquil.jpg'),
(13, 'Vitamina C', 'Rafforza il sistema immunitario grazie ai suoi effetti antiossidanti', 14.99, 'prodotti/vitaminac.jpg'),
(14, 'Spazzolino da denti', 'strumento per l\'igiene orale il quale consente di rimuovere impurità, in particolare placca, da denti e gengive.', 1.89, 'prodotti/spazzolino.jpg'),
(15, 'dentifricio', 'Dentifricio remineralizzante: Ripristina i minerali nello smalto dei denti per mantenerli forti e resistenti.', 4.49, 'prodotti/dentifricio.jpg'),
(16, 'Maalox', 'farmaco utile in caso di iperacidità gastrica', 7.20, 'prodotti/maalox.jpg'),
(17, 'Rinazina', 'Spray nasale decongestionante', 9.15, 'prodotti/rinazina.png'),
(18, 'Enterogermina', 'Fermenti lattici per ripristinare l\'equilibrio nella flora intestinale', 8.24, 'prodotti/enterogermina.jpg'),
(19, 'Tachipirina 1000mg', 'aiuta ad alleviare la febbre e dolori per mal di denti, dolori muscolari e articolari, influenza, raffreddore e infezioni.', 6.50, 'prodotti/tachipirina.jpg'),
(20, 'moment', 'Ibuprofene per il trattamento di dolori di varia origine e natura come mal di testa, mal di denti e nevralgie', 7.21, 'prodotti/moment.jpg'),
(21, 'collirio', 'preparazione per uso oftalmico, generalmente a base acquosa, utilizzata per trattare o alleviare disturbi o condizioni patologiche che interessano gli occhi', 3.42, 'prodotti/collirio.jpg');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT per la tabella `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login`.`users` (`Id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
