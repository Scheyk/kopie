-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Aug 2020 um 08:43
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cart_gomba`
--
CREATE DATABASE IF NOT EXISTS `cart_gomba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cart_gomba`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id_id` int(11) NOT NULL,
  `mushroom_id_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sendDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `sendDate`) VALUES
(6, 'Kathrin Schey', 'kathrin.schey@icloud.com', 'second try', '2020-08-18 19:16:25'),
(7, 'Kathrin Schey', 'kathrin.schey@icloud.com', 'gfjngsh', '2020-08-19 09:19:04'),
(8, 'Kathrin Schey', 'kathrin.schey@icloud.com', 'The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother\'s keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.\r\n\r\nNormally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I\'m in a transitional period so I don\'t wanna kill you, I wanna help you. But I can\'t give you this case, it don\'t belong to me. Besides, I\'ve already been through too much shit this morning over this case to hand it over to your dumb ass.\r\n\r\nLook, just because I don\'t be givin\' no man a foot massage don\'t make it right for Marsellus to throw Antwone into a glass motherfuckin\' house, fuckin\' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, \'cause I\'ll kill the motherfucker, know what I\'m sayin\'?\r\n\r\nThe path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother\'s keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.\r\n\r\nNow that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they\'re actually proud of that shit.', '2020-08-19 09:20:06');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200811110549', '2020-08-11 13:05:52', 305),
('DoctrineMigrations\\Version20200811122842', '2020-08-11 14:28:45', 103),
('DoctrineMigrations\\Version20200811123140', '2020-08-11 14:31:43', 41),
('DoctrineMigrations\\Version20200814095539', '2020-08-14 11:56:03', 97),
('DoctrineMigrations\\Version20200817101019', '2020-08-17 12:10:35', 1957),
('DoctrineMigrations\\Version20200817103148', '2020-08-17 12:31:52', 66),
('DoctrineMigrations\\Version20200817105120', '2020-08-17 12:51:24', 178),
('DoctrineMigrations\\Version20200817105643', '2020-08-17 12:56:48', 69),
('DoctrineMigrations\\Version20200817105746', '2020-08-17 12:57:50', 46),
('DoctrineMigrations\\Version20200817110446', '2020-08-17 13:04:49', 43),
('DoctrineMigrations\\Version20200818141801', '2020-08-18 16:18:11', 139),
('DoctrineMigrations\\Version20200819180632', '2020-08-19 20:07:24', 80);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mushroom`
--

CREATE TABLE `mushroom` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `img` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `mushroom`
--

INSERT INTO `mushroom` (`id`, `name`, `unit_price`, `description`, `created_at`, `updated_at`, `img`, `stock`, `quantity`) VALUES
(1, 'Oyster Mushroom', 9.9, 'Peer out window, chatter at birds, lure them to mouth stare at wall turn and meow stare at wall some more meow again continue staring fight an alligator and win. Sniff other cat\'s butt and hang jaw half open thereafter good now the other hand', '2020-08-11 16:56:43', NULL, '/img/mushroom.jpg', 2000, 250),
(2, 'Oyster Mushroom', 17.9, 'Peer out window, chatter at birds, lure them to mouth stare at wall turn and meow stare at wall some more meow again continue staring fight an alligator and win. Sniff other cat\'s butt and hang jaw half open thereafter good now the other hand', '2020-08-12 10:19:29', NULL, '/img/mushroom.jpg', 2000, 500),
(3, 'Oyster Mushroom', 28, 'Peer out window, chatter at birds, lure them to mouth stare at wall turn and meow stare at wall some more meow again continue staring fight an alligator and win. Sniff other cat\'s butt and hang jaw half open thereafter good now the other hand', '2020-08-12 10:19:35', NULL, '/img/mushroom.jpg', 2000, 1000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `total` double NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `order`
--

INSERT INTO `order` (`id`, `items`, `address`, `city`, `zip`, `total`, `name`, `user_id`, `order_time`) VALUES
(5, 'a:2:{i:0;a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:15:\"Oyster Mushroom\";s:10:\"unit_price\";i:9;s:5:\"price\";i:9;s:3:\"qty\";i:1;}i:1;a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:15:\"Oyster Mushroom\";s:10:\"unit_price\";i:17;s:5:\"price\";i:17;s:3:\"qty\";i:1;}}', 'Kopalgasse 74/305', 'Wien', 1110, 26, 'Balint Bakos', 1, '2020-08-17 14:13:08'),
(6, 'a:1:{i:0;a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:15:\"Oyster Mushroom\";s:10:\"unit_price\";i:17;s:5:\"price\";i:34;s:3:\"qty\";i:2;}}', 'Kopalgasse 74/305', 'Wien', 1110, 34, 'Balint Bakos', 2, '2020-08-17 16:09:39'),
(7, 'a:1:{i:0;a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:15:\"Oyster Mushroom\";s:10:\"unit_price\";i:17;s:5:\"price\";i:34;s:3:\"qty\";i:2;}}', 'Kopalgasse 74/305', 'Wien', 1110, 34, 'Balint Bakos', 2, '2020-08-17 16:11:26'),
(8, 'a:1:{i:0;a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:15:\"Oyster Mushroom\";s:10:\"unit_price\";i:17;s:5:\"price\";i:34;s:3:\"qty\";i:2;}}', 'Kopalgasse 74/305', 'Wien', 1110, 34, 'Balint Bakos', 2, '2020-08-17 16:12:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eleven` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twelve` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thirten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fourteen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fifty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preptime` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preplevel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `recipes`
--

INSERT INTO `recipes` (`id`, `img`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `eleven`, `twelve`, `thirten`, `fourteen`, `fifty`, `preptime`, `preplevel`) VALUES
(1, 'cauli.png', 'test', '', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'some', 'eome', 'test', '1 hour 12', 'soft');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `tel_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `address`, `city`, `zip`, `tel_number`, `admin`, `name`) VALUES
(1, 'balint.bb@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YXVMbmxYelU1bUZiYzZnag$UG05tuHei+SP4HKFcc2Pfs/bvM1okVgKYGH8/RQfuLM', 'Kopalgasse 74/305', 'Wien', 1110, '6643706022', 0, 'Balint Bakos'),
(2, 'balint.bb.dev@gmail.com', '{ \"roles\": \"ROLE_ADMIN\"}', '$argon2id$v=19$m=65536,t=4,p=1$UGxaM1FxQzRtV2l4WVpXag$tNK5TOxwiJKOyn+KDPjgj8sdJNiKjxiw0gK5Z9FFks0', 'Kopalgasse 74/305', 'Wien', 1110, '6643706022', 1, 'Balint Bakos');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F0FE252720AEF35F` (`cart_id_id`),
  ADD KEY `IDX_F0FE252722F63AD1` (`mushroom_id_id`);

--
-- Indizes für die Tabelle `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `mushroom`
--
ALTER TABLE `mushroom`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `mushroom`
--
ALTER TABLE `mushroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK_F0FE252720AEF35F` FOREIGN KEY (`cart_id_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FK_F0FE252722F63AD1` FOREIGN KEY (`mushroom_id_id`) REFERENCES `mushroom` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
