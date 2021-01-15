-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 01, 2021 at 07:38 PM
-- Server version: 10.5.6-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `zone_settings`
--

DROP TABLE IF EXISTS `zone_settings`;
CREATE TABLE `zone_settings` (
  `zoneid` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `zonetype` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `zoneip` tinytext NOT NULL,
  `zoneport` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `name` tinytext NOT NULL,
  `music_day` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `music_night` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `battlesolo` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `battlemulti` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `restriction` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `tax` float(5,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `misc` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fame_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM AVG_ROW_LENGTH=20 DEFAULT CHARSET=utf8 CHECKSUM=1 PACK_KEYS=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `zone_settings`
--

INSERT INTO `zone_settings` VALUES(0, 1, '164.68.116.149', 11650, 'unknown', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(1, 2, '164.68.116.149', 11500, 'Phanauet_Channel', 229, 229, 101, 219, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(2, 2, '164.68.116.149', 10950, 'Carpenters_Landing', 0, 0, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(3, 2, '164.68.116.149', 11500, 'Manaclipper', 229, 229, 101, 219, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(4, 2, '164.68.116.149', 10050, 'Bibiki_Bay', 0, 0, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(5, 2, '164.68.116.149', 11150, 'Uleguerand_Range', 0, 0, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(6, 4, '164.68.116.149', 11150, 'Bearclaw_Pinnacle', 0, 0, 220, 220, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(7, 2, '164.68.116.149', 10600, 'Attohwa_Chasm', 0, 0, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(8, 4, '164.68.116.149', 10600, 'Boneyard_Gully', 0, 0, 220, 220, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(9, 3, '164.68.116.149', 10750, 'PsoXja', 225, 225, 115, 218, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(10, 4, '164.68.116.149', 10750, 'The_Shrouded_Maw', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(11, 3, '164.68.116.149', 10950, 'Oldton_Movalpolos', 221, 221, 115, 218, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(12, 3, '164.68.116.149', 10950, 'Newton_Movalpolos', 221, 221, 115, 218, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(13, 4, '164.68.116.149', 10950, 'Mine_Shaft_2716', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(14, 3, '62.171.180.46', 21600, 'Hall_of_Transference', 0, 0, 115, 218, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(15, 2, '164.68.116.149', 1, 'Abyssea-Konschtat', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(16, 3, '62.171.180.46', 21600, 'Promyvion-Holla', 222, 222, 115, 218, 30, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(17, 4, '62.171.180.46', 21600, 'Spire_of_Holla', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(18, 3, '62.171.180.46', 21600, 'Promyvion-Dem', 222, 222, 115, 218, 30, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(19, 4, '62.171.180.46', 21600, 'Spire_of_Dem', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(20, 3, '62.171.180.46', 21600, 'Promyvion-Mea', 222, 222, 115, 218, 30, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(21, 4, '62.171.180.46', 21600, 'Spire_of_Mea', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(22, 3, '62.171.180.46', 21600, 'Promyvion-Vahzl', 222, 222, 115, 218, 50, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(23, 4, '62.171.180.46', 21600, 'Spire_of_Vahzl', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(24, 2, '62.171.180.46', 21450, 'Lufaise_Meadows', 230, 230, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(25, 2, '62.171.180.46', 21450, 'Misareaux_Coast', 230, 230, 101, 219, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(26, 1, '164.68.116.149', 10200, 'Tavnazian_Safehold', 245, 245, 245, 245, 0, 0.00, 1640, 3);
INSERT INTO `zone_settings` VALUES(27, 3, '62.171.180.46', 21450, 'Phomiuna_Aqueducts', 0, 0, 115, 218, 40, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(28, 3, '62.171.180.46', 21450, 'Sacrarium', 0, 0, 115, 218, 50, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(29, 3, '62.171.180.46', 21450, 'Riverne-Site_B01', 0, 0, 115, 218, 50, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(30, 3, '62.171.180.46', 21450, 'Riverne-Site_A01', 0, 0, 115, 218, 40, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(31, 4, '62.171.180.46', 21450, 'Monarch_Linn', 0, 0, 220, 220, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(32, 1, '62.171.180.46', 21450, 'Sealions_Den', 245, 245, 220, 220, 0, 0.00, 1177, 6);
INSERT INTO `zone_settings` VALUES(33, 2, '62.171.180.46', 20300, 'AlTaieu', 233, 233, 101, 219, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(34, 3, '62.171.180.46', 20300, 'Grand_Palace_of_HuXzoi', 0, 0, 115, 218, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(35, 3, '62.171.180.46', 20300, 'The_Garden_of_RuHmet', 228, 228, 115, 218, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(36, 4, '62.171.180.46', 20300, 'Empyreal_Paradox', 0, 0, 224, 224, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(37, 5, '62.171.180.46', 20300, 'Temenos', 0, 0, 218, 219, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(38, 5, '62.171.180.46', 20300, 'Apollyon', 0, 0, 218, 219, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(39, 5, '62.171.180.46', 20350, 'Dynamis-Valkurm', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(40, 5, '62.171.180.46', 20350, 'Dynamis-Buburimu', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(41, 5, '62.171.180.46', 20350, 'Dynamis-Qufim', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(42, 5, '62.171.180.46', 20350, 'Dynamis-Tavnazia', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(43, 2, '0.0.0.0', 0, 'Diorama_Abdhaljs-Ghelsba', 0, 0, 218, 219, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(44, 2, '164.68.116.149', 15000, 'Abdhaljs_Isle-Purgonorgo', 0, 0, 226, 226, 40, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(45, 2, '0.0.0.0', 0, 'Abyssea-Tahrongi', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(46, 2, '164.68.116.149', 11500, 'Open_sea_route_to_Al_Zahbi', 147, 147, 101, 138, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(47, 2, '164.68.116.149', 11500, 'Open_sea_route_to_Mhaura', 147, 147, 101, 138, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(48, 1, '164.68.116.149', 11300, 'Al_Zahbi', 178, 178, 178, 178, 0, 0.00, 1688, 3);
INSERT INTO `zone_settings` VALUES(49, 0, '0.0.0.0', 0, '49', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(50, 1, '164.68.116.149', 11300, 'Aht_Urhgan_Whitegate', 178, 178, 178, 178, 0, 10.00, 1544, 3);
INSERT INTO `zone_settings` VALUES(51, 2, '62.171.180.46', 20550, 'Wajaom_Woodlands', 149, 149, 101, 138, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(52, 2, '62.171.180.46', 20550, 'Bhaflau_Thickets', 149, 149, 101, 138, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(53, 2, '164.68.116.149', 11300, 'Nashmau', 175, 175, 175, 175, 0, 0.00, 1576, 3);
INSERT INTO `zone_settings` VALUES(54, 2, '62.171.180.46', 20150, 'Arrapago_Reef', 150, 150, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(55, 6, '62.171.180.46', 20150, 'Ilrusi_Atoll', 0, 0, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(56, 6, '62.171.180.46', 20150, 'Periqia', 0, 0, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(57, 4, '62.171.180.46', 20150, 'Talacca_Cove', 0, 0, 143, 143, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(58, 2, '164.68.116.149', 11500, 'Silver_Sea_route_to_Nashmau', 147, 147, 101, 138, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(59, 2, '164.68.116.149', 11500, 'Silver_Sea_route_to_Al_Zahbi', 147, 147, 101, 138, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(60, 6, '62.171.180.46', 20150, 'The_Ashu_Talif', 172, 172, 143, 143, 0, 0.00, 1152, 6);
INSERT INTO `zone_settings` VALUES(61, 2, '62.171.180.46', 20550, 'Mount_Zhayolm', 0, 0, 101, 138, 0, 0.00, 1182, 6);
INSERT INTO `zone_settings` VALUES(62, 3, '62.171.180.46', 20550, 'Halvung', 0, 0, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(63, 6, '62.171.180.46', 20550, 'Lebros_Cavern', 0, 0, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(64, 4, '62.171.180.46', 20550, 'Navukgo_Execution_Chamber', 0, 0, 143, 143, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(65, 3, '62.171.180.46', 20550, 'Mamook', 0, 0, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(66, 6, '62.171.180.46', 20550, 'Mamool_Ja_Training_Grounds', 0, 0, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(67, 4, '62.171.180.46', 20550, 'Jade_Sepulcher', 0, 0, 143, 143, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(68, 3, '62.171.180.46', 20550, 'Aydeewa_Subterrane', 174, 174, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(69, 6, '62.171.180.46', 20150, 'Leujaoam_Sanctum', 0, 0, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(70, 1, '0.0.0.0', 0, 'Chocobo_Circuit', 176, 176, 176, 176, 0, 0.00, 1036, 6);
INSERT INTO `zone_settings` VALUES(71, 1, '62.171.180.46', 20150, 'The_Colosseum', 0, 0, 139, 139, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(72, 3, '164.68.116.149', 11350, 'Alzadaal_Undersea_Ruins', 0, 0, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(73, 6, '164.68.116.149', 11350, 'Zhayolm_Remnants', 148, 148, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(74, 6, '164.68.116.149', 11350, 'Arrapago_Remnants', 148, 148, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(75, 6, '164.68.116.149', 11350, 'Bhaflau_Remnants', 148, 148, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(76, 6, '164.68.116.149', 11350, 'Silver_Sea_Remnants', 148, 148, 115, 139, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(77, 6, '164.68.116.149', 11350, 'Nyzul_Isle', 148, 148, 144, 144, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(78, 4, '62.171.180.46', 20150, 'Hazhalm_Testing_Grounds', 0, 0, 0, 0, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(79, 2, '62.171.180.46', 20150, 'Caedarva_Mire', 173, 173, 101, 138, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(80, 1, '62.171.180.46', 20010, 'Southern_San_dOria_[S]', 254, 254, 254, 254, 0, 0.00, 1096, 0);
INSERT INTO `zone_settings` VALUES(81, 2, '62.171.180.46', 20010, 'East_Ronfaure_[S]', 251, 251, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(82, 2, '62.171.180.46', 20005, 'Jugner_Forest_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(83, 2, '62.171.180.46', 20005, 'Vunkerl_Inlet_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(84, 2, '62.171.180.46', 20005, 'Batallia_Downs_[S]', 252, 252, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(85, 2, '62.171.180.46', 20005, 'La_Vaule_[S]', 44, 44, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(86, 6, '62.171.180.46', 20005, 'Everbloom_Hollow', 0, 0, 216, 216, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(87, 1, '62.171.180.46', 20010, 'Bastok_Markets_[S]', 180, 180, 180, 180, 0, 0.00, 1096, 1);
INSERT INTO `zone_settings` VALUES(88, 2, '62.171.180.46', 20010, 'North_Gustaberg_[S]', 253, 253, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(89, 2, '62.171.180.46', 20005, 'Grauberg_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(90, 2, '62.171.180.46', 20005, 'Pashhow_Marshlands_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(91, 2, '62.171.180.46', 20005, 'Rolanberry_Fields_[S]', 252, 252, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(92, 3, '62.171.180.46', 20005, 'Beadeaux_[S]', 44, 44, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(93, 6, '62.171.180.46', 20005, 'Ruhotz_Silvermines', 0, 0, 216, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(94, 1, '62.171.180.46', 20010, 'Windurst_Waters_[S]', 182, 182, 182, 182, 0, 0.00, 1096, 2);
INSERT INTO `zone_settings` VALUES(95, 2, '62.171.180.46', 20010, 'West_Sarutabaruta_[S]', 141, 141, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(96, 3, '62.171.180.46', 20005, 'Fort_Karugo-Narugo_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(97, 2, '62.171.180.46', 20005, 'Meriphataud_Mountains_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(98, 2, '62.171.180.46', 20005, 'Sauromugue_Champaign_[S]', 252, 252, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(99, 3, '62.171.180.46', 20005, 'Castle_Oztroja_[S]', 44, 44, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(100, 2, '164.68.116.149', 11050, 'West_Ronfaure', 109, 109, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(101, 2, '164.68.116.149', 11050, 'East_Ronfaure', 109, 109, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(102, 2, '62.171.180.46', 20100, 'La_Theine_Plateau', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(103, 2, '62.171.180.46', 20100, 'Valkurm_Dunes', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(104, 2, '164.68.116.149', 10950, 'Jugner_Forest', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(105, 2, '164.68.116.149', 10950, 'Batallia_Downs', 114, 114, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(106, 2, '164.68.116.149', 10800, 'North_Gustaberg', 116, 116, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(107, 2, '164.68.116.149', 10800, 'South_Gustaberg', 116, 116, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(108, 2, '62.171.180.46', 20100, 'Konschtat_Highlands', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(109, 2, '164.68.116.149', 10500, 'Pashhow_Marshlands', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(110, 2, '164.68.116.149', 10500, 'Rolanberry_Fields', 118, 118, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(111, 2, '164.68.116.149', 10750, 'Beaucedine_Glacier', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(112, 2, '164.68.116.149', 11150, 'Xarcabard', 164, 164, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(113, 2, '62.171.180.46', 21200, 'Cape_Teriggan', 0, 0, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(114, 2, '164.68.116.149', 10850, 'Eastern_Altepa_Desert', 171, 171, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(115, 2, '164.68.116.149', 11100, 'West_Sarutabaruta', 113, 113, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(116, 2, '164.68.116.149', 11100, 'East_Sarutabaruta', 113, 113, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(117, 2, '164.68.116.149', 10050, 'Tahrongi_Canyon', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(118, 2, '164.68.116.149', 10050, 'Buburimu_Peninsula', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(119, 2, '164.68.116.149', 10600, 'Meriphataud_Mountains', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(120, 2, '164.68.116.149', 10600, 'Sauromugue_Champaign', 158, 158, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(121, 2, '164.68.116.149', 10900, 'The_Sanctuary_of_ZiTah', 190, 190, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(122, 2, '164.68.116.149', 10900, 'RoMaeve', 211, 211, 101, 191, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(123, 2, '164.68.116.149', 10650, 'Yuhtunga_Jungle', 134, 134, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(124, 2, '164.68.116.149', 10650, 'Yhoator_Jungle', 134, 134, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(125, 2, '164.68.116.149', 10850, 'Western_Altepa_Desert', 171, 171, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(126, 2, '164.68.116.149', 11000, 'Qufim_Island', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(127, 2, '164.68.116.149', 11000, 'Behemoths_Dominion', 0, 0, 101, 103, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(128, 2, '62.171.180.46', 21200, 'Valley_of_Sorrows', 0, 0, 101, 191, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(129, 6, '62.171.180.46', 20005, 'Ghoyus_Reverie', 0, 0, 216, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(130, 2, '164.68.116.149', 11400, 'RuAun_Gardens', 210, 210, 101, 191, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(131, 3, '164.68.116.149', 10400, 'Mordion_Gaol', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(132, 2, '0.0.0.0', 0, 'Abyssea-La_Theine', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(133, 0, '0.0.0.0', 0, '133', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(134, 5, '62.171.180.46', 20350, 'Dynamis-Beaucedine', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(135, 5, '62.171.180.46', 20350, 'Dynamis-Xarcabard', 119, 119, 119, 119, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(136, 2, '62.171.180.46', 20005, 'Beaucedine_Glacier_[S]', 0, 0, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(137, 2, '62.171.180.46', 20005, 'Xarcabard_[S]', 42, 42, 101, 215, 0, 0.00, 1180, 6);
INSERT INTO `zone_settings` VALUES(138, 3, '62.171.180.46', 20005, 'Castle_Zvahl_Baileys_[S]', 43, 43, 101, 215, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(139, 4, '164.68.116.149', 11050, 'Horlais_Peak', 0, 0, 125, 125, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(140, 3, '164.68.116.149', 11050, 'Ghelsba_Outpost', 0, 0, 115, 102, 0, 0.00, 1177, 6);
INSERT INTO `zone_settings` VALUES(141, 3, '164.68.116.149', 11050, 'Fort_Ghelsba', 0, 0, 115, 102, 0, 0.00, 1177, 6);
INSERT INTO `zone_settings` VALUES(142, 3, '164.68.116.149', 11050, 'Yughott_Grotto', 0, 0, 115, 102, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(143, 3, '164.68.116.149', 10800, 'Palborough_Mines', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(144, 4, '164.68.116.149', 10800, 'Waughroon_Shrine', 0, 0, 125, 125, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(145, 3, '164.68.116.149', 11100, 'Giddeus', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(146, 4, '164.68.116.149', 11100, 'Balgas_Dais', 0, 0, 125, 125, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(147, 3, '164.68.116.149', 10500, 'Beadeaux', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(148, 3, '164.68.116.149', 10500, 'Qulun_Dome', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(149, 3, '164.68.116.149', 10950, 'Davoi', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(150, 3, '164.68.116.149', 10950, 'Monastic_Cavern', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(151, 3, '164.68.116.149', 10600, 'Castle_Oztroja', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(152, 3, '164.68.116.149', 10600, 'Altar_Room', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(153, 3, '164.68.116.149', 10900, 'The_Boyahda_Tree', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(154, 3, '164.68.116.149', 10900, 'Dragons_Aery', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(155, 3, '62.171.180.46', 20005, 'Castle_Zvahl_Keep_[S]', 43, 43, 101, 215, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(156, 4, '62.171.180.46', 20005, 'Throne_Room_[S]', 0, 0, 0, 0, 0, 0.00, 1177, 6);
INSERT INTO `zone_settings` VALUES(157, 3, '164.68.116.149', 11000, 'Middle_Delkfutts_Tower', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(158, 3, '164.68.116.149', 11000, 'Upper_Delkfutts_Tower', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(159, 3, '164.68.116.149', 10650, 'Temple_of_Uggalepih', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(160, 3, '164.68.116.149', 10650, 'Den_of_Rancor', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(161, 3, '164.68.116.149', 11150, 'Castle_Zvahl_Baileys', 155, 155, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(162, 3, '164.68.116.149', 11150, 'Castle_Zvahl_Keep', 155, 155, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(163, 4, '164.68.116.149', 10650, 'Sacrificial_Chamber', 0, 0, 193, 193, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(164, 3, '62.171.180.46', 20005, 'Garlaige_Citadel_[S]', 0, 0, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(165, 4, '164.68.116.149', 11150, 'Throne_Room', 155, 155, 119, 119, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(166, 3, '164.68.116.149', 10750, 'Ranguemont_Pass', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(167, 3, '164.68.116.149', 11050, 'Bostaunieux_Oubliette', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(168, 4, '164.68.116.149', 10850, 'Chamber_of_Oracles', 0, 0, 193, 193, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(169, 3, '164.68.116.149', 11100, 'Toraimarai_Canal', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(170, 4, '164.68.116.149', 11100, 'Full_Moon_Fountain', 0, 0, 193, 193, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(171, 3, '62.171.180.46', 20005, 'Crawlers_Nest_[S]', 0, 0, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(172, 3, '164.68.116.149', 10800, 'Zeruhn_Mines', 0, 0, 115, 102, 0, 0.00, 1168, 6);
INSERT INTO `zone_settings` VALUES(173, 3, '164.68.116.149', 10800, 'Korroloka_Tunnel', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(174, 3, '62.171.180.46', 21200, 'Kuftal_Tunnel', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(175, 3, '62.171.180.46', 20005, 'The_Eldieme_Necropolis_[S]', 0, 0, 115, 216, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(176, 3, '164.68.116.149', 10650, 'Sea_Serpent_Grotto', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(177, 3, '164.68.116.149', 11400, 'VeLugannon_Palace', 207, 207, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(178, 3, '164.68.116.149', 11400, 'The_Shrine_of_RuAvitau', 207, 207, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(179, 4, '164.68.116.149', 11000, 'Stellar_Fulcrum', 0, 0, 193, 193, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(180, 4, '164.68.116.149', 11400, 'LaLoff_Amphitheater', 0, 0, 196, 196, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(181, 4, '164.68.116.149', 11400, 'The_Celestial_Nexus', 0, 0, 198, 198, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(182, 4, '62.171.180.46', 20040, 'Walk_of_Echoes', 0, 0, 215, 215, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(183, 6, '0.0.0.0', 0, 'Maquette_Abdhaljs-Legion_A', 0, 0, 143, 143, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(184, 3, '164.68.116.149', 11000, 'Lower_Delkfutts_Tower', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(185, 5, '62.171.180.46', 20350, 'Dynamis-San_dOria', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(186, 5, '62.171.180.46', 20350, 'Dynamis-Bastok', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(187, 5, '62.171.180.46', 20350, 'Dynamis-Windurst', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(188, 5, '62.171.180.46', 20350, 'Dynamis-Jeuno', 121, 121, 121, 121, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(189, 1, '62.171.180.46', 21250, 'Residential_Area', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(190, 3, '164.68.116.149', 11050, 'King_Ranperres_Tomb', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(191, 3, '164.68.116.149', 10800, 'Dangruf_Wadi', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(192, 3, '164.68.116.149', 11100, 'Inner_Horutoto_Ruins', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(193, 3, '62.171.180.46', 20100, 'Ordelles_Caves', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(194, 3, '164.68.116.149', 11100, 'Outer_Horutoto_Ruins', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(195, 3, '164.68.116.149', 10950, 'The_Eldieme_Necropolis', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(196, 3, '62.171.180.46', 20100, 'Gusgen_Mines', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(197, 3, '164.68.116.149', 10500, 'Crawlers_Nest', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(198, 3, '164.68.116.149', 10050, 'Maze_of_Shakhrami', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(199, 1, '62.171.180.46', 21250, 'Residential_Area', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(200, 3, '164.68.116.149', 10600, 'Garlaige_Citadel', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(201, 4, '62.171.180.46', 21200, 'Cloister_of_Gales', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(202, 4, '164.68.116.149', 10900, 'Cloister_of_Storms', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(203, 4, '164.68.116.149', 10750, 'Cloister_of_Frost', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(204, 3, '164.68.116.149', 10750, 'FeiYin', 0, 0, 115, 102, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(205, 3, '164.68.116.149', 10650, 'Ifrits_Cauldron', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(206, 4, '164.68.116.149', 10750, 'QuBia_Arena', 0, 0, 125, 125, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(207, 4, '164.68.116.149', 10650, 'Cloister_of_Flames', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(208, 3, '164.68.116.149', 10850, 'Quicksand_Caves', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(209, 4, '164.68.116.149', 10850, 'Cloister_of_Tremors', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(210, 0, '62.171.180.46', 21250, 'GM_Home', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(211, 4, '164.68.116.149', 10650, 'Cloister_of_Tides', 0, 0, 0, 0, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(212, 3, '62.171.180.46', 21200, 'Gustav_Tunnel', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(213, 3, '164.68.116.149', 10050, 'Labyrinth_of_Onzozo', 0, 0, 115, 192, 0, 0.00, 1169, 6);
INSERT INTO `zone_settings` VALUES(214, 1, '62.171.180.46', 21250, 'Residential_Area', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(215, 2, '0.0.0.0', 0, 'Abyssea-Attohwa', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(216, 2, '0.0.0.0', 0, 'Abyssea-Misareaux', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(217, 2, '0.0.0.0', 0, 'Abyssea-Vunkerl', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(218, 2, '0.0.0.0', 0, 'Abyssea-Altepa', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(219, 1, '62.171.180.46', 21250, 'Residential_Area', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(220, 0, '164.68.116.149', 11500, 'Ship_bound_for_Selbina', 106, 106, 101, 103, 0, 0.00, 1176, 2);
INSERT INTO `zone_settings` VALUES(221, 0, '164.68.116.149', 11500, 'Ship_bound_for_Mhaura', 106, 106, 101, 103, 0, 0.00, 1176, 4);
INSERT INTO `zone_settings` VALUES(222, 4, '0.0.0.0', 0, 'Provenance', 56, 56, 56, 56, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(223, 2, '164.68.116.149', 11500, 'San_dOria-Jeuno_Airship', 128, 128, 128, 128, 0, 0.00, 1032, 6);
INSERT INTO `zone_settings` VALUES(224, 2, '164.68.116.149', 11500, 'Bastok-Jeuno_Airship', 128, 128, 128, 128, 0, 0.00, 1032, 6);
INSERT INTO `zone_settings` VALUES(225, 2, '164.68.116.149', 11500, 'Windurst-Jeuno_Airship', 128, 128, 128, 128, 0, 0.00, 1032, 6);
INSERT INTO `zone_settings` VALUES(226, 2, '164.68.116.149', 11500, 'Kazham-Jeuno_Airship', 128, 128, 128, 128, 0, 0.00, 1032, 6);
INSERT INTO `zone_settings` VALUES(227, 2, '164.68.116.149', 11500, 'Ship_bound_for_Selbina_Pirates', 106, 106, 101, 103, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(228, 2, '164.68.116.149', 11500, 'Ship_bound_for_Mhaura_Pirates', 106, 106, 101, 103, 0, 0.00, 1176, 6);
INSERT INTO `zone_settings` VALUES(229, 0, '0.0.0.0', 0, '229', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(230, 1, '164.68.116.149', 11670, 'Southern_San_dOria', 107, 107, 107, 107, 0, 0.00, 1608, 0);
INSERT INTO `zone_settings` VALUES(231, 1, '164.68.116.149', 11670, 'Northern_San_dOria', 107, 107, 107, 107, 0, 0.00, 1096, 0);
INSERT INTO `zone_settings` VALUES(232, 1, '164.68.116.149', 11670, 'Port_San_dOria', 107, 107, 107, 107, 0, 0.00, 1608, 0);
INSERT INTO `zone_settings` VALUES(233, 1, '164.68.116.149', 11670, 'Chateau_dOraguille', 156, 156, 156, 156, 0, 0.00, 1032, 0);
INSERT INTO `zone_settings` VALUES(234, 1, '164.68.116.149', 11660, 'Bastok_Mines', 152, 152, 152, 152, 0, 0.00, 1608, 1);
INSERT INTO `zone_settings` VALUES(235, 1, '164.68.116.149', 11660, 'Bastok_Markets', 152, 152, 152, 152, 0, 0.00, 1608, 1);
INSERT INTO `zone_settings` VALUES(236, 1, '164.68.116.149', 11660, 'Port_Bastok', 152, 152, 152, 152, 0, 0.00, 1096, 1);
INSERT INTO `zone_settings` VALUES(237, 1, '164.68.116.149', 11660, 'Metalworks', 154, 154, 154, 154, 0, 0.00, 1032, 1);
INSERT INTO `zone_settings` VALUES(238, 1, '164.68.116.149', 11650, 'Windurst_Waters', 151, 151, 151, 151, 0, 0.00, 1096, 2);
INSERT INTO `zone_settings` VALUES(239, 1, '164.68.116.149', 11650, 'Windurst_Walls', 151, 151, 151, 151, 0, 0.00, 1608, 2);
INSERT INTO `zone_settings` VALUES(240, 1, '164.68.116.149', 11650, 'Port_Windurst', 151, 151, 151, 151, 0, 0.00, 1096, 2);
INSERT INTO `zone_settings` VALUES(241, 1, '164.68.116.149', 11650, 'Windurst_Woods', 151, 151, 151, 151, 0, 0.00, 1608, 2);
INSERT INTO `zone_settings` VALUES(242, 1, '164.68.116.149', 11650, 'Heavens_Tower', 162, 162, 151, 151, 0, 0.00, 1032, 2);
INSERT INTO `zone_settings` VALUES(243, 1, '164.68.116.149', 10201, 'RuLude_Gardens', 117, 117, 117, 117, 0, 0.00, 1608, 3);
INSERT INTO `zone_settings` VALUES(244, 1, '164.68.116.149', 10201, 'Upper_Jeuno', 239, 239, 239, 239, 0, 0.00, 1608, 3);
INSERT INTO `zone_settings` VALUES(245, 1, '164.68.116.149', 10201, 'Lower_Jeuno', 239, 239, 239, 239, 0, 0.00, 1608, 3);
INSERT INTO `zone_settings` VALUES(246, 1, '164.68.116.149', 10201, 'Port_Jeuno', 239, 239, 239, 239, 0, 0.00, 1608, 3);
INSERT INTO `zone_settings` VALUES(247, 1, '164.68.116.149', 10200, 'Rabao', 208, 208, 208, 208, 0, 0.00, 1640, 4);
INSERT INTO `zone_settings` VALUES(248, 1, '164.68.116.149', 10200, 'Selbina', 112, 112, 112, 112, 0, 0.00, 1064, 4);
INSERT INTO `zone_settings` VALUES(249, 1, '164.68.116.149', 10200, 'Mhaura', 105, 105, 105, 105, 0, 0.00, 1064, 2);
INSERT INTO `zone_settings` VALUES(250, 1, '164.68.116.149', 10200, 'Kazham', 135, 135, 135, 135, 0, 0.00, 1576, 2);
INSERT INTO `zone_settings` VALUES(251, 1, '164.68.116.149', 10900, 'Hall_of_the_Gods', 213, 213, 213, 213, 0, 0.00, 1032, 6);
INSERT INTO `zone_settings` VALUES(252, 1, '164.68.116.149', 10200, 'Norg', 209, 209, 209, 209, 0, 0.00, 1640, 5);
INSERT INTO `zone_settings` VALUES(253, 2, '0.0.0.0', 0, 'Abyssea-Uleguerand', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(254, 2, '0.0.0.0', 0, 'Abyssea-Grauberg', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(255, 2, '0.0.0.0', 0, 'Abyssea-Empyreal_Paradox', 51, 51, 52, 52, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(256, 1, '0.0.0.0', 0, 'Western_Adoulin', 59, 59, 59, 59, 0, 0.00, 1608, 6);
INSERT INTO `zone_settings` VALUES(257, 1, '0.0.0.0', 0, 'Eastern_Adoulin', 63, 63, 63, 63, 0, 0.00, 1608, 6);
INSERT INTO `zone_settings` VALUES(258, 3, '0.0.0.0', 0, 'Rala_Waterways', 61, 61, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(259, 6, '0.0.0.0', 0, 'Rala_Waterways_U', 61, 61, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(260, 2, '0.0.0.0', 0, 'Yahse_Hunting_Grounds', 60, 60, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(261, 2, '0.0.0.0', 0, 'Ceizak_Battlegrounds', 60, 60, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(262, 2, '0.0.0.0', 0, 'Foret_de_Hennetiel', 60, 60, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(263, 2, '0.0.0.0', 0, 'Yorcia_Weald', 61, 61, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(264, 6, '0.0.0.0', 0, 'Yorcia_Weald_U', 62, 62, 62, 62, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(265, 2, '0.0.0.0', 0, 'Morimar_Basalt_Fields', 60, 60, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(266, 2, '0.0.0.0', 0, 'Marjami_Ravine', 60, 60, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(267, 2, '0.0.0.0', 0, 'Kamihr_Drifts', 72, 72, 57, 57, 0, 0.00, 1028, 6);
INSERT INTO `zone_settings` VALUES(268, 3, '0.0.0.0', 0, 'Sih_Gates', 0, 0, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(269, 3, '0.0.0.0', 0, 'Moh_Gates', 0, 0, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(270, 3, '0.0.0.0', 0, 'Cirdas_Caverns', 0, 0, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(271, 6, '0.0.0.0', 0, 'Cirdas_Caverns_U', 62, 62, 62, 62, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(272, 3, '0.0.0.0', 0, 'Dho_Gates', 0, 0, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(273, 3, '0.0.0.0', 0, 'Woh_Gates', 0, 0, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(274, 3, '0.0.0.0', 0, 'Outer_RaKaznar', 73, 73, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(275, 0, '0.0.0.0', 0, 'Outer_RaKaznar_U', 62, 62, 62, 62, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(276, 0, '0.0.0.0', 0, 'RaKaznar_Inner_Court', 73, 73, 57, 57, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(277, 0, '0.0.0.0', 0, 'RaKaznar_Turris', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(278, 0, '0.0.0.0', 0, '278', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(279, 0, '62.171.180.46', 20040, 'Walk_of_Echoes_[P2]', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(280, 1, '0.0.0.0', 0, 'Mog_Garden', 67, 67, 67, 67, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(281, 0, '0.0.0.0', 0, 'Leafallia', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(282, 0, '0.0.0.0', 0, 'Mount_Kamihr', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(283, 0, '0.0.0.0', 0, 'Silver_Knife', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(284, 1, '0.0.0.0', 0, 'Celennia_Memorial_Library', 63, 63, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(285, 1, '0.0.0.0', 0, 'Feretory', 0, 0, 0, 0, 0, 0.00, 1056, 6);
INSERT INTO `zone_settings` VALUES(286, 0, '0.0.0.0', 0, '286', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(287, 6, '0.0.0.0', 0, 'Maquette_Abdhaljs-Legion_B', 0, 0, 143, 143, 0, 0.00, 1178, 6);
INSERT INTO `zone_settings` VALUES(288, 2, '0.0.0.0', 0, 'Escha_ZiTah', 80, 80, 80, 80, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(289, 2, '0.0.0.0', 0, 'Escha_RuAun', 80, 80, 80, 80, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(290, 0, '0.0.0.0', 0, 'Desuetia_Empyreal_Paradox', 0, 0, 0, 0, 0, 0.00, 1152, 6);
INSERT INTO `zone_settings` VALUES(291, 0, '0.0.0.0', 0, 'Reisenjima', 79, 79, 79, 79, 0, 0.00, 1152, 6);
INSERT INTO `zone_settings` VALUES(292, 0, '0.0.0.0', 0, 'Reisenjima_Henge', 0, 0, 0, 0, 0, 0.00, 1024, 6);
INSERT INTO `zone_settings` VALUES(293, 0, '0.0.0.0', 0, 'Reisenjima_Sanctorium', 0, 0, 0, 0, 0, 0.00, 1152, 6);
INSERT INTO `zone_settings` VALUES(294, 5, '62.171.180.46', 21250, 'Dynamis-San_dOria_[D]', 88, 88, 88, 88, 0, 0.00, 1424, 6);
INSERT INTO `zone_settings` VALUES(295, 5, '62.171.180.46', 21250, 'Dynamis-Bastok_[D]', 88, 88, 88, 88, 0, 0.00, 1424, 6);
INSERT INTO `zone_settings` VALUES(296, 5, '62.171.180.46', 21250, 'Dynamis-Windurst_[D]', 88, 88, 88, 88, 0, 0.00, 1424, 6);
INSERT INTO `zone_settings` VALUES(297, 5, '62.171.180.46', 21250, 'Dynamis-Jeuno_[D]', 88, 88, 88, 88, 0, 0.00, 1424, 6);
INSERT INTO `zone_settings` VALUES(298, 0, '62.171.180.46', 20040, 'Walk_of_Echoes_[P1]', 186, 186, 186, 186, 0, 0.00, 1024, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zone_settings`
--
ALTER TABLE `zone_settings`
  ADD PRIMARY KEY (`zoneid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
