-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 06 Décembre 2019 à 16:52
-- Version du serveur :  5.7.28-0ubuntu0.18.04.4
-- Version de PHP :  7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `scannr`
--

-- --------------------------------------------------------

--
-- Structure de la table `scan`
--

CREATE TABLE `scan` (
  `id` int(10) UNSIGNED NOT NULL,
  `mac_address` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rssi` smallint(6) DEFAULT NULL,
  `scan_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scanned_by_device` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `scan`
--

INSERT INTO `scan` (`id`, `mac_address`, `device_name`, `rssi`, `scan_date`, `scanned_by_device`, `is_deleted`) VALUES
(1, 'D8:63:75:74:BB:11', 'Mi Phone', -77, '2019-12-05 16:10:34', 'SCANNER1', b'0'),
(2, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -45, '2019-12-05 16:10:34', 'SCANNER1', b'0'),
(3, '74:EB:80:0A:CA:01', 'A6 Emile', NULL, '2019-12-05 16:28:00', 'SCANNER1', b'0'),
(4, 'B8:81:98:4A:A2:4E', 'Nevaeh', -43, '2019-12-05 16:28:00', 'SCANNER1', b'0'),
(5, 'D8:63:75:74:BB:11', 'Mi Phone', -75, '2019-12-05 16:28:00', 'SCANNER1', b'0'),
(6, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-05 16:28:32', 'SCANNER1', b'0'),
(7, '74:EB:80:0A:CA:01', 'A7 Emile', -31, '2019-12-05 16:28:32', 'SCANNER1', b'0'),
(8, 'B8:81:98:4A:A2:4E', 'Nevaeh', NULL, '2019-12-05 16:28:32', 'SCANNER1', b'0'),
(9, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-05 16:28:53', 'SCANNER1', b'0'),
(10, '74:EB:80:0A:CA:01', 'A8 Emile', -37, '2019-12-05 16:28:53', 'SCANNER1', b'0'),
(11, 'D8:63:75:74:BB:11', 'Mi Phone', -69, '2019-12-05 16:54:19', 'SCANNER1', b'0'),
(12, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', NULL, '2019-12-06 11:47:07', 'SCANNER1', b'1'),
(13, 'B8:81:98:4A:A2:4E', 'Nevaeh', NULL, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(14, '64:A2:F9:87:3C:B3', 'OnePlus 6', -75, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(15, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(16, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -55, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(17, '74:EB:80:0A:CA:01', 'A8 Emile', -28, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(18, 'D8:CE:3A:77:08:16', 'Téléphone Mi', -60, '2019-12-06 11:47:07', 'SCANNER1', b'0'),
(19, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-06 12:58:07', 'SCANNER1', b'0'),
(20, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', -60, '2019-12-06 12:58:07', 'SCANNER1', b'0'),
(21, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -43, '2019-12-06 12:58:07', 'SCANNER1', b'0'),
(22, 'B8:81:98:4A:A2:4E', 'Nevaeh', -58, '2019-12-06 12:58:07', 'SCANNER1', b'0'),
(23, '64:A2:F9:87:3C:B3', 'OnePlus 6', -74, '2019-12-06 12:58:07', 'SCANNER1', b'0'),
(24, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', NULL, '2019-12-06 14:09:12', 'SCANNER1', b'0'),
(25, 'B8:81:98:4A:A2:4E', 'Nevaeh', -48, '2019-12-06 14:09:12', 'SCANNER1', b'0'),
(26, '64:A2:F9:87:3C:B3', 'OnePlus 6', -69, '2019-12-06 14:09:12', 'SCANNER1', b'0'),
(27, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -53, '2019-12-06 14:09:12', 'SCANNER1', b'0'),
(28, 'D8:63:75:74:BB:11', 'Mi Phone', -77, '2019-12-06 14:09:12', 'SCANNER1', b'0'),
(29, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-06 14:11:03', 'SCANNER1', b'0'),
(30, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', NULL, '2019-12-06 14:11:03', 'SCANNER1', b'0'),
(31, '64:A2:F9:87:3C:B3', 'OnePlus 6', NULL, '2019-12-06 14:11:03', 'SCANNER1', b'0'),
(32, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -44, '2019-12-06 14:11:03', 'SCANNER1', b'0'),
(33, '64:A2:F9:87:3C:B3', 'OnePlus 6', -72, '2019-12-06 14:12:33', 'SCANNER1', b'0'),
(34, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', -48, '2019-12-06 14:12:33', 'SCANNER1', b'0'),
(35, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', NULL, '2019-12-06 14:12:33', 'SCANNER1', b'0'),
(36, 'D8:63:75:74:BB:11', 'Mi Phone', NULL, '2019-12-06 14:12:33', 'SCANNER1', b'0'),
(37, 'B8:81:98:4A:A2:4E', 'Nevaeh', -43, '2019-12-06 14:14:14', 'SCANNER1', b'0'),
(38, 'D8:63:75:74:BB:11', 'Mi Phone', -74, '2019-12-06 14:14:14', 'SCANNER1', b'0'),
(39, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -44, '2019-12-06 14:14:14', 'SCANNER1', b'0'),
(40, '64:A2:F9:87:3C:B3', 'OnePlus 6', -74, '2019-12-06 14:14:14', 'SCANNER1', b'0'),
(41, 'D8:63:75:74:BB:11', 'Mi Phone', -83, '2019-12-06 14:14:51', 'SCANNER1', b'0'),
(42, '5C:EA:1D:53:92:A6', 'DESKTOP-H3P6FJE', -43, '2019-12-06 14:14:51', 'SCANNER1', b'0'),
(43, '64:A2:F9:87:3C:B3', 'OnePlus 6', -66, '2019-12-06 14:14:51', 'SCANNER1', b'0'),
(44, '98:01:A7:8C:C2:84', 'MacBook Pro de CITIZEN99XYZ', NULL, '2019-12-06 14:14:51', 'SCANNER1', b'0');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `scan`
--
ALTER TABLE `scan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `scan`
--
ALTER TABLE `scan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
