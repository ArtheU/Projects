-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2022 at 03:06 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gg_db`
--
CREATE DATABASE IF NOT EXISTS `gg_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gg_db`;

-- --------------------------------------------------------

--
-- Table structure for table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `categorie_id` int(11) NOT NULL,
  `categorie_id_1` int(11) NOT NULL,
  PRIMARY KEY (`categorie_id`,`categorie_id_1`),
  KEY `categorie_id_1` (`categorie_id_1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appartient`
--

INSERT INTO `appartient` (`categorie_id`, `categorie_id_1`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 6),
(8, 6),
(2, 9),
(3, 9),
(4, 9),
(5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `categorie_id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie_nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`categorie_id`, `categorie_nom`) VALUES
(1, 'Plantes'),
(2, 'Ete'),
(3, 'Automne'),
(4, 'Hiver'),
(5, 'Printemps'),
(6, 'Materiel'),
(7, 'Intérieur'),
(8, 'Extérieur'),
(9, 'Arbuste');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_nom` varchar(50) DEFAULT NULL,
  `client_prenom` varchar(50) DEFAULT NULL,
  `client_adresse` varchar(50) DEFAULT NULL,
  `client_pro` tinyint(1) DEFAULT NULL,
  `client_email` varchar(50) DEFAULT NULL,
  `coef_id` decimal(15,2) DEFAULT NULL,
  `commercial_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `coef_id` (`coef_id`),
  KEY `commercial_id` (`commercial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_nom`, `client_prenom`, `client_adresse`, `client_pro`, `client_email`, `coef_id`, `commercial_id`) VALUES
(1, 'Sonya', 'Brewer', '4793 Donec St.', 0, 'aliquam.iaculis.lacus@icloud.couk', '12.50', 1),
(2, 'Alexander', 'David', 'Ap #918-400 Vulputate, Rd.', 1, 'vel@aol.ca', '20.00', 1),
(3, 'Xaviera', 'Santos', 'Ap #529-5314 Interdum. Av.', 1, 'vitae@icloud.net', '20.00', 1),
(4, 'Keane', 'Pope', '508-1268 Eleifend, Avenue', 0, 'at.libero.morbi@google.com', '12.50', 1),
(5, 'Arthur', 'Hurley', 'Ap #180-5573 Duis St.', 1, 'faucibus.orci@hotmail.ca', '20.00', 1),
(6, 'Bethany', 'Carter', 'Ap #270-4779 Risus Avenue', 1, 'arcu@google.org', '20.00', 2),
(7, 'Dalton', 'Frost', 'Ap #245-2816 Pharetra, Road', 0, 'est.mauris.eu@hotmail.ca', '12.50', 2),
(8, 'Maile', 'Barry', 'Ap #140-4774 Fringilla Avenue', 0, 'pharetra.ut.pharetra@protonmail.ca', '12.50', 2),
(9, 'Ezekiel', 'Chaney', 'Ap #649-9238 Euismod Rd.', 0, 'in.molestie@outlook.couk', '12.50', 2),
(10, 'Adara', 'Short', 'P.O. Box 467, 4867 Varius Av.', 1, 'lorem.vitae.odio@google.net', '20.00', 2),
(11, 'MacKensie', 'Mcguire', '3652 Nunc Av.', 0, 'porttitor@outlook.couk', '12.50', 2),
(12, 'Amir', 'House', 'P.O. Box 764, 3163 Arcu. Street', 1, 'laoreet@yahoo.couk', '20.00', 2),
(13, 'Kerry', 'Cherry', '561-4951 Enim. Street', 0, 'vulputate@hotmail.couk', '12.50', 3),
(14, 'Abel', 'Aguirre', 'P.O. Box 648, 6270 Iaculis Rd.', 1, 'vitae@google.net', '20.00', 3),
(15, 'Yardley', 'Delaney', '630-9870 Ultricies Rd.', 1, 'ad.litora.torquent@yahoo.com', '20.00', 3),
(16, 'Arthur', 'Page', '995-2256 Sed Av.', 1, 'ante@outlook.couk', '20.00', 3),
(17, 'Dara', 'Dennis', '332-6363 Vestibulum Ave', 0, 'montes@yahoo.ca', '12.50', 3),
(18, 'Claire', 'Simmons', '343-8201 Dignissim Rd.', 1, 'lacus@outlook.edu', '20.00', 3),
(19, 'Rebecca', 'Stewart', 'Ap #447-3576 Et, St.', 1, 'vitae.erat.vel@hotmail.org', '20.00', 4),
(20, 'Heidi', 'Vasquez', 'P.O. Box 697, 5703 Dapibus Av.', 0, 'facilisis@hotmail.couk', '12.50', 4),
(21, 'Armando', 'David', 'Ap #879-283 Sed Road', 1, 'pede.blandit@hotmail.couk', '20.00', 4),
(22, 'Zane', 'Neal', '445-4134 Laoreet Ave', 0, 'rutrum.non@aol.com', '12.50', 4),
(23, 'Sophia', 'Dodson', 'Ap #439-3281 In Av.', 0, 'mauris.sapien.cursus@aol.ca', '12.50', 4),
(24, 'Leah', 'Tyler', '622-1556 Lectus Ave', 0, 'neque.pellentesque@hotmail.edu', '12.50', 5),
(25, 'Bruno', 'Kemp', '3912 A Road', 1, 'lectus@yahoo.org', '20.00', 5),
(26, 'Matthew', 'Henderson', '5564 Et Street', 1, 'metus.aenean@hotmail.com', '20.00', 5),
(27, 'Bruno', 'Olson', 'Ap #946-8629 Mauris Av.', 0, 'dui.augue.eu@outlook.edu', '12.50', 5),
(28, 'Byron', 'Moore', '323-7981 Et Av.', 1, 'nunc.ullamcorper@icloud.org', '20.00', 5),
(29, 'Rajah', 'Soto', 'Ap #989-2772 Sagittis Ave', 1, 'phasellus.elit.pede@yahoo.edu', '20.00', 6),
(30, 'Elliott', 'Figueroa', '738-7259 Sed Av.', 1, 'elit.a@hotmail.org', '20.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `coef`
--

DROP TABLE IF EXISTS `coef`;
CREATE TABLE IF NOT EXISTS `coef` (
  `coef_id` decimal(15,2) NOT NULL,
  PRIMARY KEY (`coef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coef`
--

INSERT INTO `coef` (`coef_id`) VALUES
('12.50'),
('20.00');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `commande_id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_facturation` varchar(50) DEFAULT NULL,
  `adresse_livraison` varchar(50) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_paiement` date DEFAULT NULL,
  `commande_etat` varchar(50) DEFAULT NULL,
  `livraison_id` varchar(50) DEFAULT NULL,
  `facture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`commande_id`),
  KEY `livraison_id` (`livraison_id`),
  KEY `facture_id` (`facture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`commande_id`, `adresse_facturation`, `adresse_livraison`, `date_commande`, `date_paiement`, `commande_etat`, `livraison_id`, `facture_id`) VALUES
(1, '911-2323 Eleifend St.', '547-1485 Lobortis, Road', '2021-11-18 14:26:05', '2021-06-28', NULL, NULL, NULL),
(2, '794-7896 At Ave', 'Ap #764-4246 Cras Road', '2023-02-03 06:22:27', '2022-10-17', NULL, NULL, NULL),
(3, 'Ap #759-5030 Varius Av.', '236-3923 Cursus Rd.', '2022-09-27 14:07:19', '2022-10-28', NULL, NULL, NULL),
(4, '871-9682 Tincidunt Road', 'Ap #624-1047 Arcu. Avenue', '2022-05-13 14:22:59', '2021-07-22', NULL, NULL, NULL),
(5, 'Ap #882-8621 Non, St.', 'Ap #428-4573 Consectetuer, Avenue', '2022-10-08 17:48:20', '2022-04-04', NULL, NULL, NULL),
(6, '628-3869 Arcu. Road', 'Ap #224-5919 In St.', '2021-10-31 00:37:02', '2022-07-30', NULL, NULL, NULL),
(7, '7607 Ac, Avenue', '589-4808 Enim St.', '2021-12-08 16:41:53', '2021-10-27', NULL, NULL, NULL),
(8, 'Ap #763-2056 Posuere Street', 'P.O. Box 270, 5479 Est Ave', '2022-04-11 00:55:57', '2022-01-10', NULL, NULL, NULL),
(9, 'Ap #811-5216 Cras Rd.', 'Ap #926-1023 Egestas. Street', '2023-01-09 04:13:42', '2021-12-06', NULL, NULL, NULL),
(10, '174-9238 Eget Rd.', 'Ap #678-6728 Non, St.', '2021-03-12 17:16:27', '2022-12-31', NULL, NULL, NULL),
(11, '4588 Orci. St.', 'Ap #263-6431 Adipiscing St.', '2022-10-13 07:16:50', '2022-10-16', NULL, NULL, NULL),
(12, '336-2827 Quam. St.', 'P.O. Box 749, 6726 Donec St.', '2023-02-26 10:18:54', '2021-06-04', NULL, NULL, NULL),
(13, '251-2538 Sed Rd.', 'Ap #376-6838 Elementum Rd.', '2022-11-20 07:22:49', '2021-09-09', NULL, NULL, NULL),
(14, '443-352 Arcu. Road', 'Ap #624-9427 Natoque Street', '2022-06-08 19:53:50', '2021-05-19', NULL, NULL, NULL),
(15, 'Ap #370-489 Risus. Street', 'Ap #902-9867 Vestibulum, Road', '2023-03-09 03:59:46', '2023-02-18', NULL, NULL, NULL),
(16, 'P.O. Box 407, 3269 Natoque Street', 'P.O. Box 471, 2405 Volutpat Avenue', '2022-03-23 10:16:11', '2022-01-17', NULL, NULL, NULL),
(17, '988 Ut, Rd.', '532-9439 Condimentum. Road', '2022-09-17 16:21:37', '2022-03-22', NULL, NULL, NULL),
(18, 'P.O. Box 888, 9299 Nascetur Avenue', '1950 Justo. Street', '2021-08-12 18:32:19', '2021-08-29', NULL, NULL, NULL),
(19, 'P.O. Box 962, 6704 Amet, St.', '200-2356 Lorem Ave', '2021-11-08 10:03:44', '2021-10-22', NULL, NULL, NULL),
(20, '916-9102 Ac Road', 'P.O. Box 978, 4330 Suspendisse St.', '2021-10-04 05:34:30', '2022-08-28', NULL, NULL, NULL),
(21, 'Ap #652-1025 Pede Rd.', 'Ap #944-2494 Interdum Rd.', '2021-12-25 12:47:53', '2023-01-12', NULL, NULL, NULL),
(22, 'P.O. Box 242, 5913 A Rd.', '372-8455 Pede Street', '2021-03-27 03:09:53', '2021-04-30', NULL, NULL, NULL),
(23, '181-4246 Consequat Avenue', '5956 Magna. St.', '2022-10-01 07:53:23', '2022-09-23', NULL, NULL, NULL),
(24, '452-9309 Cras Road', 'P.O. Box 181, 7336 Ac Road', '2021-08-14 08:11:18', '2021-10-18', NULL, NULL, NULL),
(25, 'Ap #679-6085 Tortor. St.', 'Ap #796-1744 Fringilla St.', '2021-12-06 10:30:12', '2021-06-24', NULL, NULL, NULL),
(26, '860-9471 Nulla. Road', 'Ap #783-9495 Sed Av.', '2022-01-18 12:45:05', '2023-01-15', NULL, NULL, NULL),
(27, 'Ap #234-967 Phasellus Rd.', 'Ap #629-9163 Aptent Ave', '2021-04-21 20:17:40', '2021-10-02', NULL, NULL, NULL),
(28, 'Ap #616-4051 Nulla St.', '699-517 Et Street', '2022-01-20 23:01:57', '2022-10-23', NULL, NULL, NULL),
(29, '518-7950 Fames St.', 'Ap #999-1097 Lobortis St.', '2022-04-11 01:41:01', '2022-02-05', NULL, NULL, NULL),
(30, '9512 Sagittis. Rd.', '782-4341 Dolor. Street', '2022-05-09 02:04:52', '2023-01-29', NULL, NULL, NULL),
(31, 'Ap #840-6834 Natoque Rd.', 'Ap #468-7788 Lorem St.', '2021-04-20 04:31:34', '2021-08-13', NULL, NULL, NULL),
(32, 'Ap #686-8856 Laoreet, Avenue', 'P.O. Box 819, 3690 Ante. Street', '2021-11-03 02:09:27', '2022-09-08', NULL, NULL, NULL),
(33, '174-9185 Nec St.', '507-9535 Sollicitudin St.', '2021-07-11 12:37:16', '2023-01-23', NULL, NULL, NULL),
(34, '886-3349 Sapien, Ave', 'Ap #434-7465 Ac St.', '2021-12-02 12:52:51', '2022-04-28', NULL, NULL, NULL),
(35, '614-5330 Ornare. Rd.', '327-4444 Ultricies St.', '2021-10-13 12:04:36', '2021-04-15', NULL, NULL, NULL),
(36, 'Ap #205-6226 Auctor St.', 'Ap #278-5404 Donec Ave', '2021-12-21 18:29:04', '2022-07-17', NULL, NULL, NULL),
(37, '897-430 Convallis Av.', 'Ap #127-5557 Purus, St.', '2023-01-26 13:10:10', '2022-08-04', NULL, NULL, NULL),
(38, 'Ap #172-9724 Purus. St.', '784-7644 Ipsum. Av.', '2023-01-27 14:41:11', '2022-01-24', NULL, NULL, NULL),
(39, 'Ap #700-5511 Imperdiet Av.', '227-2794 Pede, Street', '2022-12-22 18:55:07', '2023-02-23', NULL, NULL, NULL),
(40, 'Ap #497-2576 Elit. St.', 'Ap #910-6214 Magna. Street', '2022-11-06 21:28:20', '2021-11-05', NULL, NULL, NULL),
(41, '3315 Nullam Road', 'Ap #504-7915 Duis Av.', '2023-01-21 08:43:48', '2023-01-02', NULL, NULL, NULL),
(42, 'Ap #284-2711 Ligula Road', 'P.O. Box 567, 1534 Elit, Av.', '2023-02-11 07:15:38', '2022-08-01', NULL, NULL, NULL),
(43, '673-1948 Orci St.', '355-8240 Etiam Avenue', '2021-12-02 22:45:24', '2021-06-24', NULL, NULL, NULL),
(44, 'Ap #206-8492 Dolor Road', 'Ap #611-5050 Luctus Street', '2022-01-18 04:01:39', '2022-12-17', NULL, NULL, NULL),
(45, '4516 Aliquam St.', '3768 Lorem. Street', '2022-04-25 02:35:42', '2022-12-25', NULL, NULL, NULL),
(46, 'P.O. Box 476, 9767 Lorem Road', '663-4333 Nisi. Rd.', '2021-03-28 09:53:57', '2021-11-19', NULL, NULL, NULL),
(47, '169-8603 Nulla St.', '4674 Risus. Rd.', '2021-12-08 03:58:02', '2021-09-05', NULL, NULL, NULL),
(48, '107-9238 Fringilla Avenue', '5156 Sed St.', '2022-08-17 07:43:27', '2022-02-06', NULL, NULL, NULL),
(49, 'Ap #829-2224 Aliquam Av.', '592-321 Fringilla. St.', '2022-07-15 20:05:54', '2021-06-06', NULL, NULL, NULL),
(50, '486-8560 Phasellus St.', '3497 Vitae Av.', '2021-10-29 21:47:51', '2022-06-08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `commercial_id` int(11) NOT NULL AUTO_INCREMENT,
  `commercial_nom` varchar(50) DEFAULT NULL,
  `commercial_prenom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`commercial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`commercial_id`, `commercial_nom`, `commercial_prenom`) VALUES
(1, 'Marny', 'Hutchinson'),
(2, 'Mari', 'Justice'),
(3, 'Francis', 'Patrick'),
(4, 'Alec', 'Guerrero'),
(5, 'Olivia', 'Morin'),
(6, 'Lysandra', 'Chandler');

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `facture_date_paiement` date DEFAULT NULL,
  `facture_ref` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`facture_id`),
  UNIQUE KEY `facture_ref` (`facture_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `livraison_id` varchar(50) NOT NULL,
  `livraison_date_livraison` datetime DEFAULT NULL,
  PRIMARY KEY (`livraison_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passe`
--

DROP TABLE IF EXISTS `passe`;
CREATE TABLE IF NOT EXISTS `passe` (
  `produit_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `reduction` int(11) DEFAULT NULL,
  `date_achat` date DEFAULT NULL,
  PRIMARY KEY (`produit_id`,`client_id`,`commande_id`),
  KEY `client_id` (`client_id`),
  KEY `commande_id` (`commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `possede`
--

DROP TABLE IF EXISTS `possede`;
CREATE TABLE IF NOT EXISTS `possede` (
  `produit_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`produit_id`,`categorie_id`),
  KEY `categorie_id` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `possede`
--

INSERT INTO `possede` (`produit_id`, `categorie_id`) VALUES
(1, 2),
(2, 2),
(10, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 4),
(7, 5),
(8, 5),
(9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `produit_id` int(11) NOT NULL AUTO_INCREMENT,
  `produit_libelle` varchar(50) DEFAULT NULL,
  `produit_reference` varchar(50) DEFAULT NULL,
  `produit_prix` decimal(15,2) DEFAULT NULL,
  `produit_photo` varchar(50) DEFAULT NULL,
  `produit_description` varchar(300) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`produit_id`, `produit_libelle`, `produit_reference`, `produit_prix`, `produit_photo`, `produit_description`, `stock_id`) VALUES
(1, 'Lara', NULL, '19.00', 'https://bbc.co.uk', 'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros', 1),
(2, 'Naida', NULL, '36.00', 'http://netflix.com', 'nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non,', 2),
(3, 'Glenna', NULL, '51.00', 'http://bbc.co.uk', 'ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris', 3),
(4, 'Noel', NULL, '75.00', 'http://youtube.com', 'Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper.', 4),
(5, 'Josephine', NULL, '86.00', 'http://wikipedia.org', 'leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna', 5),
(6, 'Amanda', NULL, '39.00', 'https://youtube.com', 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,', 6),
(7, 'Dora', NULL, '38.00', 'https://walmart.com', 'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin', 7),
(8, 'Miranda', NULL, '10.00', 'http://wikipedia.org', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla', 8),
(9, 'Nevada', NULL, '20.00', 'http://zoom.us', 'et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse', 9),
(10, 'Debra', NULL, '20.00', 'http://nytimes.com', 'eu dui. Cum sociis natoque penatibus et magnis dis parturient montes,', 10),
(11, 'Denton', NULL, '34.00', 'https://twitter.com', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,', 11),
(12, 'Amery', NULL, '50.00', 'https://youtube.com', 'Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,', 12),
(13, 'Aidan', NULL, '78.00', 'http://bbc.co.uk', 'Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem', 13),
(14, 'Martin', NULL, '96.00', 'http://facebook.com', 'id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam', 14),
(15, 'Owen', NULL, '46.00', 'http://cnn.com', 'orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum', 15),
(16, 'Burke', NULL, '73.00', 'https://netflix.com', 'elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', 16),
(17, 'Reece', NULL, '79.00', 'http://facebook.com', 'purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc', 17),
(18, 'Evan', NULL, '75.00', 'http://youtube.com', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,', 18),
(19, 'Ian', NULL, '26.00', 'https://naver.com', 'enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit', 19),
(20, 'Theodore', NULL, '84.00', 'http://google.com', 'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,', 20);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_nom` varchar(50) DEFAULT NULL,
  `stock_quantite` int(11) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_nom`, `stock_quantite`) VALUES
(1, NULL, 0),
(2, NULL, 211),
(3, NULL, 488),
(4, NULL, 121),
(5, NULL, 414),
(6, NULL, 217),
(7, NULL, 269),
(8, NULL, 447),
(9, NULL, 453),
(10, NULL, 407),
(11, NULL, 317),
(12, NULL, 244),
(13, NULL, 125),
(14, NULL, 209),
(15, NULL, 181),
(16, NULL, 51),
(17, NULL, 53),
(18, NULL, 222),
(19, NULL, 151),
(20, NULL, 105),
(21, NULL, 168),
(22, NULL, 27),
(23, NULL, 445),
(24, NULL, 494),
(25, NULL, 299),
(26, NULL, 209),
(27, NULL, 131),
(28, NULL, 187),
(29, NULL, 346),
(30, NULL, 85);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`categorie_id`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`categorie_id_1`) REFERENCES `categorie` (`categorie_id`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`coef_id`) REFERENCES `coef` (`coef_id`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`commercial_id`) REFERENCES `commercial` (`commercial_id`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`livraison_id`) REFERENCES `livraison` (`livraison_id`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`facture_id`);

--
-- Constraints for table `passe`
--
ALTER TABLE `passe`
  ADD CONSTRAINT `passe_ibfk_1` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`produit_id`),
  ADD CONSTRAINT `passe_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `passe_ibfk_3` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`commande_id`);

--
-- Constraints for table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `possede_ibfk_1` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`produit_id`),
  ADD CONSTRAINT `possede_ibfk_2` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`categorie_id`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
