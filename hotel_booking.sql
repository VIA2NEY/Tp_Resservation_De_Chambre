-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 30 Mars 2023 à 13:58
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hotel_booking`
--

-- --------------------------------------------------------

--
-- Structure de la table `accpted`
--

CREATE TABLE IF NOT EXISTS `accpted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedding` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `accpted`
--

INSERT INTO `accpted` (`id`, `name`, `email`, `country`, `type_of_room`, `bedding`, `number_of_room`, `check_in`, `check_out`) VALUES
(1, 'Martson', 'JohnMartson@gmail.com', 'Non Ivoirien ', 'Deluxe Room', 'Double', '1', '2023-03-27', '2023-04-05'),
(2, 'Arthur', 'Goat@email.com', 'Ivoirien', 'Superior Room', 'Double', '3', '2023-03-01', '2023-04-30');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'vianney', '123');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `contact`
--


-- --------------------------------------------------------

--
-- Structure de la table `reject`
--

CREATE TABLE IF NOT EXISTS `reject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedding` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `reject`
--

INSERT INTO `reject` (`id`, `name`, `email`, `country`, `type_of_room`, `bedding`, `number_of_room`, `check_in`, `check_out`) VALUES
(7, 'Waris ali', 'rjvideos9@gmail.com', 'Pakistani', 'Deluxe Room', 'Single', '1', '2021-09-09', '2021-09-08'),
(8, 'Waris ali', 'rjvideos9@gmail.com', 'Pakistani', 'Deluxe Room', 'Single', '1', '2021-09-09', '2021-09-08'),
(9, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Superior Room', 'Triple', '1', '2021-09-17', '2021-09-17'),
(10, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Superior Room', 'Triple', '1', '2021-09-17', '2021-09-17'),
(11, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Superior Room', 'Triple', '1', '2021-09-17', '2021-09-17'),
(12, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Superior Room', 'Triple', '1', '2021-09-17', '2021-09-17'),
(13, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Deluxe Room', 'Double', '3', '2021-09-17', '2021-09-14'),
(14, 'Hamza', 'rjvideos9@gmail.com', 'Pakistani', 'Deluxe Room', 'Double', '3', '2021-09-17', '2021-09-14'),
(15, 'Bell', 'Rat@email.com', 'Non Ivoirien ', 'Single Room', 'Single', '1', '2023-03-01', '2023-03-02');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bedding_Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Number_of_rooms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`id`, `Title`, `first_name`, `last_name`, `email`, `nationality`, `phone`, `type_of_room`, `Bedding_Type`, `Number_of_rooms`, `check_in`, `check_out`) VALUES
(2, 'Mr.', 'Van der linde', 'Dutch', 'DutchVanderLinde@email', 'Ivoirien', '0101010101', 'Guest House', 'Triple', '3', '2023-03-30', '2023-04-20'),
(5, 'Miss.', 'Sadie', 'adler', 'SadieAdler@email.com', 'Ivoirien', '0504030201', 'Guest House', 'Double', '4', '2023-03-29', '2023-04-03'),
(6, 'Mr.', 'Bill', 'Uncle', 'Uncle@email.com', 'Ivoirien', '08070605', 'Single Room', 'Triple', '2', '2023-04-01', '2023-04-30'),
(7, 'Rev .', 'Swartson', 'Swanson', 'ministere@email.com', 'Ivoirien', '445566778', 'Single Room', 'Single', '1', '2023-03-31', '2023-04-03'),
(8, 'Dr.', 'Hosea', 'Matthews', 'Hosea@email.com', 'Ivoirien', '0908070605', 'Superior Room', 'Single', '2', '2023-03-31', '2023-04-09');
