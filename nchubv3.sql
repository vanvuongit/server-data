-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for nchubv3
DROP DATABASE IF EXISTS `nchubv3`;
CREATE DATABASE IF NOT EXISTS `nchubv3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `nchubv3`;

-- Dumping structure for table nchubv3.ak4y_fishing
DROP TABLE IF EXISTS `ak4y_fishing`;
CREATE TABLE IF NOT EXISTS `ak4y_fishing` (
  `citizenid` varchar(255) DEFAULT NULL,
  `currentXP` int(11) DEFAULT NULL,
  `tasks` longtext DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.ak4y_fishing: ~0 rows (approximately)

-- Dumping structure for table nchubv3.apartments
DROP TABLE IF EXISTS `apartments`;
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.apartments: ~0 rows (approximately)

-- Dumping structure for table nchubv3.auth_codes
DROP TABLE IF EXISTS `auth_codes`;
CREATE TABLE IF NOT EXISTS `auth_codes` (
  `transaction` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.auth_codes: ~0 rows (approximately)

-- Dumping structure for table nchubv3.banking_transactions
DROP TABLE IF EXISTS `banking_transactions`;
CREATE TABLE IF NOT EXISTS `banking_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(50) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `society` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_sender` (`sender_name`),
  KEY `idx_receiver` (`receiver_name`),
  KEY `idx_society` (`society`),
  KEY `idx_timestamp` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.banking_transactions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.bans
DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.bans: ~0 rows (approximately)

-- Dumping structure for table nchubv3.bees
DROP TABLE IF EXISTS `bees`;
CREATE TABLE IF NOT EXISTS `bees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext DEFAULT NULL,
  `beequeen` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table nchubv3.bees: ~0 rows (approximately)

-- Dumping structure for table nchubv3.bills
DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `bill_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `sender_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender_citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recipient_citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.bills: ~0 rows (approximately)

-- Dumping structure for table nchubv3.bossmenu
DROP TABLE IF EXISTS `bossmenu`;
CREATE TABLE IF NOT EXISTS `bossmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7958 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.bossmenu: ~21 rows (approximately)
REPLACE INTO `bossmenu` (`id`, `job_name`, `amount`) VALUES
	(1, 'police', 5200),
	(2, 'ambulance', 10500),
	(3, 'realestate', 0),
	(4, 'tuner', 0),
	(5, 'burgershot', 0),
	(6, 'mechanic', 0),
	(7, 'vanilla', 0),
	(8, 'whitewidow', 0),
	(9, 'pizzathis', 0),
	(10, 'catcafe', 0),
	(11, 'tequila', 0),
	(12, 'taco', 0),
	(13, 'drugdealer', 0),
	(41, 'pawn', 0),
	(377, 'casino', 0),
	(405, 'judge', 0),
	(608, 'beanmachine', 0),
	(1481, 'unemployed', 0),
	(1906, 'coolbeans', 0),
	(2931, 'redline', 0),
	(5095, 'yellowjack', 0);

-- Dumping structure for table nchubv3.character_current
DROP TABLE IF EXISTS `character_current`;
CREATE TABLE IF NOT EXISTS `character_current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext DEFAULT NULL,
  `model` longtext NOT NULL DEFAULT '',
  `drawables` longtext NOT NULL DEFAULT '',
  `props` longtext NOT NULL DEFAULT '',
  `drawtextures` longtext NOT NULL DEFAULT '',
  `proptextures` longtext NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.character_current: ~0 rows (approximately)

-- Dumping structure for table nchubv3.character_face
DROP TABLE IF EXISTS `character_face`;
CREATE TABLE IF NOT EXISTS `character_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `hairColor` varchar(255) DEFAULT NULL,
  `headBlend` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headBlend`)),
  `headOverlay` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headOverlay`)),
  `headStructure` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headStructure`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.character_face: ~0 rows (approximately)

-- Dumping structure for table nchubv3.character_outfits
DROP TABLE IF EXISTS `character_outfits`;
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` varchar(11) NOT NULL DEFAULT '',
  `model` longtext DEFAULT NULL,
  `drawables` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  `drawtextures` longtext DEFAULT NULL,
  `proptextures` longtext DEFAULT NULL,
  `hairColor` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nchubv3.character_outfits: ~0 rows (approximately)

-- Dumping structure for table nchubv3.communityservice
DROP TABLE IF EXISTS `communityservice`;
CREATE TABLE IF NOT EXISTS `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.communityservice: ~0 rows (approximately)

-- Dumping structure for table nchubv3.configs
DROP TABLE IF EXISTS `configs`;
CREATE TABLE IF NOT EXISTS `configs` (
  `name` varchar(20) NOT NULL,
  `config` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.configs: ~1 rows (approximately)
REPLACE INTO `configs` (`name`, `config`) VALUES
	('keylabs', '{"washer2":0,"worth1":0,"methlab2":12215,"weedlab":9855,"washer1":0,"cokelab":4739,"washer3":0,"methlab":9194,"worth4":0,"washer4":0,"worth3":0,"worth2":0}');

-- Dumping structure for table nchubv3.contract_auctions
DROP TABLE IF EXISTS `contract_auctions`;
CREATE TABLE IF NOT EXISTS `contract_auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_citizen_id` varchar(50) NOT NULL,
  `contract_id` varchar(50) NOT NULL,
  `contract_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`contract_data`)),
  `start_bid` int(11) NOT NULL,
  `current_bid` int(11) NOT NULL,
  `current_bidder_citizen_id` varchar(50) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.contract_auctions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.cryptominers
DROP TABLE IF EXISTS `cryptominers`;
CREATE TABLE IF NOT EXISTS `cryptominers` (
  `citizenid` varchar(50) NOT NULL,
  `card` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.cryptominers: ~0 rows (approximately)

-- Dumping structure for table nchubv3.crypto_transactions
DROP TABLE IF EXISTS `crypto_transactions`;
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.crypto_transactions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.dealers
DROP TABLE IF EXISTS `dealers`;
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.dealers: ~0 rows (approximately)

-- Dumping structure for table nchubv3.fine_types
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.fine_types: ~90 rows (approximately)
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
	(1, 'Murder', 3000, 0, 15),
	(2, 'Involuntary Manslaughter', 1000, 0, 5),
	(3, 'Vehicular Manslaughter', 750, 0, 5),
	(4, 'Attempted Murder on LEO', 2000, 0, 10),
	(5, 'Attempted Murder', 1500, 0, 50),
	(6, 'Assault w/ Deadly Weapon on LEO', 1500, 0, 45),
	(7, 'Assault w/ Deadly Weapon', 1000, 0, 30),
	(8, 'Assault on LEO', 750, 0, 15),
	(9, 'Assault', 1000, 0, 10),
	(10, 'Kidnapping of an LEO', 1000, 0, 20),
	(11, 'Kidnapping / Hostage Taking', 750, 0, 20),
	(12, 'Bank Robbery', 3000, 0, 50),
	(13, 'Armored Truck Robbery', 2000, 0, 20),
	(14, 'Jewelery Store Robbery ', 3000, 0, 20),
	(15, 'Store Robbery', 2000, 0, 15),
	(16, 'House Robbery', 1000, 0, 10),
	(17, 'Corruption', 10000, 0, 650),
	(18, 'Felony Driving Under the Influence', 500, 0, 10),
	(19, 'Grand Theft Auto', 500, 0, 5),
	(20, 'Evading Arrest', 500, 0, 10),
	(21, 'Driving Under the Influence', 500, 0, 5),
	(22, 'Hit and Run', 500, 0, 5),
	(23, 'Operating a Motor Vehicle without a License', 500, 0, 10),
	(24, 'Criminal Speeding', 300, 0, 10),
	(25, 'Excessive Speeding 4', 250, 0, 0),
	(26, 'Excessive Speeding 3', 200, 0, 0),
	(27, 'Excessive Speeding 2', 150, 0, 0),
	(28, 'Excessive Speeding', 100, 0, 0),
	(29, 'Operating an Unregisted Motor Vehicle', 250, 0, 5),
	(30, 'Reckless Endangerment', 250, 0, 5),
	(31, 'Careless Driving', 250, 0, 0),
	(32, 'Operating a Non-Street Legal Vehicle', 200, 0, 5),
	(33, 'Failure to Stop', 250, 0, 0),
	(34, 'Obstructing Traffic', 150, 0, 0),
	(35, 'Illegal Lane Change', 100, 0, 0),
	(36, 'Failure to Yield to an Emergency Vehicle', 150, 0, 0),
	(37, 'Illegal Parking', 100, 0, 0),
	(38, 'Excessive Vehicle Noise', 100, 0, 0),
	(39, 'Driving without Proper Use of Headlights', 100, 0, 0),
	(40, 'Illegal U-Turn', 100, 0, 0),
	(41, 'Drug Manufacturing/Cultivation', 1500, 0, 20),
	(42, 'Possession of Schedule 1 Drug', 2500, 0, 15),
	(43, 'Possession of Schedule 2 Drug', 3000, 0, 20),
	(44, 'Sale/Distribution of Schedule 1 Drug', 3500, 0, 20),
	(45, 'Sale/Distribution of Schedule 2 Drug', 4000, 0, 20),
	(46, 'Drug Trafficking', 3000, 0, 20),
	(47, 'Weapons Caching of Class 2s', 3500, 0, 20),
	(48, 'Weapons Caching of Class 1s', 3000, 0, 40),
	(49, 'Weapons Trafficking of Class 2s', 3000, 0, 20),
	(50, 'Weapons Trafficking of Class 1s', 3500, 0, 20),
	(51, 'Possession of a Class 2 Firearm', 2500, 0, 20),
	(52, 'Possession of a Class 1 Firearm', 1500, 0, 15),
	(53, 'Brandishing a Firearm', 1000, 0, 5),
	(54, 'Unlawful discharge of a firearm', 1500, 0, 10),
	(55, 'Perjury', 1000, 0, 60),
	(56, 'Arson', 500, 0, 30),
	(57, 'False Impersonation of a Government Official', 2000, 0, 25),
	(58, 'Possession of Dirty Money', 2000, 0, 25),
	(59, 'Possession of Stolen Goods', 1000, 0, 15),
	(60, 'Unlawful Solicitation', 1500, 0, 20),
	(61, 'Larceny', 150, 0, 20),
	(62, 'Felony Attempted Commision of an Offence/Crime', 1500, 0, 20),
	(63, 'Tampering With Evidence', 20000, 0, 20),
	(64, 'Illegal Gambling', 2000, 0, 20),
	(65, 'Bribery', 2000, 0, 20),
	(66, 'Stalking', 1500, 0, 20),
	(67, 'Organizing an illegal event', 3500, 0, 15),
	(68, 'Participating in an illegal event', 2500, 0, 5),
	(69, 'Criminal Mischief', 1000, 0, 15),
	(70, 'Prostitution', 2500, 0, 15),
	(71, 'Failure to Identify', 1500, 0, 15),
	(72, 'Obstruction of Justice', 25000, 0, 15),
	(73, 'Resisting Arrest', 1000, 0, 10),
	(74, 'Disturbing the Peace', 1000, 0, 10),
	(75, 'Threat to do Bodily Harm', 1000, 0, 10),
	(76, 'Terroristic Threat', 5000, 0, 10),
	(77, 'Damage to Government Property', 500, 0, 10),
	(78, 'Contempt of Court', 25000, 0, 10),
	(79, 'Failure to Obey a Lawful Order', 500, 0, 10),
	(80, 'False Report', 240, 0, 10),
	(81, 'Trespassing', 1000, 0, 10),
	(82, 'Loitering', 250, 0, 0),
	(83, 'Public Intoxication', 1000, 0, 0),
	(84, 'Indecent Exposure', 500, 0, 0),
	(85, 'Verbal Harassment ', 500, 0, 0),
	(86, 'Aiding and Abetting', 500, 0, 0),
	(87, 'Incident Report', 0, 0, 0),
	(88, 'Written Citation', 0, 0, 0),
	(89, 'Stealing PD Stuffs', 25000, 0, 20),
	(90, 'Verbal Warning', 0, 0, 0);

-- Dumping structure for table nchubv3.fuel_stations
DROP TABLE IF EXISTS `fuel_stations`;
CREATE TABLE IF NOT EXISTS `fuel_stations` (
  `location` int(11) NOT NULL,
  `owned` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `fuelprice` int(11) DEFAULT NULL,
  `balance` int(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.fuel_stations: ~27 rows (approximately)
REPLACE INTO `fuel_stations` (`location`, `owned`, `owner`, `fuel`, `fuelprice`, `balance`, `label`) VALUES
	(1, 0, '0', 50000, 16, 0, 'Davis Avenue Ron'),
	(2, 0, '0', 50000, 16, 0, 'Grove Street LTD'),
	(3, 0, '0', 50000, 16, 0, 'ITS CRAZY MAN!'),
	(4, 0, '0', 50000, 16, 0, 'Little Seoul LTD'),
	(5, 0, '0', 50000, 16, 0, 'Strawberry Ave Xero'),
	(6, 0, '0', 50000, 16, 0, 'Popular Street Ron'),
	(7, 0, '0', 50000, 16, 0, 'Capital Blvd Ron'),
	(8, 0, '0', 50000, 16, 0, 'Mirror Park LTD'),
	(9, 0, '0', 50000, 13, 0, 'NCHub Ave Globe Oil'),
	(10, 0, '0', 50000, 16, 0, 'North Rockford Ron'),
	(11, 0, '0', 50000, 16, 0, 'Great Ocean Xero'),
	(12, 0, '0', 50000, 16, 0, 'Paleto Blvd Xero'),
	(13, 0, '0', 50000, 16, 0, 'Paleto Ron'),
	(14, 0, '0', 50000, 16, 0, 'Paleto Globe Oil'),
	(15, 0, '0', 50000, 16, 0, 'Grapeseed LTD'),
	(16, 0, '0', 50000, 16, 0, 'Sandy Shores Xero'),
	(17, 0, '0', 50000, 16, 0, 'Sandy Shores Globe Oil'),
	(18, 0, '0', 50000, 16, 0, 'Senora Freeway Xero'),
	(19, 0, '0', 50000, 16, 0, 'Harmony Globe Oil'),
	(20, 0, '0', 50000, 16, 0, 'Route 68 Globe Oil'),
	(21, 0, '0', 50000, 16, 0, 'Route 68 Workshop Globe O'),
	(22, 0, '0', 50000, 16, 0, 'Route 68 Xero'),
	(23, 0, '0', 50000, 16, 0, 'Route 68 Ron'),
	(24, 0, '0', 50000, 16, 0, 'Rex\'s Diner Globe Oil'),
	(25, 0, '0', 50000, 16, 0, 'Palmino Freeway Ron'),
	(26, 0, '0', 50000, 16, 0, 'North Rockford LTD'),
	(27, 0, '0', 50000, 16, 0, 'Alta Street Globe Oil');

-- Dumping structure for table nchubv3.gangmenu
DROP TABLE IF EXISTS `gangmenu`;
CREATE TABLE IF NOT EXISTS `gangmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.gangmenu: ~6 rows (approximately)
REPLACE INTO `gangmenu` (`id`, `job_name`, `amount`) VALUES
	(1, 'lostmc', 0),
	(2, 'ballas', 0),
	(3, 'vagos', 0),
	(4, 'cartel', 0),
	(5, 'families', 0),
	(6, 'triads', 0);

-- Dumping structure for table nchubv3.gang_vehicles
DROP TABLE IF EXISTS `gang_vehicles`;
CREATE TABLE IF NOT EXISTS `gang_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(15) NOT NULL,
  `gang` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `stored` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `gang` (`gang`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.gang_vehicles: ~0 rows (approximately)

-- Dumping structure for table nchubv3.gloveboxitems
DROP TABLE IF EXISTS `gloveboxitems`;
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.gloveboxitems: ~0 rows (approximately)

-- Dumping structure for table nchubv3.harmony_cooldown
DROP TABLE IF EXISTS `harmony_cooldown`;
CREATE TABLE IF NOT EXISTS `harmony_cooldown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(25) NOT NULL,
  `metadata` text NOT NULL DEFAULT '{}',
  PRIMARY KEY (`serial`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.harmony_cooldown: ~0 rows (approximately)

-- Dumping structure for table nchubv3.houselocations
DROP TABLE IF EXISTS `houselocations`;
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(2) DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` text DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `mlo` text DEFAULT NULL,
  `ipl` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.houselocations: ~0 rows (approximately)

-- Dumping structure for table nchubv3.house_plants
DROP TABLE IF EXISTS `house_plants`;
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.house_plants: ~0 rows (approximately)

-- Dumping structure for table nchubv3.lapraces
DROP TABLE IF EXISTS `lapraces`;
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.lapraces: ~0 rows (approximately)

-- Dumping structure for table nchubv3.management_outfits
DROP TABLE IF EXISTS `management_outfits`;
CREATE TABLE IF NOT EXISTS `management_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.management_outfits: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_bolos
DROP TABLE IF EXISTS `mdt_bolos`;
CREATE TABLE IF NOT EXISTS `mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `individual` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_bolos: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_bulletin
DROP TABLE IF EXISTS `mdt_bulletin`;
CREATE TABLE IF NOT EXISTS `mdt_bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_bulletin: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_clocking
DROP TABLE IF EXISTS `mdt_clocking`;
CREATE TABLE IF NOT EXISTS `mdt_clocking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `clock_in_time` varchar(255) NOT NULL DEFAULT '',
  `clock_out_time` varchar(50) DEFAULT NULL,
  `total_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_clocking: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_convictions
DROP TABLE IF EXISTS `mdt_convictions`;
CREATE TABLE IF NOT EXISTS `mdt_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) DEFAULT NULL,
  `linkedincident` int(11) NOT NULL DEFAULT 0,
  `warrant` varchar(50) DEFAULT NULL,
  `guilty` varchar(50) DEFAULT NULL,
  `processed` varchar(50) DEFAULT NULL,
  `associated` varchar(50) DEFAULT '0',
  `charges` text DEFAULT NULL,
  `fine` int(11) DEFAULT 0,
  `sentence` int(11) DEFAULT 0,
  `recfine` int(11) DEFAULT 0,
  `recsentence` int(11) DEFAULT 0,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_convictions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_data
DROP TABLE IF EXISTS `mdt_data`;
CREATE TABLE IF NOT EXISTS `mdt_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) NOT NULL,
  `information` mediumtext DEFAULT NULL,
  `tags` text NOT NULL,
  `gallery` text NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  `pfp` text DEFAULT NULL,
  `fingerprint` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_data: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_impound
DROP TABLE IF EXISTS `mdt_impound`;
CREATE TABLE IF NOT EXISTS `mdt_impound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleid` int(11) NOT NULL,
  `linkedreport` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_impound: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_incidents
DROP TABLE IF EXISTS `mdt_incidents`;
CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tags` text NOT NULL,
  `officersinvolved` text NOT NULL,
  `civsinvolved` text NOT NULL,
  `evidence` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) NOT NULL DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_incidents: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_logs
DROP TABLE IF EXISTS `mdt_logs`;
CREATE TABLE IF NOT EXISTS `mdt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_logs: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_reports
DROP TABLE IF EXISTS `mdt_reports`;
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `officersinvolved` text DEFAULT NULL,
  `civsinvolved` text DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_reports: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_vehicleinfo
DROP TABLE IF EXISTS `mdt_vehicleinfo`;
CREATE TABLE IF NOT EXISTS `mdt_vehicleinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `stolen` tinyint(1) NOT NULL DEFAULT 0,
  `code5` tinyint(1) NOT NULL DEFAULT 0,
  `image` text NOT NULL DEFAULT '',
  `points` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_vehicleinfo: ~0 rows (approximately)

-- Dumping structure for table nchubv3.mdt_weaponinfo
DROP TABLE IF EXISTS `mdt_weaponinfo`;
CREATE TABLE IF NOT EXISTS `mdt_weaponinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(50) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `information` text NOT NULL DEFAULT '',
  `weapClass` varchar(50) DEFAULT NULL,
  `weapModel` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.mdt_weaponinfo: ~0 rows (approximately)

-- Dumping structure for table nchubv3.multichars_slots
DROP TABLE IF EXISTS `multichars_slots`;
CREATE TABLE IF NOT EXISTS `multichars_slots` (
  `identifier` varchar(60) NOT NULL,
  `slots` int(11) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  KEY `slots` (`slots`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.multichars_slots: ~0 rows (approximately)

-- Dumping structure for table nchubv3.multijobs
DROP TABLE IF EXISTS `multijobs`;
CREATE TABLE IF NOT EXISTS `multijobs` (
  `citizenid` varchar(100) NOT NULL,
  `jobdata` text DEFAULT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.multijobs: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_anticheat
DROP TABLE IF EXISTS `nchub_anticheat`;
CREATE TABLE IF NOT EXISTS `nchub_anticheat` (
  `banID` varchar(9) NOT NULL,
  `playerName` varchar(25) NOT NULL,
  `steamid` varchar(40) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL,
  `discordid` varchar(100) DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `HWID` varchar(130) NOT NULL,
  `HWID2` varchar(130) NOT NULL,
  `HWID3` varchar(130) NOT NULL,
  `HWID4` varchar(130) NOT NULL,
  `HWID5` varchar(130) NOT NULL,
  PRIMARY KEY (`HWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table nchubv3.nchub_anticheat: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_cokebusiness
DROP TABLE IF EXISTS `nchub_cokebusiness`;
CREATE TABLE IF NOT EXISTS `nchub_cokebusiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `bucketid` int(11) DEFAULT NULL,
  `upgrades` int(11) DEFAULT NULL,
  `access` text DEFAULT NULL,
  `membercap` int(11) DEFAULT NULL,
  `supplies` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `password` int(11) DEFAULT NULL,
  `lablocation` text DEFAULT NULL,
  `plane` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_cokebusiness: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_containers
DROP TABLE IF EXISTS `nchub_containers`;
CREATE TABLE IF NOT EXISTS `nchub_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(50) NOT NULL,
  `container_type` varchar(50) NOT NULL,
  `owner_citizenid` varchar(50) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `position` text DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `random_id` (`random_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_containers: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_containers_access_log
DROP TABLE IF EXISTS `nchub_containers_access_log`;
CREATE TABLE IF NOT EXISTS `nchub_containers_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(50) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `random_id` (`random_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_containers_access_log: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_delivery_employees
DROP TABLE IF EXISTS `nchub_delivery_employees`;
CREATE TABLE IF NOT EXISTS `nchub_delivery_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `profile` varchar(32) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_delivery_employees: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_diving
DROP TABLE IF EXISTS `nchub_diving`;
CREATE TABLE IF NOT EXISTS `nchub_diving` (
  `identifier` char(50) DEFAULT NULL,
  `profiledata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nchub_diving: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_garbage_players
DROP TABLE IF EXISTS `nchub_garbage_players`;
CREATE TABLE IF NOT EXISTS `nchub_garbage_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `exp` int(11) DEFAULT 0,
  `photo` int(11) DEFAULT 7,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_garbage_players: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nchub_plants
DROP TABLE IF EXISTS `nchub_plants`;
CREATE TABLE IF NOT EXISTS `nchub_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` text DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `process` float NOT NULL DEFAULT 0,
  `multiplier` int(11) NOT NULL DEFAULT 0,
  `water` float NOT NULL DEFAULT 0,
  `fertilizer` float NOT NULL DEFAULT 0,
  `owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_plants: ~3 rows (approximately)
REPLACE INTO `nchub_plants` (`id`, `coords`, `type`, `process`, `multiplier`, `water`, `fertilizer`, `owner`) VALUES
	(215, '{"z":43.12813949584961,"x":1908.48046875,"y":4772.6787109375}', 'tomato_seed', 2.75, 25, 4.5, 4.5, 'NXP83414'),
	(216, '{"z":43.15664672851562,"x":1910.4493408203126,"y":4774.25830078125}', 'tomato_seed', 2.75, 25, 4.5, 4.5, 'NXP83414'),
	(217, '{"z":43.23665237426758,"x":1912.75146484375,"y":4776.14111328125}', 'tomato_seed', 2.5, 25, 5, 5, 'NXP83414');

-- Dumping structure for table nchubv3.nchub_skills
DROP TABLE IF EXISTS `nchub_skills`;
CREATE TABLE IF NOT EXISTS `nchub_skills` (
  `player` varchar(128) NOT NULL,
  `skills` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nchub_skills: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_cams
DROP TABLE IF EXISTS `nc_cams`;
CREATE TABLE IF NOT EXISTS `nc_cams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `setting` longtext DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `rot` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table nchubv3.nc_cams: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_clothing
DROP TABLE IF EXISTS `nc_clothing`;
CREATE TABLE IF NOT EXISTS `nc_clothing` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT 0,
  `model` varchar(50) NOT NULL DEFAULT '',
  `drawables_texture` text NOT NULL,
  `props_texture` text NOT NULL,
  `hairColor` text NOT NULL,
  `fadeLayer` text DEFAULT '0',
  `customHeadModel` text NOT NULL DEFAULT 'false',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nc_clothing: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_electrician
DROP TABLE IF EXISTS `nc_electrician`;
CREATE TABLE IF NOT EXISTS `nc_electrician` (
  `identifier` char(50) DEFAULT NULL,
  `profiledata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nc_electrician: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_gardener
DROP TABLE IF EXISTS `nc_gardener`;
CREATE TABLE IF NOT EXISTS `nc_gardener` (
  `identifier` char(50) DEFAULT NULL,
  `profiledata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nc_gardener: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_head_clothing
DROP TABLE IF EXISTS `nc_head_clothing`;
CREATE TABLE IF NOT EXISTS `nc_head_clothing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `head_blend` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `head_features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `head_overlays` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `fade` longtext DEFAULT '""',
  `eye_color` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `head_blend` CHECK (json_valid(`head_blend`)),
  CONSTRAINT `head_features` CHECK (json_valid(`head_features`)),
  CONSTRAINT `head_overlays` CHECK (json_valid(`head_overlays`))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nc_head_clothing: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_outfits
DROP TABLE IF EXISTS `nc_outfits`;
CREATE TABLE IF NOT EXISTS `nc_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `drawables_texture` text DEFAULT NULL,
  `props_texture` text DEFAULT NULL,
  `hairColor` text DEFAULT NULL,
  `fadeLayer` text DEFAULT NULL,
  `customHeadModel` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_slot` (`cid`,`slot`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.nc_outfits: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_unlockedslots
DROP TABLE IF EXISTS `nc_unlockedslots`;
CREATE TABLE IF NOT EXISTS `nc_unlockedslots` (
  `license` longtext DEFAULT NULL,
  `slots` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nc_unlockedslots: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_vehicleshop_showroom_vehicles
DROP TABLE IF EXISTS `nc_vehicleshop_showroom_vehicles`;
CREATE TABLE IF NOT EXISTS `nc_vehicleshop_showroom_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealershipId` int(11) DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nc_vehicleshop_showroom_vehicles: ~0 rows (approximately)

-- Dumping structure for table nchubv3.nc_vehicleshop_stocks
DROP TABLE IF EXISTS `nc_vehicleshop_stocks`;
CREATE TABLE IF NOT EXISTS `nc_vehicleshop_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealershipId` int(11) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.nc_vehicleshop_stocks: ~0 rows (approximately)

-- Dumping structure for table nchubv3.objects
DROP TABLE IF EXISTS `objects`;
CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.objects: ~0 rows (approximately)

-- Dumping structure for table nchubv3.occasion_vehicles
DROP TABLE IF EXISTS `occasion_vehicles`;
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.occasion_vehicles: ~0 rows (approximately)

-- Dumping structure for table nchubv3.officer_data
DROP TABLE IF EXISTS `officer_data`;
CREATE TABLE IF NOT EXISTS `officer_data` (
  `citizenid` varchar(50) NOT NULL,
  `callsign` varchar(50) DEFAULT 'NO CALLSIGN',
  `badge` varchar(50) DEFAULT '',
  `custom_image` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'main',
  `channel` varchar(10) DEFAULT '1B',
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.officer_data: ~5 rows (approximately)
REPLACE INTO `officer_data` (`citizenid`, `callsign`, `badge`, `custom_image`, `category`, `channel`) VALUES
	('EIL98113', 'NO CALLSIGN', '30', NULL, 'main', '1B'),
	('KSV21723', '207', '2', 'https://media.discordapp.net/attachments/628271514906656828/1385502856605466657/image.png?ex=685c3c56&is=685aead6&hm=fe89e59e14d9ca97815fda3f2cc1a84dc4a5c4f6f660beb9874fd30183787787&=&format=webp&quality=lossless', 'investigation', '8B'),
	('NXP83414', '200', '1', 'https://blazesmods.com/cdn/shop/products/1_e628fd8a-4584-4718-8522-13ce8d0811b3.png?v=1687970380&width=1946', 'pacific', '4B'),
	('TXR22118', '300', '0', 'https://jadesignsfivem.com/cdn/shop/files/FiveM_b2699_GTAProcess_2025-03-09_12-54-23.png?v=1741557081', 'jewelry', '5B'),
	('ZQU51177', 'NO CALLSIGN', '34', NULL, 'main', '1B');

-- Dumping structure for table nchubv3.officer_data_colors
DROP TABLE IF EXISTS `officer_data_colors`;
CREATE TABLE IF NOT EXISTS `officer_data_colors` (
  `setting_name` varchar(50) NOT NULL,
  `setting_value` text DEFAULT NULL,
  PRIMARY KEY (`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.officer_data_colors: ~1 rows (approximately)
REPLACE INTO `officer_data_colors` (`setting_name`, `setting_value`) VALUES
	('callsignColors', '[{"max":199,"color":"#3498db","name":"Patrol","min":100},{"max":299,"color":"#2ecc71","name":"Traffic","min":200},{"max":399,"color":"#e67e22","name":"Detective","min":300},{"max":499,"color":"#9b59b6","name":"Command Staff","min":400}]');

-- Dumping structure for table nchubv3.ox_doorlock
DROP TABLE IF EXISTS `ox_doorlock`;
CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.ox_doorlock: ~344 rows (approximately)
REPLACE INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
	(1, 'atom atom4', '{"maxDistance":2.0,"coords":{"x":91.02511596679688,"y":297.31292724609377,"z":110.34552764892578},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":717680614}'),
	(2, 'atom atom3', '{"maxDistance":2.5,"coords":{"x":81.59193420410156,"y":275.4132995605469,"z":110.56688690185547},"groups":{"burgershot":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":340,"model":-862896030,"coords":{"x":82.76136016845703,"y":274.9876708984375,"z":110.56688690185547}},{"heading":160,"model":2050300835,"coords":{"x":80.4225082397461,"y":275.83892822265627,"z":110.56688690185547}}]}'),
	(3, 'atom atom5', '{"maxDistance":2.0,"coords":{"x":86.11734771728516,"y":298.1405944824219,"z":110.3944091796875},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":1801511700}'),
	(4, 'atom atom1', '{"maxDistance":2.5,"coords":{"x":79.60089111328125,"y":288.948486328125,"z":110.56688690185547},"groups":{"burgershot":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":250,"model":-862896030,"coords":{"x":79.17525482177735,"y":287.7790832519531,"z":110.56688690185547}},{"heading":70,"model":2050300835,"coords":{"x":80.02653503417969,"y":290.117919921875,"z":110.56688690185547}}]}'),
	(5, 'BCSO BCSO3', '{"maxDistance":2.0,"coords":{"x":1810.131103515625,"y":3676.46435546875,"z":34.39608764648437},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":2010487154}'),
	(6, 'BCSO BCSO13', '{"maxDistance":2.0,"coords":{"x":1838.006103515625,"y":3677.10400390625,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":1364638935}'),
	(7, 'BCSO BCSO1', '{"maxDistance":2.0,"coords":{"x":1813.55126953125,"y":3675.055419921875,"z":34.39608764648437},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":2010487154}'),
	(8, 'BCSO BCSO20', '{"maxDistance":6.0,"coords":{"x":1862.001953125,"y":3687.52197265625,"z":33.01514053344726},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":30,"lockpick":true,"model":1286535678}'),
	(9, 'BCSO BCSO8', '{"maxDistance":2.0,"coords":{"x":1823.86328125,"y":3681.116943359375,"z":34.33900833129883},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":-1501157055}'),
	(10, 'BCSO BCSO16', '{"maxDistance":2.5,"coords":{"x":1836.25244140625,"y":3674.068359375,"z":34.33900833129883},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":210,"model":-1501157055,"coords":{"x":1835.126708984375,"y":3673.41845703125,"z":34.33900833129883}},{"heading":30,"model":-1501157055,"coords":{"x":1837.378173828125,"y":3674.71826171875,"z":34.33900833129883}}]}'),
	(11, 'BCSO BCSO14', '{"maxDistance":2.0,"coords":{"x":1836.488037109375,"y":3681.426513671875,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":1364638935}'),
	(12, 'BCSO BCSO12', '{"maxDistance":2.0,"coords":{"x":1829.852783203125,"y":3673.788818359375,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":true,"model":-1264811159}'),
	(13, 'BCSO BCSO9', '{"maxDistance":2.0,"coords":{"x":1829.38427734375,"y":3680.266845703125,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":-1264811159}'),
	(14, 'BCSO BCSO19', '{"maxDistance":2.0,"coords":{"x":1828.4293212890626,"y":3673.811767578125,"z":38.95244979858398},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":-1626613696}'),
	(15, 'BCSO BCSO7', '{"maxDistance":2.0,"coords":{"x":1818.31689453125,"y":3669.27783203125,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":true,"model":1364638935}'),
	(16, 'BCSO BCSO6', '{"maxDistance":2.0,"coords":{"x":1814.195068359375,"y":3669.453369140625,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":true,"model":-1264811159}'),
	(17, 'BCSO BCSO21', '{"maxDistance":2.0,"coords":{"x":1845.406982421875,"y":3677.485107421875,"z":34.6119499206543},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":-1156020871}'),
	(18, 'BCSO BCSO4', '{"maxDistance":2.0,"coords":{"x":1808.62939453125,"y":3679.0654296875,"z":34.39608764648437},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":2010487154}'),
	(19, 'BCSO BCSO18', '{"maxDistance":2.0,"coords":{"x":1831.2298583984376,"y":3675.428466796875,"z":38.95244979858398},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":-1626613696}'),
	(20, 'BCSO BCSO15', '{"maxDistance":2.0,"coords":{"x":1838.9652099609376,"y":3682.856689453125,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":-1264811159}'),
	(21, 'BCSO BCSO5', '{"maxDistance":2.0,"coords":{"x":1807.131103515625,"y":3681.660400390625,"z":34.39608764648437},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":true,"model":2010487154}'),
	(22, 'BCSO BCSO11', '{"maxDistance":2.0,"coords":{"x":1827.072021484375,"y":3674.496337890625,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":-1264811159}'),
	(23, 'BCSO BCSO17', '{"maxDistance":2.0,"coords":{"x":1828.52734375,"y":3680.228759765625,"z":38.95244979858398},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":true,"model":-1264811159}'),
	(24, 'BCSO BCSO10', '{"maxDistance":2.0,"coords":{"x":1830.650146484375,"y":3676.562255859375,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":true,"model":-1264811159}'),
	(25, 'BCSO BCSO2', '{"maxDistance":2.0,"coords":{"x":1812.306640625,"y":3672.724365234375,"z":34.28223037719726},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":true,"model":1364638935}'),
	(26, 'boomerrangstreet boomerrangstreet4', '{"maxDistance":2.0,"coords":{"x":519.5894165039063,"y":240.06243896484376,"z":105.0416030883789},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":1042741067}'),
	(27, 'boomerrangstreet boomerrangstreet2', '{"maxDistance":6.0,"coords":{"x":466.79522705078127,"y":267.3243713378906,"z":102.04940795898438},"hideUi":false,"auto":true,"state":1,"heading":160,"lockpick":true,"model":853115216}'),
	(28, 'boomerrangstreet boomerrangstreet3', '{"maxDistance":2.0,"coords":{"x":471.2550964355469,"y":222.88815307617188,"z":105.04899597167969},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":1042741067}'),
	(29, 'boomerrangstreet boomerrangstreet5', '{"maxDistance":2.0,"coords":{"x":533.6976318359375,"y":200.16090393066407,"z":105.04899597167969},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":1042741067}'),
	(30, 'boomerrangstreet boomerrangstreet1', '{"maxDistance":6.0,"coords":{"x":409.9648132324219,"y":227.53330993652345,"z":102.20301818847656},"hideUi":false,"auto":true,"state":1,"heading":250,"lockpick":true,"model":853115216}'),
	(31, 'casino casino1', '{"maxDistance":6.0,"coords":{"x":1084.125732421875,"y":-2289.243408203125,"z":31.1184139251709},"groups":{"casino":0},"hideUi":false,"auto":true,"state":1,"heading":86,"lockpick":true,"model":-1618309597}'),
	(32, 'casino casino12', '{"maxDistance":2.0,"coords":{"x":1076.90771484375,"y":-2304.09765625,"z":24.58631324768066},"groups":{"casino":0},"hideUi":false,"state":1,"heading":85,"lockpick":true,"model":-1230442770}'),
	(33, 'casino casino4', '{"maxDistance":2.5,"coords":{"x":1059.40087890625,"y":-2307.310546875,"z":30.61402130126953},"groups":{"casino":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":176,"model":946049566,"coords":{"x":1060.476806640625,"y":-2307.3857421875,"z":30.61402130126953}},{"heading":176,"model":1330036708,"coords":{"x":1058.3250732421876,"y":-2307.2353515625,"z":30.61402130126953}}]}'),
	(34, 'casino casino6', '{"maxDistance":2.5,"coords":{"x":1076.129150390625,"y":-2311.8212890625,"z":24.64148902893066},"groups":{"casino":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":266,"model":1560632161,"coords":{"x":1076.22412109375,"y":-2310.46435546875,"z":24.64148902893066}},{"heading":266,"model":-813416359,"coords":{"x":1076.0343017578126,"y":-2313.178466796875,"z":24.64148902893066}}]}'),
	(35, 'casino casino10', '{"maxDistance":2.0,"coords":{"x":1099.090087890625,"y":-2297.871337890625,"z":24.81377220153808},"groups":{"casino":0},"hideUi":false,"state":1,"heading":356,"lockpick":true,"model":-185103545}'),
	(36, 'casino casino5', '{"maxDistance":2.5,"coords":{"x":1067.374755859375,"y":-2311.1259765625,"z":24.62066459655761},"groups":{"casino":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":265,"model":-1989765534,"coords":{"x":1067.4766845703126,"y":-2309.82958984375,"z":24.62066459655761}},{"heading":266,"model":-431854123,"coords":{"x":1067.272705078125,"y":-2312.42236328125,"z":24.62066459655761}}]}'),
	(37, 'casino casino3', '{"maxDistance":2.5,"coords":{"x":1059.8818359375,"y":-2300.7490234375,"z":30.66965293884277},"groups":{"casino":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":176,"model":-1429375248,"coords":{"x":1061.17529296875,"y":-2300.83935546875,"z":30.66965293884277}},{"heading":176,"model":714733195,"coords":{"x":1058.5885009765626,"y":-2300.658447265625,"z":30.66965293884277}}]}'),
	(38, 'casino casino2', '{"maxDistance":6.0,"coords":{"x":1083.2554931640626,"y":-2300.319580078125,"z":31.11460876464843},"groups":{"casino":0},"hideUi":false,"auto":true,"state":1,"heading":86,"lockpick":true,"model":-1618309597}'),
	(39, 'casino casino11', '{"maxDistance":2.0,"coords":{"x":1093.730224609375,"y":-2306.493896484375,"z":24.54071998596191},"groups":{"casino":0},"hideUi":false,"state":1,"heading":266,"lockpick":true,"model":452874391}'),
	(40, 'casino casino7', '{"maxDistance":2.0,"coords":{"x":1108.846435546875,"y":-2310.432861328125,"z":24.60752296447754},"groups":{"casino":0},"hideUi":false,"state":1,"heading":175,"lockpick":true,"model":2088680867}'),
	(41, 'casino casino9', '{"maxDistance":2.0,"coords":{"x":1115.7542724609376,"y":-2299.06884765625,"z":24.58684921264648},"groups":{"casino":0},"hideUi":false,"state":1,"heading":355,"lockpick":true,"model":-1421582160}'),
	(42, 'casino casino8', '{"maxDistance":2.0,"coords":{"x":1119.1680908203126,"y":-2303.559814453125,"z":24.58935356140136},"groups":{"casino":0},"hideUi":false,"state":1,"heading":85,"lockpick":true,"model":-1207991715}'),
	(43, 'catcafe catcafe7', '{"maxDistance":2.0,"coords":{"x":-600.8886108398438,"y":-1055.1314697265626,"z":22.71302795410156},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":1099436502}'),
	(44, 'catcafe catcafe6', '{"maxDistance":6.0,"coords":{"x":-600.9105834960938,"y":-1059.2176513671876,"z":21.72143173217773},"groups":{"catcafe":0},"hideUi":false,"auto":true,"state":1,"heading":270,"lockpick":true,"model":522844070}'),
	(45, 'catcafe catcafe5', '{"maxDistance":2.0,"coords":{"x":-592.4738159179688,"y":-1056.09130859375,"z":22.41300582885742},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-60871655}'),
	(46, 'catcafe catcafe2', '{"maxDistance":2.0,"coords":{"x":-587.3400268554688,"y":-1051.8994140625,"z":22.41300582885742},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":-1283712428}'),
	(47, 'catcafe catcafe4', '{"maxDistance":2.0,"coords":{"x":-594.4122924804688,"y":-1049.7686767578126,"z":22.49712753295898},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":2089009131}'),
	(48, 'catcafe catcafe3', '{"maxDistance":2.0,"coords":{"x":-571.7926635742188,"y":-1057.388427734375,"z":26.76796531677246},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":2089009131}'),
	(49, 'catcafe catcafe1', '{"maxDistance":2.5,"coords":{"x":-581.014404296875,"y":-1069.627197265625,"z":22.48974800109863},"groups":{"catcafe":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":0,"model":-69331849,"coords":{"x":-580.361083984375,"y":-1069.627197265625,"z":22.48974800109863}},{"heading":0,"model":526179188,"coords":{"x":-581.6677856445313,"y":-1069.627197265625,"z":22.48974800109863}}]}'),
	(50, 'CATCAFEBATH CATCAFEBATH1', '{"maxDistance":2.0,"coords":{"x":-570.6216430664063,"y":-1053.2105712890626,"z":22.41300582885742},"groups":{"catcafe":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":1717323416}'),
	(51, 'changstreet changstreet1', '{"maxDistance":6.0,"coords":{"x":-666.8790283203125,"y":-889.5230102539063,"z":23.53174018859863},"hideUi":false,"auto":true,"state":1,"heading":90,"lockpick":true,"model":-1603817716}'),
	(52, 'changstreet changstreet3', '{"maxDistance":6.0,"coords":{"x":-675.3309936523438,"y":-878.72216796875,"z":25.23844337463379},"hideUi":false,"auto":true,"state":1,"heading":270,"lockpick":true,"model":245838764}'),
	(53, 'changstreet changstreet2', '{"maxDistance":2.0,"coords":{"x":-674.4851684570313,"y":-896.2799682617188,"z":24.6669864654541},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-517883343}'),
	(54, 'club77 door8', '{"maxDistance":2.0,"coords":{"x":262.9405212402344,"y":-3160.739501953125,"z":5.97246789932251},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-590422879}'),
	(55, 'club77 door33', '{"maxDistance":2.0,"coords":{"x":255.58401489257813,"y":-3158.164306640625,"z":-1.15149104595184},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-2064844044}'),
	(56, 'club77 door3', '{"maxDistance":2.5,"coords":{"x":234.6852569580078,"y":-3176.81787109375,"z":-0.01549999974668},"groups":{"vanilla":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":-134062795,"coords":{"x":234.6920623779297,"y":-3178.117431640625,"z":-0.01549999974668}},{"heading":270,"model":-81108091,"coords":{"x":234.67845153808595,"y":-3175.51806640625,"z":-0.01549999974668}}]}'),
	(57, 'club77 door9', '{"maxDistance":2.0,"coords":{"x":254.16152954101563,"y":-3156.445068359375,"z":3.49116992950439},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":390840000}'),
	(58, 'club77 door451', '{"maxDistance":2.5,"coords":{"x":196.10089111328126,"y":-3167.464111328125,"z":5.97032785415649},"groups":{"vanilla":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":90,"model":521593591,"coords":{"x":196.10508728027345,"y":-3168.764404296875,"z":5.97032785415649}},{"heading":90,"model":279397912,"coords":{"x":196.0966796875,"y":-3166.163818359375,"z":5.97032785415649}}]}'),
	(59, 'club77 door131', '{"maxDistance":2.0,"coords":{"x":196.09071350097657,"y":-3162.6748046875,"z":5.96634197235107},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":288432257}'),
	(60, 'club77 door450', '{"maxDistance":2.5,"coords":{"x":234.6852569580078,"y":-3176.81787109375,"z":-0.01549999974668},"groups":{"vanilla":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":-81108091,"coords":{"x":234.67845153808595,"y":-3175.51806640625,"z":-0.01549999974668}},{"heading":270,"model":-134062795,"coords":{"x":234.6920623779297,"y":-3178.117431640625,"z":-0.01549999974668}}]}'),
	(61, 'club77 door2', '{"maxDistance":2.5,"coords":{"x":196.10089111328126,"y":-3167.464111328125,"z":5.97032785415649},"groups":{"vanilla":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":90,"model":279397912,"coords":{"x":196.0966796875,"y":-3166.163818359375,"z":5.97032785415649}},{"heading":90,"model":521593591,"coords":{"x":196.10508728027345,"y":-3168.764404296875,"z":5.97032785415649}}]}'),
	(62, 'club77 door4', '{"maxDistance":2.0,"coords":{"x":255.58401489257813,"y":-3158.164306640625,"z":-1.15149104595184},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-2064844044}'),
	(63, 'club77 door5', '{"maxDistance":2.0,"coords":{"x":252.8712615966797,"y":-3156.3310546875,"z":-1.14178597927093},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-2064844044}'),
	(64, 'club77 door7', '{"maxDistance":2.0,"coords":{"x":259.5631408691406,"y":-3165.1181640625,"z":3.39049100875854},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1821777087}'),
	(65, 'club77 door1', '{"maxDistance":2.0,"coords":{"x":196.09071350097657,"y":-3162.6748046875,"z":5.96634197235107},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":288432257}'),
	(66, 'club77 door6', '{"maxDistance":2.0,"coords":{"x":259.5821228027344,"y":-3175.175537109375,"z":3.39049100875854},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1821777087}'),
	(67, 'comicstore onyx1', '{"maxDistance":2.5,"coords":{"x":-143.77037048339845,"y":228.69500732421876,"z":95.13653564453125},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":180,"model":-1508283750,"coords":{"x":-145.07078552246095,"y":228.69500732421876,"z":95.13653564453125}},{"heading":360,"model":1483722564,"coords":{"x":-142.46995544433595,"y":228.69500732421876,"z":95.13653564453125}}]}'),
	(68, 'coolbeans coolbeans5', '{"maxDistance":2.5,"coords":{"x":-1206.0234375,"y":-1134.07177734375,"z":8.09148788452148},"groups":{"coolbeans":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":290,"model":1963114394,"coords":{"x":-1205.6744384765626,"y":-1135.030517578125,"z":8.09148788452148}},{"heading":110,"model":1963114394,"coords":{"x":-1206.372314453125,"y":-1133.113037109375,"z":8.09148788452148}}]}'),
	(69, 'coolbeans coolbeans2', '{"maxDistance":2.0,"coords":{"x":-1194.2764892578126,"y":-1137.9267578125,"z":8.0027961730957},"groups":{"coolbeans":0},"hideUi":false,"state":1,"heading":20,"lockpick":true,"model":-470980178}'),
	(70, 'coolbeans coolbeans3', '{"maxDistance":2.0,"coords":{"x":-1189.028076171875,"y":-1136.91552734375,"z":8.00532817840576},"groups":{"coolbeans":0},"hideUi":false,"state":1,"heading":110,"lockpick":true,"model":-470980178}'),
	(71, 'coolbeans coolbeans4', '{"maxDistance":2.0,"coords":{"x":-1189.33837890625,"y":-1139.3751220703126,"z":8.00532817840576},"groups":{"coolbeans":0},"hideUi":false,"state":1,"heading":20,"lockpick":true,"model":2137721}'),
	(72, 'coolbeans coolbeans1', '{"maxDistance":2.0,"coords":{"x":-1196.783447265625,"y":-1139.7423095703126,"z":8.00532817840576},"groups":{"coolbeans":0},"hideUi":false,"state":1,"heading":110,"lockpick":true,"model":-470980178}'),
	(73, 'coolbeans coolbeans6', '{"maxDistance":2.5,"coords":{"x":-1196.5858154296876,"y":-1130.564697265625,"z":8.09148788452148},"groups":{"coolbeans":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":290,"model":1145438743,"coords":{"x":-1196.223388671875,"y":-1131.560546875,"z":8.09148788452148}},{"heading":110,"model":1145438743,"coords":{"x":-1196.9482421875,"y":-1129.56884765625,"z":8.09148788452148}}]}'),
	(74, 'donttouchthisdoor donttouchthisdoor', '{"maxDistance":2.0,"coords":{"x":1779.84228515625,"y":2507.663818359375,"z":45.97626113891601},"groups":{"shumjob":0},"hideUi":false,"state":1,"heading":30,"lockpick":true,"model":-1033001619}'),
	(75, 'donttouchthisdoor donttouchthisdoor2', '{"maxDistance":2.0,"coords":{"x":1782.8797607421876,"y":2498.365478515625,"z":50.57926177978515},"groups":{"shumjob":0},"hideUi":false,"state":1,"heading":300,"lockpick":true,"model":-1033001619}'),
	(76, 'eveentarrmy eveentarrmy1', '{"maxDistance":9.0,"coords":{"x":942.552001953125,"y":2435.81591796875,"z":47.32500076293945},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":170,"lockpick":true,"model":2134625624}'),
	(77, 'eveentarrmy eveentarrmy4', '{"maxDistance":2.5,"coords":{"x":947.5579223632813,"y":2444.3994140625,"z":46.4683609008789},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":176,"model":1447557555,"coords":{"x":947.6393432617188,"y":2445.443359375,"z":46.4683609008789}},{"heading":356,"model":1447557555,"coords":{"x":947.4765014648438,"y":2443.35546875,"z":46.4683609008789}}]}'),
	(78, 'hydra hydra2', '{"maxDistance":2.0,"coords":{"x":-903.5599975585938,"y":-2071.365234375,"z":8.25881481170654},"hideUi":false,"state":1,"heading":315,"lockpick":true,"model":598316077}'),
	(79, 'hydra hydra1', '{"maxDistance":6.0,"coords":{"x":-890.4931640625,"y":-2058.29833984375,"z":8.14420986175537},"hideUi":false,"auto":true,"state":1,"heading":45,"lockpick":true,"model":1146973368}'),
	(80, 'hydra hydra3', '{"maxDistance":2.0,"coords":{"x":-934.0243530273438,"y":-2052.278076171875,"z":8.32178020477295},"hideUi":false,"state":1,"heading":225,"lockpick":true,"model":598316077}'),
	(81, 'int_burger burger1', '{"maxDistance":2.5,"coords":{"x":-1181.4556884765626,"y":-886.404052734375,"z":14.09526920318603},"groups":{"burgershot":0},"hideUi":false,"state":1,"lockpick":false,"doors":[{"heading":304,"model":1143532813,"coords":{"x":-1182.182861328125,"y":-885.330810546875,"z":14.09526920318603}},{"heading":124,"model":-1890974902,"coords":{"x":-1180.728515625,"y":-887.4773559570313,"z":14.09526920318603}}]}'),
	(82, 'int_burger burger2', '{"maxDistance":2.0,"coords":{"x":-1188.0657958984376,"y":-896.6784057617188,"z":13.90556144714355},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":304,"lockpick":false,"model":2010236044}'),
	(83, 'int_burger burger3', '{"maxDistance":2.0,"coords":{"x":-1200.7210693359376,"y":-900.771728515625,"z":13.90556144714355},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":214,"lockpick":false,"model":2010236044}'),
	(84, 'int_burger burger4', '{"maxDistance":2.0,"coords":{"x":-1197.09912109375,"y":-903.9393920898438,"z":14.03526592254638},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":214,"lockpick":false,"model":1465287574}'),
	(85, 'int_pizzza pizza', '{"maxDistance":2.0,"coords":{"x":-1350.553955078125,"y":-1064.0858154296876,"z":7.63254594802856},"groups":{"pizzathis":0},"hideUi":false,"state":1,"heading":29,"lockpick":false,"model":-1706440710}'),
	(86, 'int_sherrif sherrif10', '{"maxDistance":2.0,"coords":{"x":1852.81689453125,"y":3699.37939453125,"z":34.4227066040039},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":false,"model":-2002725619}'),
	(87, 'int_sherrif sherrif3', '{"maxDistance":2.0,"coords":{"x":1857.4239501953126,"y":3689.847900390625,"z":34.38715362548828},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":false,"model":-2063446532}'),
	(88, 'int_sherrif sherrif13', '{"maxDistance":2.0,"coords":{"x":1857.5592041015626,"y":3688.6357421875,"z":29.98644828796386},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":false,"model":-1297471157}'),
	(89, 'int_sherrif sherrif2', '{"maxDistance":2.0,"coords":{"x":1849.521728515625,"y":3682.91943359375,"z":34.38288497924805},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":false,"model":-712085785}'),
	(90, 'int_sherrif sherrif12', '{"maxDistance":2.0,"coords":{"x":1853.116455078125,"y":3686.07080078125,"z":29.98644828796386},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":false,"model":-1297471157}'),
	(91, 'int_sherrif sherrif11', '{"maxDistance":2.0,"coords":{"x":1839.9462890625,"y":3691.92626953125,"z":38.3841323852539},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":false,"model":-1225150018}'),
	(92, 'int_sherrif sherrif9', '{"maxDistance":2.0,"coords":{"x":1856.9417724609376,"y":3695.5986328125,"z":34.36867904663086},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":false,"model":-1491332605}'),
	(93, 'int_sherrif sherrif7', '{"maxDistance":2.0,"coords":{"x":1849.9619140625,"y":3693.903076171875,"z":34.36824035644531},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":false,"model":-1491332605}'),
	(94, 'int_sherrif sherrif', '{"maxDistance":2.0,"coords":{"x":1855.6861572265626,"y":3683.9287109375,"z":34.59624862670898},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":false,"model":-1765048490}'),
	(95, 'int_sherrif sherrif8', '{"maxDistance":2.0,"coords":{"x":1852.89111328125,"y":3695.593994140625,"z":34.36824035644531},"groups":{"police":0},"hideUi":false,"state":1,"heading":30,"lockpick":false,"model":-1491332605}'),
	(96, 'int_sherrif sherrif4', '{"maxDistance":2.0,"coords":{"x":1848.14599609375,"y":3689.037841796875,"z":34.38746643066406},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":false,"model":-712085785}'),
	(97, 'int_sherrif sherrif6', '{"maxDistance":2.0,"coords":{"x":1845.1708984375,"y":3690.459716796875,"z":34.38709259033203},"groups":{"police":0},"hideUi":false,"state":1,"heading":120,"lockpick":false,"model":-712085785}'),
	(98, 'int_sherrif sherrif5', '{"maxDistance":2.0,"coords":{"x":1845.6331787109376,"y":3689.658935546875,"z":34.38709259033203},"groups":{"police":0},"hideUi":false,"state":1,"heading":300,"lockpick":false,"model":-2063446532}'),
	(99, 'int_sherrif sherrif1', '{"maxDistance":2.0,"coords":{"x":1850.11474609375,"y":3685.6279296875,"z":34.38746643066406},"groups":{"police":0},"hideUi":false,"state":1,"heading":210,"lockpick":false,"model":-1297471157}'),
	(100, 'jewishstreet jewishstreet3', '{"maxDistance":2.5,"coords":{"x":-1162.2470703125,"y":-228.0936279296875,"z":38.06591033935547},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":136,"model":2092587577,"coords":{"x":-1161.3021240234376,"y":-228.9905548095703,"z":38.06591033935547}},{"heading":316,"model":632106016,"coords":{"x":-1163.1920166015626,"y":-227.19668579101563,"z":38.06591033935547}}]}'),
	(101, 'jewishstreet jewishstreet4', '{"maxDistance":2.0,"coords":{"x":-1194.0233154296876,"y":-219.17315673828126,"z":38.08872985839844},"hideUi":false,"state":1,"heading":330,"lockpick":true,"model":631614199}'),
	(102, 'jewishstreet jewishstreet2', '{"maxDistance":6.0,"coords":{"x":-1152.5399169921876,"y":-202.32838439941407,"z":39.06315994262695},"hideUi":false,"auto":true,"state":1,"heading":14,"lockpick":true,"model":-1553971106}'),
	(103, 'jewishstreet jewishstreet1', '{"maxDistance":6.0,"coords":{"x":-1140.96044921875,"y":-228.02896118164063,"z":36.91936874389648},"hideUi":false,"auto":true,"state":1,"heading":30,"lockpick":true,"model":853115216}'),
	(104, 'judge judge4', '{"maxDistance":2.5,"coords":{"x":234.34658813476563,"y":-423.826416015625,"z":48.22354888916015},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":235.5675811767578,"y":-424.2722473144531,"z":48.22354888916015}},{"heading":340,"model":110411286,"coords":{"x":233.1256103515625,"y":-423.380615234375,"z":48.22354888916015}}]}'),
	(105, 'judge judge6', '{"maxDistance":2.5,"coords":{"x":215.97366333007813,"y":-428.7532043457031,"z":48.10931015014648},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":340,"model":110411286,"coords":{"x":214.75140380859376,"y":-428.308349609375,"z":48.10931015014648}},{"heading":160,"model":110411286,"coords":{"x":217.19590759277345,"y":-429.19805908203127,"z":48.10931015014648}}]}'),
	(106, 'judge judge13', '{"maxDistance":2.0,"coords":{"x":262.2995910644531,"y":-424.37762451171877,"z":47.61734008789062},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":631614199}'),
	(107, 'judge judge8', '{"maxDistance":2.5,"coords":{"x":245.62594604492188,"y":-439.5718994140625,"z":48.10886001586914},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":246.84568786621095,"y":-440.0195617675781,"z":48.10886001586914}},{"heading":340,"model":110411286,"coords":{"x":244.4062042236328,"y":-439.12420654296877,"z":48.10886001586914}}]}'),
	(108, 'judge judge7', '{"maxDistance":2.5,"coords":{"x":238.31201171875,"y":-441.5090026855469,"z":48.10694122314453},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":250,"model":110411286,"coords":{"x":238.75961303710938,"y":-440.2873840332031,"z":48.10694122314453}},{"heading":70,"model":110411286,"coords":{"x":237.86441040039063,"y":-442.7306213378906,"z":48.10694122314453}}]}'),
	(109, 'judge judge14', '{"maxDistance":2.0,"coords":{"x":263.5185852050781,"y":-425.2913818359375,"z":47.61734008789062},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":631614199}'),
	(110, 'judge judge15', '{"maxDistance":2.0,"coords":{"x":262.3677062988281,"y":-428.4533996582031,"z":47.61734008789062},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":631614199}'),
	(111, 'judge judge12', '{"maxDistance":2.0,"coords":{"x":263.423583984375,"y":-422.2405090332031,"z":47.58842849731445},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":160,"lockpick":true,"model":110411286}'),
	(112, 'judge judge9', '{"maxDistance":2.0,"coords":{"x":253.60418701171876,"y":-414.06634521484377,"z":47.58226013183594},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":160,"lockpick":true,"model":110411286}'),
	(113, 'judge judge11', '{"maxDistance":2.5,"coords":{"x":250.40966796875,"y":-426.70782470703127,"z":46.7607192993164},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":1901264878,"coords":{"x":251.44415283203126,"y":-427.0843505859375,"z":46.7607192993164}},{"heading":340,"model":1901264878,"coords":{"x":249.37518310546876,"y":-426.331298828125,"z":46.7607192993164}}]}'),
	(114, 'judge judge10', '{"maxDistance":2.0,"coords":{"x":256.12078857421877,"y":-414.98797607421877,"z":47.58113098144531},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":110411286}'),
	(115, 'judge judge1', '{"maxDistance":2.5,"coords":{"x":237.65093994140626,"y":-413.6126708984375,"z":48.21968841552734},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":238.87290954589845,"y":-414.0606384277344,"z":48.21968841552734}},{"heading":340,"model":110411286,"coords":{"x":236.42897033691407,"y":-413.1647033691406,"z":48.21968841552734}}]}'),
	(116, 'judge judge5', '{"maxDistance":2.5,"coords":{"x":227.84719848632813,"y":-433.2611083984375,"z":48.2181510925293},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":229.06655883789063,"y":-433.7107849121094,"z":48.2181510925293}},{"heading":340,"model":110411286,"coords":{"x":226.62782287597657,"y":-432.81146240234377,"z":48.2181510925293}}]}'),
	(117, 'judge judge3', '{"maxDistance":2.5,"coords":{"x":228.79795837402345,"y":-421.81201171875,"z":48.22354888916015},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":230.01893615722657,"y":-422.2578125,"z":48.22354888916015}},{"heading":340,"model":110411286,"coords":{"x":227.5769805908203,"y":-421.3661804199219,"z":48.22354888916015}}]}'),
	(118, 'judge judge2', '{"maxDistance":2.5,"coords":{"x":232.74343872070313,"y":-411.79974365234377,"z":48.21915054321289},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":110411286,"coords":{"x":233.9647674560547,"y":-412.24560546875,"z":48.21915054321289}},{"heading":340,"model":110411286,"coords":{"x":231.52212524414063,"y":-411.3538818359375,"z":48.21915054321289}}]}'),
	(119, 'judge judge16', '{"maxDistance":2.0,"coords":{"x":261.2515869140625,"y":-431.52001953125,"z":47.61734008789062},"groups":{"judge":0,"police":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":631614199}'),
	(120, 'krustykrub krustykrub3', '{"maxDistance":2.0,"coords":{"x":-1533.449951171875,"y":-1330.0760498046876,"z":4.05643081665039},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":105,"lockpick":true,"model":1842740015}'),
	(121, 'krustykrub krustykrub2', '{"maxDistance":2.0,"coords":{"x":-1535.343994140625,"y":-1323.009033203125,"z":4.09181118011474},"groups":{"burgershot":0},"hideUi":false,"state":1,"heading":105,"lockpick":true,"model":968528661}'),
	(122, 'krustykrub krustykrub1', '{"maxDistance":2.5,"coords":{"x":-1526.8489990234376,"y":-1323.70654296875,"z":4.80183219909668},"groups":{"burgershot":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":285,"model":1804197609,"coords":{"x":-1527.196044921875,"y":-1322.427001953125,"z":4.80183219909668}},{"heading":105,"model":1804197609,"coords":{"x":-1526.501953125,"y":-1324.9859619140626,"z":4.80183219909668}}]}'),
	(123, 'mechanic mechanic4', '{"maxDistance":4.0,"coords":{"x":-1621.1563720703126,"y":-818.8241577148438,"z":11.84185600280761},"groups":{"mechanic":0},"hideUi":false,"auto":true,"state":1,"heading":139,"lockpick":true,"model":-1733711684}'),
	(124, 'mechanic mechanic2', '{"maxDistance":4.0,"coords":{"x":-1612.2193603515626,"y":-826.6301879882813,"z":11.84185600280761},"groups":{"mechanic":0},"hideUi":false,"auto":true,"state":1,"heading":139,"lockpick":true,"model":-1733711684}'),
	(125, 'mechanic mechanic3', '{"maxDistance":4.0,"coords":{"x":-1616.6942138671876,"y":-822.7373046875,"z":11.84185600280761},"groups":{"mechanic":0},"hideUi":false,"auto":true,"state":1,"heading":139,"lockpick":true,"model":-1216387481}'),
	(126, 'mechanic mechanic9', '{"maxDistance":2.0,"coords":{"x":-1605.2120361328126,"y":-832.4472045898438,"z":10.37854957580566},"groups":{"mechanic":0},"hideUi":false,"state":1,"heading":319,"lockpick":true,"model":714428445}'),
	(127, 'mechanic office', '{"maxDistance":2.0,"coords":{"x":-1584.038330078125,"y":-838.5380859375,"z":10.26577568054199},"groups":{"mechanic":0},"hideUi":false,"state":1,"heading":49,"lockpick":true,"model":-743902296}'),
	(128, 'mechanic office2', '{"maxDistance":2.5,"coords":{"x":-1593.652099609375,"y":-852.2708740234375,"z":10.27902221679687},"groups":{"mechanic":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":319,"model":-1463706150,"coords":{"x":-1592.669677734375,"y":-853.12158203125,"z":10.27902221679687}},{"heading":319,"model":-1224721833,"coords":{"x":-1594.6346435546876,"y":-851.420166015625,"z":10.27902221679687}}]}'),
	(129, 'mechanic mechanic7', '{"maxDistance":2.0,"coords":{"x":-1607.89892578125,"y":-834.97509765625,"z":10.47097587585449},"groups":{"mechanic":0},"hideUi":false,"state":1,"heading":229,"lockpick":true,"model":-598592616}'),
	(130, 'mechanic mechanic5', '{"maxDistance":4.0,"coords":{"x":-1625.6602783203126,"y":-814.9097900390625,"z":11.84185600280761},"groups":{"mechanic":0},"hideUi":false,"auto":true,"state":1,"heading":139,"lockpick":true,"model":1195640306}'),
	(131, 'mechanic mechanic1', '{"maxDistance":4.0,"coords":{"x":-1607.760009765625,"y":-830.513427734375,"z":11.84185600280761},"groups":{"mechanic":0},"hideUi":false,"auto":true,"state":1,"heading":139,"lockpick":true,"model":-1436005319}'),
	(132, 'mechanic mechanic8', '{"maxDistance":2.0,"coords":{"x":-1612.47998046875,"y":-840.25634765625,"z":10.46283912658691},"groups":{"mechanic":0},"hideUi":false,"state":1,"heading":229,"lockpick":true,"model":-1611744562}'),
	(133, 'mrpd mrpd42', '{"maxDistance":2.0,"coords":{"x":475.953857421875,"y":-1006.9378051757813,"z":26.40638542175293},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-288803980}'),
	(134, 'mrpd mrpd12', '{"maxDistance":2.0,"coords":{"x":448.98681640625,"y":-990.2007446289063,"z":35.10376358032226},"groups":{"police":0},"hideUi":false,"state":1,"heading":45,"lockpick":true,"model":-1406685646}'),
	(135, 'mrpd mrpd44', '{"maxDistance":2.0,"coords":{"x":458.08941650390627,"y":-995.524658203125,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":225,"lockpick":true,"model":149284793}'),
	(136, 'mrpd mrpd13', '{"maxDistance":2.0,"coords":{"x":464.3085632324219,"y":-984.5284423828125,"z":43.771240234375},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":-692649124}'),
	(137, 'mrpd mrpd29', '{"maxDistance":2.0,"coords":{"x":484.1764221191406,"y":-1007.734375,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-53345114}'),
	(138, 'mrpd mrpd20', '{"maxDistance":2.0,"coords":{"x":482.669921875,"y":-992.2991333007813,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1406685646}'),
	(139, 'mrpd mrpd28', '{"maxDistance":2.0,"coords":{"x":486.9131164550781,"y":-1012.1886596679688,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-53345114}'),
	(140, 'mrpd mrpd37', '{"maxDistance":6.0,"coords":{"x":488.8948059082031,"y":-1017.2119750976563,"z":27.14934921264648},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":90,"lockpick":true,"model":-1603817716}'),
	(141, 'mrpd mrpd15', '{"maxDistance":2.0,"coords":{"x":464.1590576171875,"y":-974.6655883789063,"z":26.3707046508789},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":1830360419}'),
	(142, 'mrpd mrpd14', '{"maxDistance":2.0,"coords":{"x":464.15655517578127,"y":-997.50927734375,"z":26.3707046508789},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":1830360419}'),
	(143, 'mrpd mrpd6', '{"maxDistance":2.5,"coords":{"x":457.0474548339844,"y":-972.2542724609375,"z":30.8153076171875},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":0,"model":-1547307588,"coords":{"x":455.88616943359377,"y":-972.2542724609375,"z":30.8153076171875}},{"heading":180,"model":-1547307588,"coords":{"x":458.208740234375,"y":-972.2542724609375,"z":30.8153076171875}}]}'),
	(144, 'mrpd mrpd1', '{"maxDistance":2.5,"coords":{"x":434.74444580078127,"y":-981.9168701171875,"z":30.81530380249023},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":90,"model":-1547307588,"coords":{"x":434.74444580078127,"y":-983.078125,"z":30.81530380249023}},{"heading":270,"model":-1547307588,"coords":{"x":434.74444580078127,"y":-980.7555541992188,"z":30.81530380249023}}]}'),
	(145, 'mrpd mrpd16', '{"maxDistance":2.5,"coords":{"x":471.37530517578127,"y":-986.234619140625,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":-1406685646,"coords":{"x":471.37530517578127,"y":-985.0319213867188,"z":26.40548324584961}},{"heading":270,"model":-96679321,"coords":{"x":471.37530517578127,"y":-987.4373779296875,"z":26.40548324584961}}]}'),
	(146, 'mrpd mrpd11', '{"maxDistance":2.0,"coords":{"x":448.98681640625,"y":-981.5784912109375,"z":35.10376358032226},"groups":{"police":0},"hideUi":false,"state":1,"heading":135,"lockpick":true,"model":-96679321}'),
	(147, 'mrpd mrpd33', '{"maxDistance":2.5,"coords":{"x":468.72479248046877,"y":-1000.543701171875,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":0,"model":-288803980,"coords":{"x":467.522216796875,"y":-1000.543701171875,"z":26.40548324584961}},{"heading":180,"model":-288803980,"coords":{"x":469.9273681640625,"y":-1000.543701171875,"z":26.40548324584961}}]}'),
	(148, 'mrpd mrpd26', '{"maxDistance":2.0,"coords":{"x":480.9128112792969,"y":-1012.1886596679688,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-53345114}'),
	(149, 'mrpd mrpd40', '{"maxDistance":2.0,"coords":{"x":478.2891540527344,"y":-997.9100952148438,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":149284793}'),
	(150, 'mrpd mrpd41', '{"maxDistance":2.0,"coords":{"x":479.0599670410156,"y":-1003.1729736328125,"z":26.40650367736816},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":-288803980}'),
	(151, 'mrpd mrpd47', '{"maxDistance":2.0,"coords":{"x":458.6543273925781,"y":-976.8864135742188,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1406685646}'),
	(152, 'mrpd mrpd48', '{"maxDistance":2.0,"coords":{"x":448.98455810546877,"y":-995.5263671875,"z":35.10376358032226},"groups":{"police":0},"hideUi":false,"state":1,"heading":135,"lockpick":true,"model":-96679321}'),
	(153, 'mrpd mrpd46', '{"maxDistance":2.0,"coords":{"x":445.4067077636719,"y":-984.201416015625,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":-1406685646}'),
	(154, 'mrpd mrpd45', '{"maxDistance":2.0,"coords":{"x":452.2662658691406,"y":-995.525390625,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":135,"lockpick":true,"model":-96679321}'),
	(155, 'mrpd mrpd3', '{"maxDistance":2.0,"coords":{"x":440.52008056640627,"y":-986.2334594726563,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-96679321}'),
	(156, 'mrpd mrpd9', '{"maxDistance":2.0,"coords":{"x":459.9454040527344,"y":-990.705322265625,"z":35.1039810180664},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-96679321}'),
	(157, 'mrpd mrpd7', '{"maxDistance":2.0,"coords":{"x":458.6543273925781,"y":-990.6497802734375,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-96679321}'),
	(158, 'mrpd mrpd43', '{"maxDistance":2.0,"coords":{"x":475.953857421875,"y":-1010.8193359375,"z":26.40638542175293},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-1406685646}'),
	(159, 'mrpd mrpd32', '{"maxDistance":2.5,"coords":{"x":468.5714416503906,"y":-1014.406005859375,"z":26.48381614685058},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":180,"model":-692649124,"coords":{"x":469.7742614746094,"y":-1014.406005859375,"z":26.48381614685058}},{"heading":0,"model":-692649124,"coords":{"x":467.3686218261719,"y":-1014.406005859375,"z":26.48381614685058}}]}'),
	(160, 'mrpd mrpd39', '{"maxDistance":2.0,"coords":{"x":475.83233642578127,"y":-990.4839477539063,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":135,"lockpick":true,"model":-692649124}'),
	(161, 'mrpd mrpd24', '{"maxDistance":2.0,"coords":{"x":481.00836181640627,"y":-1004.1179809570313,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-53345114}'),
	(162, 'mrpd mrpd36', '{"maxDistance":6.0,"coords":{"x":431.41192626953127,"y":-1000.7716674804688,"z":26.69660949707031},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":0,"lockpick":true,"model":2130672747}'),
	(163, 'mrpd mrpd23', '{"maxDistance":2.5,"coords":{"x":480.86614990234377,"y":-997.9099731445313,"z":26.40650367736816},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":0,"model":149284793,"coords":{"x":479.66375732421877,"y":-997.9099731445313,"z":26.40650367736816}},{"heading":180,"model":149284793,"coords":{"x":482.0685729980469,"y":-997.9099731445313,"z":26.40650367736816}}]}'),
	(164, 'mrpd mrpd30', '{"maxDistance":2.0,"coords":{"x":476.6156921386719,"y":-1008.8754272460938,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-53345114}'),
	(165, 'mrpd mrpd25', '{"maxDistance":2.0,"coords":{"x":477.91259765625,"y":-1012.1886596679688,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-53345114}'),
	(166, 'mrpd mrpd35', '{"maxDistance":6.0,"coords":{"x":452.3005065917969,"y":-1000.7716674804688,"z":26.69660949707031},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":0,"lockpick":true,"model":2130672747}'),
	(167, 'mrpd mrpd2', '{"maxDistance":2.0,"coords":{"x":440.52008056640627,"y":-977.60107421875,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-1406685646}'),
	(168, 'mrpd mrpd27', '{"maxDistance":2.0,"coords":{"x":483.9127197265625,"y":-1012.1886596679688,"z":26.48005485534668},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-53345114}'),
	(169, 'mrpd mrpd10', '{"maxDistance":2.0,"coords":{"x":459.9454040527344,"y":-981.0741577148438,"z":35.1039810180664},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-1406685646}'),
	(170, 'mrpd mrpd18', '{"maxDistance":2.0,"coords":{"x":482.66943359375,"y":-983.98681640625,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1406685646}'),
	(171, 'mrpd mrpd19', '{"maxDistance":2.0,"coords":{"x":482.6701354980469,"y":-987.5791625976563,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1406685646}'),
	(172, 'mrpd mrpd4', '{"maxDistance":2.5,"coords":{"x":441.9004821777344,"y":-998.7462158203125,"z":30.81530380249023},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":180,"model":-1547307588,"coords":{"x":443.061767578125,"y":-998.7462158203125,"z":30.81530380249023}},{"heading":0,"model":-1547307588,"coords":{"x":440.73919677734377,"y":-998.7462158203125,"z":30.81530380249023}}]}'),
	(173, 'mrpd mrpd8', '{"maxDistance":2.5,"coords":{"x":469.44061279296877,"y":-986.2344970703125,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":-288803980,"coords":{"x":469.44061279296877,"y":-985.0313110351563,"z":30.82319259643554}},{"heading":90,"model":-288803980,"coords":{"x":469.44061279296877,"y":-987.4376831054688,"z":30.82319259643554}}]}'),
	(174, 'mrpd mrpd17', '{"maxDistance":2.5,"coords":{"x":479.0624084472656,"y":-986.2349853515625,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":149284793,"coords":{"x":479.0624084472656,"y":-985.0323486328125,"z":26.40548324584961}},{"heading":90,"model":149284793,"coords":{"x":479.0624084472656,"y":-987.4375610351563,"z":26.40548324584961}}]}'),
	(175, 'mrpd mrpd5', '{"maxDistance":2.5,"coords":{"x":438.19708251953127,"y":-995.1139526367188,"z":30.82319259643554},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":90,"model":-288803980,"coords":{"x":438.19708251953127,"y":-996.316650390625,"z":30.82319259643554}},{"heading":270,"model":-288803980,"coords":{"x":438.19708251953127,"y":-993.9112548828125,"z":30.82319259643554}}]}'),
	(176, 'mrpd mrpd21', '{"maxDistance":2.0,"coords":{"x":482.6702575683594,"y":-995.728515625,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1406685646}'),
	(177, 'mrpd mrpd31', '{"maxDistance":2.5,"coords":{"x":471.371826171875,"y":-1008.99560546875,"z":26.40548324584961},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":270,"model":149284793,"coords":{"x":471.36785888671877,"y":-1007.7933959960938,"z":26.40548324584961}},{"heading":90,"model":149284793,"coords":{"x":471.3758239746094,"y":-1010.1978759765625,"z":26.40548324584961}}]}'),
	(178, 'onyx-cobra onyx-cobradouble', '{"maxDistance":2.5,"coords":{"x":-1014.03466796875,"y":-1514.092041015625,"z":6.64647006988525},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":305,"model":1240350830,"coords":{"x":-1014.77783203125,"y":-1513.025390625,"z":6.64647006988525}},{"heading":125,"model":1240350830,"coords":{"x":-1013.2914428710938,"y":-1515.1588134765626,"z":6.64647006988525}}]}'),
	(179, 'onyx-cobra onyx-cobragarage', '{"maxDistance":6.0,"coords":{"x":-1029.9925537109376,"y":-1529.5592041015626,"z":4.13085508346557},"hideUi":false,"auto":true,"state":1,"heading":305,"lockpick":true,"model":-1527129181}'),
	(180, 'prison prison1', '{"maxDistance":6.0,"coords":{"x":3839.405517578125,"y":-20.21618843078613,"z":5.6522741317749},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":226,"lockpick":true,"model":741314661}'),
	(181, 'prison prison3', '{"maxDistance":6.0,"coords":{"x":3918.558349609375,"y":-12.89594459533691,"z":9.53095054626464},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":85,"lockpick":true,"model":741314661}'),
	(182, 'prison prison7', '{"maxDistance":6.0,"coords":{"x":3840.38427734375,"y":3.8794949054718,"z":14.87379837036132},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":268,"lockpick":true,"model":741314661}'),
	(183, 'prison prison6', '{"maxDistance":2.5,"coords":{"x":4080.71435546875,"y":41.3377571105957,"z":18.93248558044433},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":190,"model":1438783233,"coords":{"x":4081.99365234375,"y":41.55300140380859,"z":18.93248558044433}},{"heading":10,"model":1438783233,"coords":{"x":4079.43505859375,"y":41.12251281738281,"z":18.93248558044433}}]}'),
	(184, 'prison prison4', '{"maxDistance":2.0,"coords":{"x":4031.637451171875,"y":1.55560600757598,"z":19.01582336425781},"groups":{"police":0},"hideUi":false,"state":1,"heading":358,"lockpick":true,"model":-692269081}'),
	(185, 'prison prison8', '{"maxDistance":6.0,"coords":{"x":3983.712158203125,"y":65.0813980102539,"z":12.56385517120361},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":71,"lockpick":true,"model":-692269081}'),
	(186, 'prison prison12', '{"maxDistance":2.0,"coords":{"x":3915.4443359375,"y":33.9890022277832,"z":23.01493453979492},"groups":{"police":0},"hideUi":false,"state":1,"heading":174,"lockpick":true,"model":298123530}'),
	(187, 'prison prison13', '{"maxDistance":2.0,"coords":{"x":3867.716552734375,"y":-24.18517684936523,"z":6.7477970123291},"groups":{"police":0},"hideUi":false,"state":1,"heading":2,"lockpick":true,"model":239636868}'),
	(188, 'prison prison10', '{"maxDistance":2.0,"coords":{"x":3917.18505859375,"y":17.13458824157715,"z":24.2168960571289},"groups":{"police":0},"hideUi":false,"state":1,"heading":265,"lockpick":true,"model":-692269081}'),
	(189, 'prison prison9', '{"maxDistance":6.0,"coords":{"x":3959.386474609375,"y":17.37627029418945,"z":22.84865379333496},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":265,"lockpick":true,"model":741314661}'),
	(190, 'prison prison5', '{"maxDistance":2.0,"coords":{"x":4014.42626953125,"y":5.3275089263916,"z":19.11520385742187},"groups":{"police":0},"hideUi":false,"state":1,"heading":20,"lockpick":true,"model":1817008884}'),
	(191, 'prison prison2', '{"maxDistance":6.0,"coords":{"x":3917.935546875,"y":-20.31609344482422,"z":9.53095054626464},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":266,"lockpick":true,"model":741314661}'),
	(192, 'prison prison11', '{"maxDistance":2.0,"coords":{"x":3911.419921875,"y":20.41021728515625,"z":23.01379013061523},"groups":{"police":0},"hideUi":false,"state":1,"heading":175,"lockpick":true,"model":298123530}'),
	(193, 'realestate realestate1', '{"maxDistance":2.0,"coords":{"x":970.2534790039063,"y":-1726.9989013671876,"z":31.58459281921386},"groups":{"realestate":0},"hideUi":false,"state":1,"heading":355,"lockpick":true,"model":-1287708707}'),
	(198, 'regularprison regularprison28', '{"maxDistance":6.0,"coords":{"x":1547.7061767578126,"y":2591.2822265625,"z":44.50946807861328},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":267,"lockpick":true,"model":741314661}'),
	(199, 'regularprison regularprison9', '{"maxDistance":6.0,"coords":{"x":1798.570556640625,"y":2530.10791015625,"z":44.69487762451172},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":185,"lockpick":true,"model":741314661}'),
	(200, 'regularprison regularprison17', '{"maxDistance":6.0,"coords":{"x":1663.384033203125,"y":2602.679931640625,"z":44.56974029541015},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":90,"lockpick":true,"model":741314661}'),
	(201, 'regularprison regularprison2', '{"maxDistance":2.0,"coords":{"x":1837.741943359375,"y":2592.161865234375,"z":46.03957366943359},"groups":{"police":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":-684929024}'),
	(202, 'regularprison regularprison26', '{"maxDistance":6.0,"coords":{"x":1575.719482421875,"y":2667.15185546875,"z":44.50946807861328},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":55,"lockpick":true,"model":741314661}'),
	(203, 'regularprison regularprison4', '{"maxDistance":2.0,"coords":{"x":1831.3399658203126,"y":2594.9921875,"z":46.03791046142578},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":-684929024}'),
	(204, 'regularprison regularprison13', '{"maxDistance":6.0,"coords":{"x":1626.2679443359376,"y":2531.43505859375,"z":44.56093978881836},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":180,"lockpick":true,"model":741314661}'),
	(205, 'regularprison regularprison8', '{"maxDistance":2.0,"coords":{"x":1791.595703125,"y":2551.462158203125,"z":45.75320434570312},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":705715602}'),
	(206, 'regularprison regularprison12', '{"maxDistance":2.0,"coords":{"x":1693.423095703125,"y":2469.049560546875,"z":46.05363082885742},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":705715602}'),
	(207, 'regularprison regularprison34', '{"maxDistance":6.0,"coords":{"x":1749.1419677734376,"y":2419.81201171875,"z":44.4251708984375},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":27,"lockpick":true,"model":741314661}'),
	(208, 'regularprison regularprison24', '{"maxDistance":6.0,"coords":{"x":1648.4110107421876,"y":2741.66796875,"z":44.44668960571289},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":27,"lockpick":true,"model":741314661}'),
	(209, 'regularprison regularprison7', '{"maxDistance":2.0,"coords":{"x":1798.0899658203126,"y":2591.68701171875,"z":46.41783905029297},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-1156020871}'),
	(210, 'regularprison regularprison23', '{"maxDistance":6.0,"coords":{"x":1762.196044921875,"y":2752.489013671875,"z":44.44668960571289},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":340,"lockpick":true,"model":741314661}'),
	(211, 'regularprison regularprison33', '{"maxDistance":6.0,"coords":{"x":1652.9840087890626,"y":2409.571044921875,"z":44.44308090209961},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":353,"lockpick":true,"model":741314661}'),
	(212, 'regularprison regularprison20', '{"maxDistance":6.0,"coords":{"x":1835.2850341796876,"y":2689.10400390625,"z":44.44670104980469},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":110,"lockpick":true,"model":741314661}'),
	(213, 'regularprison regularprison37', '{"maxDistance":6.0,"coords":{"x":1813.7490234375,"y":2488.906982421875,"z":44.46368026733398},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":252,"lockpick":true,"model":741314661}'),
	(214, 'regularprison regularprison15', '{"maxDistance":6.0,"coords":{"x":1625.68994140625,"y":2584.9990234375,"z":44.58578109741211},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":180,"lockpick":true,"model":741314661}'),
	(215, 'regularprison regularprison22', '{"maxDistance":6.0,"coords":{"x":1776.7010498046876,"y":2747.14794921875,"z":44.44668960571289},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":160,"lockpick":true,"model":741314661}'),
	(216, 'regularprison regularprison6', '{"maxDistance":2.0,"coords":{"x":1797.760986328125,"y":2596.56494140625,"z":46.38731002807617},"groups":{"police":0},"hideUi":false,"state":1,"heading":180,"lockpick":true,"model":-1156020871}'),
	(217, 'regularprison regularprison27', '{"maxDistance":6.0,"coords":{"x":1584.6529541015626,"y":2679.7490234375,"z":44.50947189331055},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":234,"lockpick":true,"model":741314661}'),
	(218, 'regularprison regularprison16', '{"maxDistance":2.0,"coords":{"x":1626.4549560546876,"y":2563.10498046875,"z":46.32481002807617},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-1156020871}'),
	(219, 'regularprison regularprison32', '{"maxDistance":6.0,"coords":{"x":1667.6689453125,"y":2407.64794921875,"z":44.42879104614258},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":173,"lockpick":true,"model":741314661}'),
	(220, 'regularprison regularprison25', '{"maxDistance":6.0,"coords":{"x":1662.010986328125,"y":2748.702880859375,"z":44.44668960571289},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":207,"lockpick":true,"model":741314661}'),
	(221, 'regularprison regularprison31', '{"maxDistance":6.0,"coords":{"x":1550.930419921875,"y":2482.743408203125,"z":44.39528656005859},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":298,"lockpick":true,"model":741314661}'),
	(222, 'regularprison regularprison36', '{"maxDistance":6.0,"coords":{"x":1808.991943359375,"y":2474.544921875,"z":44.48077011108398},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":71,"lockpick":true,"model":741314661}'),
	(223, 'regularprison regularprison35', '{"maxDistance":6.0,"coords":{"x":1762.5419921875,"y":2426.507080078125,"z":44.43787002563476},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":206,"lockpick":true,"model":741314661}'),
	(224, 'regularprison regularprison1', '{"maxDistance":6.0,"coords":{"x":1844.998046875,"y":2604.81201171875,"z":44.63977813720703},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":90,"lockpick":true,"model":741314661}'),
	(225, 'regularprison regularprison3', '{"maxDistance":2.0,"coords":{"x":1838.616943359375,"y":2593.705078125,"z":46.03635787963867},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":-684929024}'),
	(226, 'regularprison regularprison5', '{"maxDistance":2.0,"coords":{"x":1819.0728759765626,"y":2594.873291015625,"z":46.09036254882812},"groups":{"police":0},"hideUi":false,"state":1,"heading":270,"lockpick":true,"model":705715602}'),
	(227, 'regularprison regularprison19', '{"maxDistance":6.0,"coords":{"x":1799.6080322265626,"y":2616.97509765625,"z":44.6032485961914},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":180,"lockpick":true,"model":741314661}'),
	(228, 'regularprison regularprison30', '{"maxDistance":6.0,"coords":{"x":1558.22119140625,"y":2469.34912109375,"z":44.39528656005859},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":118,"lockpick":true,"model":741314661}'),
	(229, 'regularprison regularprison21', '{"maxDistance":6.0,"coords":{"x":1830.134033203125,"y":2703.4990234375,"z":44.44670104980469},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":289,"lockpick":true,"model":741314661}'),
	(230, 'regularprison regularprison14', '{"maxDistance":2.0,"coords":{"x":1597.704345703125,"y":2553.188720703125,"z":46.05766296386719},"groups":{"police":0},"hideUi":false,"state":1,"heading":90,"lockpick":true,"model":705715602}'),
	(231, 'regularprison regularprison10', '{"maxDistance":6.0,"coords":{"x":1774.64501953125,"y":2534.51708984375,"z":44.69485855102539},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":60,"lockpick":true,"model":741314661}'),
	(232, 'regularprison regularprison18', '{"maxDistance":6.0,"coords":{"x":1818.54296875,"y":2604.81201171875,"z":44.61100006103515},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":90,"lockpick":true,"model":741314661}'),
	(233, 'regularprison regularprison29', '{"maxDistance":6.0,"coords":{"x":1546.9833984375,"y":2576.129638671875,"z":44.39032745361328},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":87,"lockpick":true,"model":741314661}'),
	(234, 'rhpd rhpd11', '{"maxDistance":2.5,"coords":{"x":-406.40130615234377,"y":-396.2141418457031,"z":25.2458381652832},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":260,"model":-543497392,"coords":{"x":-406.6273193359375,"y":-397.4958801269531,"z":25.2458381652832}},{"heading":80,"model":-543497392,"coords":{"x":-406.17529296875,"y":-394.9324035644531,"z":25.2458381652832}}]}'),
	(235, 'rhpd rhpd13', '{"maxDistance":2.0,"coords":{"x":-399.2298889160156,"y":-394.7256164550781,"z":25.25592803955078},"groups":{"police":0},"hideUi":false,"state":1,"heading":350,"lockpick":true,"model":2136045912}'),
	(236, 'rhpd rhpd10', '{"maxDistance":2.5,"coords":{"x":-370.953125,"y":-383.84478759765627,"z":25.24140739440918},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":260,"model":-543497392,"coords":{"x":-371.17913818359377,"y":-385.12646484375,"z":25.24140739440918}},{"heading":80,"model":-543497392,"coords":{"x":-370.7271423339844,"y":-382.5630798339844,"z":25.24140739440918}}]}'),
	(237, 'rhpd rhpd38', '{"maxDistance":6.0,"coords":{"x":-400.1083984375,"y":-316.869873046875,"z":34.24290084838867},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"lockpick":true,"doors":[{"heading":144,"model":-1603028996,"coords":{"x":-401.1949462890625,"y":-316.0804443359375,"z":34.24290084838867}},{"heading":324,"model":-1603028996,"coords":{"x":-399.0218505859375,"y":-317.6592712402344,"z":34.24290084838867}}]}'),
	(238, 'rhpd rhpd23', '{"maxDistance":2.0,"coords":{"x":-379.2548522949219,"y":-417.3041076660156,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":1176241902}'),
	(239, 'rhpd rhpd12', '{"maxDistance":2.0,"coords":{"x":-403.239501953125,"y":-399.4295654296875,"z":25.24434852600097},"groups":{"police":0},"hideUi":false,"state":1,"heading":170,"lockpick":true,"model":2136045912}'),
	(240, 'rhpd rhpd18', '{"maxDistance":2.0,"coords":{"x":-387.5570068359375,"y":-411.4516906738281,"z":25.23625755310058},"groups":{"police":0},"hideUi":false,"state":1,"heading":350,"lockpick":true,"model":1176241902}'),
	(241, 'rhpd rhpd51', '{"maxDistance":2.0,"coords":{"x":-407.8965759277344,"y":-357.84307861328127,"z":53.40922546386719},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":-543497392}'),
	(242, 'rhpd rhpd14', '{"maxDistance":2.0,"coords":{"x":-394.81634521484377,"y":-400.914794921875,"z":25.24434852600097},"groups":{"police":0},"hideUi":false,"state":1,"heading":170,"lockpick":true,"model":2136045912}'),
	(243, 'rhpd rhpd50', '{"maxDistance":2.0,"coords":{"x":-388.4878234863281,"y":-356.1365661621094,"z":48.6878547668457},"groups":{"police":0},"hideUi":false,"state":1,"heading":195,"lockpick":true,"model":-1821777087}'),
	(244, 'rhpd rhpd28', '{"maxDistance":2.0,"coords":{"x":-393.0013122558594,"y":-429.2707214355469,"z":25.23319816589355},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":1401135549}'),
	(245, 'rhpd rhpd1', '{"maxDistance":2.5,"coords":{"x":-363.9610595703125,"y":-277.8961181640625,"z":25.24388885498047},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":170,"model":-543497392,"coords":{"x":-365.2415771484375,"y":-277.67034912109377,"z":25.24388885498047}},{"heading":350,"model":-543497392,"coords":{"x":-362.6805725097656,"y":-278.1219177246094,"z":25.24388885498047}}]}'),
	(246, 'rhpd rhpd58', '{"maxDistance":2.0,"coords":{"x":-407.9480895996094,"y":-357.83355712890627,"z":71.41740417480469},"groups":{"police":0},"hideUi":false,"state":1,"heading":261,"lockpick":true,"model":-543497392}'),
	(247, 'rhpd rhpd55', '{"maxDistance":2.0,"coords":{"x":-402.13092041015627,"y":-337.9494323730469,"z":53.41154861450195},"groups":{"police":0},"hideUi":false,"state":1,"heading":204,"lockpick":true,"model":-1821777087}'),
	(249, 'rhpd rhpd56', '{"maxDistance":2.0,"coords":{"x":-409.87237548828127,"y":-357.8590087890625,"z":56.80317687988281},"groups":{"police":0},"hideUi":false,"state":1,"heading":170,"lockpick":true,"model":-543497392}'),
	(251, 'rhpd rhpd57', '{"maxDistance":2.5,"coords":{"x":-405.469970703125,"y":-348.27874755859377,"z":71.34397888183594},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":127,"model":2136045912,"coords":{"x":-404.6711120605469,"y":-349.3388977050781,"z":71.34397888183594}},{"heading":307,"model":2136045912,"coords":{"x":-406.26885986328127,"y":-347.2186279296875,"z":71.34397888183594}}]}'),
	(252, 'rhpd rhpd54', '{"maxDistance":6.0,"coords":{"x":-405.2982482910156,"y":-345.75836181640627,"z":52.26152038574219},"groups":{"stam":0},"hideUi":false,"auto":true,"state":1,"lockpick":true,"doors":[{"heading":260,"model":-283574096,"coords":{"x":-405.4430236816406,"y":-346.579345703125,"z":52.26152038574219}},{"heading":260,"model":14722111,"coords":{"x":-405.1534729003906,"y":-344.9373474121094,"z":52.26152038574219}}]}'),
	(253, 'rhpd rhpd35', '{"maxDistance":6.0,"coords":{"x":-395.43939208984377,"y":-363.0854187011719,"z":31.39771842956543},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"lockpick":true,"doors":[{"heading":172,"model":-1603028996,"coords":{"x":-396.77410888671877,"y":-362.9122619628906,"z":31.39771842956543}},{"heading":353,"model":-1603028996,"coords":{"x":-394.10467529296877,"y":-363.2585754394531,"z":31.39771842956543}}]}'),
	(254, 'rhpd rhpd34', '{"maxDistance":2.5,"coords":{"x":-346.2459716796875,"y":-390.7898864746094,"z":20.37446975708007},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":350,"model":-2023754432,"coords":{"x":-347.5263366699219,"y":-390.5641174316406,"z":20.37446975708007}},{"heading":170,"model":-2023754432,"coords":{"x":-344.9656066894531,"y":-391.0156555175781,"z":20.37446975708007}}]}'),
	(255, 'rhpd rhpd44', '{"maxDistance":2.0,"coords":{"x":-407.8965759277344,"y":-357.84307861328127,"z":43.73978424072265},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":-543497392}'),
	(256, 'rhpd rhpd2', '{"maxDistance":6.0,"coords":{"x":-417.06536865234377,"y":-332.3592834472656,"z":34.34477996826172},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":262,"lockpick":true,"model":-143534454}'),
	(257, 'rhpd rhpd7', '{"maxDistance":2.5,"coords":{"x":-394.1435546875,"y":-360.9199523925781,"z":25.23761749267578},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":260,"model":-543497392,"coords":{"x":-394.3702087402344,"y":-362.2054748535156,"z":25.23761749267578}},{"heading":80,"model":-543497392,"coords":{"x":-393.9168701171875,"y":-359.6344299316406,"z":25.23761749267578}}]}'),
	(258, 'rhpd rhpd15', '{"maxDistance":2.0,"coords":{"x":-390.9976806640625,"y":-396.19488525390627,"z":25.25581741333007},"groups":{"police":0},"hideUi":false,"state":1,"heading":350,"lockpick":true,"model":2136045912}'),
	(259, 'rhpd rhpd26', '{"maxDistance":2.0,"coords":{"x":-390.3044128417969,"y":-433.05023193359377,"z":25.23319816589355},"groups":{"police":0},"hideUi":false,"state":1,"heading":350,"lockpick":true,"model":1401135549}'),
	(260, 'rhpd rhpd9', '{"maxDistance":2.5,"coords":{"x":-382.2376708984375,"y":-383.940673828125,"z":25.24443817138672},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":350,"model":-543497392,"coords":{"x":-380.9564208984375,"y":-384.1665954589844,"z":25.24443817138672}},{"heading":170,"model":-543497392,"coords":{"x":-383.5188903808594,"y":-383.71478271484377,"z":25.24443817138672}}]}'),
	(261, 'rhpd rhpd3', '{"maxDistance":6.0,"coords":{"x":-417.66668701171877,"y":-336.6378479003906,"z":34.34477996826172},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"heading":263,"lockpick":true,"model":-143534454}'),
	(262, 'rhpd rhpd27', '{"maxDistance":2.0,"coords":{"x":-387.4139404296875,"y":-428.748779296875,"z":25.23319816589355},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":1401135549}'),
	(263, 'rhpd rhpd6', '{"maxDistance":2.0,"coords":{"x":-389.12628173828127,"y":-357.0074157714844,"z":25.22406768798828},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":2136045912}'),
	(264, 'rhpd rhpd43', '{"maxDistance":2.0,"coords":{"x":-407.8965759277344,"y":-357.84307861328127,"z":38.79921722412109},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":-543497392}'),
	(265, 'rhpd rhpd8', '{"maxDistance":2.5,"coords":{"x":-396.32470703125,"y":-373.35369873046877,"z":25.24363899230957},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":80,"model":-543497392,"coords":{"x":-396.0981140136719,"y":-372.06854248046877,"z":25.24363899230957}},{"heading":260,"model":-543497392,"coords":{"x":-396.55133056640627,"y":-374.6388854980469,"z":25.24363899230957}}]}'),
	(266, 'rhpd rhpd5', '{"maxDistance":2.0,"coords":{"x":-391.9684753417969,"y":-373.0829772949219,"z":25.22527885437011},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":2136045912}'),
	(267, 'rhpd rhpd47', '{"maxDistance":2.0,"coords":{"x":-407.8965759277344,"y":-357.84307861328127,"z":48.67331314086914},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":-543497392}'),
	(269, 'rhpd rhpd31', '{"maxDistance":2.0,"coords":{"x":-385.8181457519531,"y":-388.8480529785156,"z":25.24317741394043},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":1438783233}'),
	(270, 'rhpd rhpd22', '{"maxDistance":2.0,"coords":{"x":-380.8143310546875,"y":-413.7320251464844,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":125,"lockpick":true,"model":1176241902}'),
	(271, 'rhpd rhpd19', '{"maxDistance":2.0,"coords":{"x":-395.1109313964844,"y":-412.3939514160156,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":215,"lockpick":true,"model":1176241902}'),
	(272, 'rhpd rhpd53', '{"maxDistance":6.0,"coords":{"x":-405.78155517578127,"y":-348.4992980957031,"z":52.26152038574219},"groups":{"stam":0},"hideUi":false,"auto":true,"state":1,"lockpick":true,"doors":[{"heading":260,"model":-283574096,"coords":{"x":-405.92657470703127,"y":-349.32177734375,"z":52.26152038574219}},{"heading":260,"model":14722111,"coords":{"x":-405.6365051269531,"y":-347.67681884765627,"z":52.26152038574219}}]}'),
	(273, 'rhpd rhpd4', '{"maxDistance":2.5,"coords":{"x":-381.4813232421875,"y":-379.70379638671877,"z":25.22296905517578},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":170,"model":2136045912,"coords":{"x":-380.1793518066406,"y":-379.9333801269531,"z":25.22296905517578}},{"heading":350,"model":2136045912,"coords":{"x":-382.7832946777344,"y":-379.4742431640625,"z":25.22296905517578}}]}'),
	(274, 'rhpd rhpd25', '{"maxDistance":2.0,"coords":{"x":-389.3796691894531,"y":-421.78863525390627,"z":25.23625755310058},"groups":{"police":0},"hideUi":false,"state":1,"heading":350,"lockpick":true,"model":1176241902}'),
	(275, 'rhpd rhpd36', '{"maxDistance":6.0,"coords":{"x":-366.71197509765627,"y":-355.3392639160156,"z":31.66342163085937},"groups":{"police":0},"hideUi":false,"auto":true,"state":1,"lockpick":true,"doors":[{"heading":253,"model":-1603028996,"coords":{"x":-367.1028747558594,"y":-356.6178283691406,"z":31.66342163085937}},{"heading":73,"model":-1603028996,"coords":{"x":-366.3210754394531,"y":-354.0606994628906,"z":31.66342163085937}}]}'),
	(276, 'rhpd rhpd24', '{"maxDistance":2.0,"coords":{"x":-380.9226989746094,"y":-421.01934814453127,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":35,"lockpick":true,"model":1176241902}'),
	(277, 'rhpd rhpd32', '{"maxDistance":2.0,"coords":{"x":-353.89208984375,"y":-363.69677734375,"z":20.37137985229492},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":-2023754432}'),
	(278, 'rhpd rhpd33', '{"maxDistance":2.0,"coords":{"x":-357.8390808105469,"y":-365.46343994140627,"z":20.34229660034179},"groups":{"police":0},"hideUi":false,"state":1,"heading":80,"lockpick":true,"model":-2023754432}'),
	(279, 'rhpd rhpd20', '{"maxDistance":2.0,"coords":{"x":-396.7779846191406,"y":-416.0242614746094,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":260,"lockpick":true,"model":1176241902}'),
	(280, 'rhpd rhpd37', '{"maxDistance":2.0,"coords":{"x":-397.4256896972656,"y":-344.276611328125,"z":32.54715728759765},"groups":{"police":0},"hideUi":false,"state":1,"heading":261,"lockpick":true,"model":-1821777087}'),
	(281, 'rhpd rhpd21', '{"maxDistance":2.0,"coords":{"x":-395.271240234375,"y":-419.58001708984377,"z":25.23634910583496},"groups":{"police":0},"hideUi":false,"state":1,"heading":305,"lockpick":true,"model":1176241902}'),
	(283, 'rhpd rhpd17', '{"maxDistance":2.5,"coords":{"x":-385.9358215332031,"y":-404.91607666015627,"z":25.22267913818359},"groups":{"police":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":350,"model":2136045912,"coords":{"x":-387.242431640625,"y":-404.6856994628906,"z":25.22267913818359}},{"heading":170,"model":2136045912,"coords":{"x":-384.62921142578127,"y":-405.146484375,"z":25.22267913818359}}]}'),
	(287, 'taco taco2', '{"maxDistance":2.0,"coords":{"x":386.6038513183594,"y":-312.2874755859375,"z":43.10570907592773},"groups":{"taco":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":631614199}'),
	(288, 'taco taco1', '{"maxDistance":2.0,"coords":{"x":381.55706787109377,"y":-319.1512145996094,"z":43.10638046264648},"groups":{"taco":0},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":631614199}'),
	(289, 'taco taco3', '{"maxDistance":2.0,"coords":{"x":376.5166015625,"y":-308.77197265625,"z":47.10588836669922},"groups":{"taco":0},"hideUi":false,"state":1,"heading":340,"lockpick":true,"model":1443843183}'),
	(290, 'taco taco5', '{"maxDistance":2.5,"coords":{"x":386.54931640625,"y":-324.4841613769531,"z":47.14947891235351},"groups":{"taco":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":982993682,"coords":{"x":387.44189453125,"y":-324.80902099609377,"z":47.14947891235351}},{"heading":340,"model":982993682,"coords":{"x":385.6567687988281,"y":-324.1593017578125,"z":47.14947891235351}}]}'),
	(291, 'taco taco4', '{"maxDistance":2.5,"coords":{"x":377.81805419921877,"y":-321.3018798828125,"z":47.13598251342773},"groups":{"taco":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":160,"model":982993682,"coords":{"x":378.70977783203127,"y":-321.62640380859377,"z":47.13598251342773}},{"heading":340,"model":982993682,"coords":{"x":376.9263610839844,"y":-320.9773254394531,"z":47.13598251342773}}]}'),
	(292, 'taco taco6', '{"maxDistance":2.0,"coords":{"x":387.72296142578127,"y":-323.7760314941406,"z":51.20909118652344},"groups":{"taco":0},"hideUi":false,"state":1,"heading":250,"lockpick":true,"model":-1821777087}'),
	(293, 'vanilla door11', '{"maxDistance":2.0,"coords":{"x":244.9752197265625,"y":-3156.333984375,"z":3.49333190917968},"groups":{"vanilla":0},"hideUi":false,"state":1,"heading":0,"lockpick":true,"model":390840000}'),
	(294, 'whitewidow whitewidow1', '{"maxDistance":2.5,"coords":{"x":201.136474609375,"y":-239.49191284179688,"z":54.23558807373047},"groups":{"whitewidow":0},"hideUi":false,"state":1,"lockpick":true,"doors":[{"heading":295,"model":-1226987899,"coords":{"x":200.58497619628907,"y":-238.31517028808595,"z":54.23558807373047}},{"heading":115,"model":-1226987899,"coords":{"x":201.68797302246095,"y":-240.66867065429688,"z":54.23558807373047}}]}'),
	(295, 'whitewidow whitewidow3', '{"maxDistance":2.0,"coords":{"x":185.3671417236328,"y":-244.16253662109376,"z":54.2199821472168},"groups":{"whitewidow":0},"hideUi":false,"state":1,"heading":160,"lockpick":true,"model":-2051651622}'),
	(296, 'whitewidow whitewidow4', '{"maxDistance":2.0,"coords":{"x":182.3453369140625,"y":-243.0863800048828,"z":54.21878814697265},"groups":{"whitewidow":0},"hideUi":false,"state":1,"heading":160,"lockpick":true,"model":-538477509}'),
	(297, 'whitewidowdoor whitewidow', '{"maxDistance":2.0,"coords":{"x":186.79415893554688,"y":-236.9383544921875,"z":54.22113800048828},"groups":{"whitewidow":0},"hideUi":false,"state":1,"heading":70,"lockpick":true,"model":-2051651622}'),
	(298, 'yellowjack door3', '{"maxDistance":2.0,"coords":{"x":1993.8564453125,"y":3050.665283203125,"z":50.57339477539062},"groups":{"yellowjack":0},"hideUi":false,"state":1,"heading":237,"lockpick":true,"model":1539342923}'),
	(299, 'yellowjack door1', '{"maxDistance":2.0,"coords":{"x":1991.1251220703126,"y":3053.094482421875,"z":47.23420715332031},"groups":{"yellowjack":0},"hideUi":false,"state":1,"heading":148,"lockpick":true,"model":808037258}'),
	(300, 'yellowjack door2', '{"maxDistance":2.0,"coords":{"x":1994.8846435546876,"y":3045.45849609375,"z":47.3079948425293},"groups":{"yellowjack":0},"hideUi":false,"state":1,"heading":238,"lockpick":true,"model":479144380}'),
	(301, 'yellowjack door4', '{"maxDistance":2.0,"coords":{"x":1981.1705322265626,"y":3049.784912109375,"z":50.67814636230469},"groups":{"yellowjack":0},"hideUi":false,"state":1,"heading":148,"lockpick":true,"model":808037258}'),
	(302, 'vangelico', '{"maxDistance":2,"lockSound":"door_bolt","coords":{"x":-631.19091796875,"y":-237.38540649414063,"z":38.2065315246582},"groups":{"police":0},"unlockSound":"door_bolt","state":1,"doors":[{"heading":306,"model":9467943,"coords":{"x":-630.426513671875,"y":-238.4375457763672,"z":38.2065315246582}},{"heading":306,"model":1425919976,"coords":{"x":-631.9553833007813,"y":-236.33326721191407,"z":38.2065315246582}}]}'),
	(308, 'Vinewood Door 1', '{"state":1,"coords":{"x":629.093017578125,"y":-1.2896089553833,"z":82.91078186035156},"groups":{"police":0},"maxDistance":4,"doors":[{"coords":{"x":629.5374755859375,"y":-0.06833457946777,"z":82.91078186035156},"model":320433149,"heading":70},{"coords":{"x":628.6484985351563,"y":-2.51088333129882,"z":82.91078186035156},"model":-1215222675,"heading":70}]}'),
	(309, 'Vinewood Door 2', '{"state":1,"coords":{"x":625.69482421875,"y":-10.64748191833496,"z":82.91078186035156},"groups":{"police":0},"maxDistance":4,"doors":[{"coords":{"x":625.2503662109375,"y":-11.86875534057617,"z":82.91078186035156},"model":-1215222675,"heading":70},{"coords":{"x":626.1393432617188,"y":-9.42620849609375,"z":82.91078186035156},"model":320433149,"heading":70}]}'),
	(310, 'Vinewood Door 3', '{"doors":[{"model":1070054098,"coords":{"x":622.2572021484375,"y":7.90478515625,"z":82.84337615966797},"heading":340},{"model":-1103852343,"coords":{"x":620.3336791992188,"y":8.60485649108886,"z":82.84337615966797},"heading":160}],"coords":{"x":621.29541015625,"y":8.25482082366943,"z":82.84337615966797},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(311, 'Vinewood Door 4', '{"doors":[{"model":-1103852343,"coords":{"x":615.2535400390625,"y":10.41492652893066,"z":82.84114837646485},"heading":340},{"model":1070054098,"coords":{"x":613.3198852539063,"y":11.11883544921875,"z":82.84114837646485},"heading":160}],"coords":{"x":614.2867431640625,"y":10.7668809890747,"z":82.84114837646485},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(312, 'Vinewood Door 5', '{"doors":[{"model":-1103852343,"coords":{"x":605.9131469726563,"y":8.43240547180175,"z":82.84495544433594},"heading":250},{"model":1070054098,"coords":{"x":606.6161499023438,"y":10.36443519592285,"z":82.84495544433594},"heading":70}],"coords":{"x":606.2646484375,"y":9.3984203338623,"z":82.84495544433594},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(313, 'Vinewood Door 6', '{"doors":[{"model":-1103852343,"coords":{"x":601.2348022460938,"y":-4.43354892730712,"z":82.84510803222656},"heading":250},{"model":1070054098,"coords":{"x":601.9374389648438,"y":-2.50299263000488,"z":82.84510803222656},"heading":70}],"coords":{"x":601.5861206054688,"y":-3.468270778656,"z":82.84510803222656},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(314, 'Vinewood Door 7', '{"doors":[{"model":-1103852343,"coords":{"x":603.8484497070313,"y":12.08264541625976,"z":82.84446716308594},"heading":160},{"model":1070054098,"coords":{"x":605.7737426757813,"y":11.38187599182128,"z":82.84446716308594},"heading":340}],"coords":{"x":604.8110961914063,"y":11.73226070404052,"z":82.84446716308594},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(315, 'Vinewood Door 8', '{"doors":[{"model":-1103852343,"coords":{"x":588.9779052734375,"y":7.33855628967285,"z":69.44187927246094},"heading":70},{"model":1070054098,"coords":{"x":588.2766723632813,"y":5.41182518005371,"z":69.44187927246094},"heading":250}],"coords":{"x":588.6273193359375,"y":6.37519073486328,"z":69.44187927246094},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(316, 'Vinewood Door 9', '{"doors":[{"model":-1103852343,"coords":{"x":581.32763671875,"y":6.98029518127441,"z":69.44046783447266},"heading":340},{"model":1070054098,"coords":{"x":579.3941040039063,"y":7.68406677246093,"z":69.44046783447266},"heading":160}],"coords":{"x":580.36083984375,"y":7.33218097686767,"z":69.44046783447266},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(317, 'Vinewood Door 10', '{"doors":[{"model":1070054098,"coords":{"x":582.6574096679688,"y":10.63428497314453,"z":69.44264221191406},"heading":340},{"model":-1103852343,"coords":{"x":580.7227172851563,"y":11.33851623535156,"z":69.44264221191406},"heading":160}],"coords":{"x":581.6900634765625,"y":10.98640060424804,"z":69.44264221191406},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(318, 'Vinewood Door 11', '{"doors":[{"model":-1103852343,"coords":{"x":573.5774536132813,"y":13.93915557861328,"z":69.44264221191406},"heading":160},{"model":1070054098,"coords":{"x":575.5120239257813,"y":13.23501586914062,"z":69.44264221191406},"heading":340}],"coords":{"x":574.5447387695313,"y":13.58708572387695,"z":69.44264221191406},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(319, 'Vinewood Door 12', '{"doors":[{"model":1070054098,"coords":{"x":572.2816772460938,"y":10.27276611328125,"z":69.44046783447266},"heading":160},{"model":-1103852343,"coords":{"x":574.2136840820313,"y":9.56955528259277,"z":69.44046783447266},"heading":340}],"coords":{"x":573.2476806640625,"y":9.92116069793701,"z":69.44046783447266},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(320, 'Vinewood Door 13', '{"doors":[{"model":-1103852343,"coords":{"x":567.0918579101563,"y":12.16168594360351,"z":69.44046783447266},"heading":340},{"model":1070054098,"coords":{"x":565.164794921875,"y":12.86306571960449,"z":69.44046783447266},"heading":160}],"coords":{"x":566.1282958984375,"y":12.512375831604,"z":69.44046783447266},"groups":{"police":0},"maxDistance":2,"state":1}'),
	(321, 'Vinewood Door 14', '{"state":1,"coords":{"x":566.5452880859375,"y":23.13134765625,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(322, 'Vinewood Door 15', '{"state":1,"coords":{"x":562.6986083984375,"y":24.53141403198242,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(323, 'Vinewood Door 16', '{"state":1,"coords":{"x":558.7843627929688,"y":25.95606613159179,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(324, 'Vinewood Door 16', '{"state":1,"coords":{"x":560.6373291015625,"y":37.14880752563476,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(325, 'Vinewood Door 17', '{"state":1,"coords":{"x":564.5487670898438,"y":35.72514724731445,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(326, 'Vinewood Door 18', '{"state":1,"coords":{"x":568.3984375,"y":34.3239860534668,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(327, 'Vinewood Door 19', '{"state":1,"coords":{"x":572.3615112304688,"y":32.88155746459961,"z":69.50550079345703},"heading":160,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(328, 'Vinewood Door 20', '{"state":1,"coords":{"x":569.7136840820313,"y":30.19361495971679,"z":69.50550079345703},"heading":340,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(329, 'Vinewood Door 21', '{"state":1,"coords":{"x":565.8033447265625,"y":31.61687469482422,"z":69.50550079345703},"heading":340,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(330, 'Vinewood Door 22', '{"state":1,"coords":{"x":561.9491577148438,"y":33.01970672607422,"z":69.50550079345703},"heading":340,"groups":{"police":0},"maxDistance":2,"doors":false,"model":-413682504}'),
	(332, 'Vinewood Door 23', '{"state":1,"coords":{"x":553.2096557617188,"y":32.66805267333984,"z":69.44123077392578},"groups":{"police":0},"maxDistance":2,"doors":[{"coords":{"x":552.2449951171875,"y":33.01915740966797,"z":69.44123077392578},"model":1070054098,"heading":160},{"coords":{"x":554.17431640625,"y":32.31694412231445,"z":69.44123077392578},"model":-1103852343,"heading":340}]}'),
	(333, 'Vinewood Door 24', '{"state":1,"coords":{"x":547.6599731445313,"y":38.87602615356445,"z":69.44123077392578},"groups":{"police":0},"maxDistance":2,"doors":[{"coords":{"x":548.6268920898438,"y":38.52411651611328,"z":69.44123077392578},"model":1070054098,"heading":340},{"coords":{"x":546.6930541992188,"y":39.22793579101562,"z":69.44123077392578},"model":-1103852343,"heading":160}]}'),
	(334, 'Vinewood Door 25', '{"state":1,"coords":{"x":536.65771484375,"y":32.18439483642578,"z":69.63748168945313},"groups":{"police":0},"maxDistance":2,"doors":[{"coords":{"x":536.0174560546875,"y":33.1983757019043,"z":69.63748168945313},"model":243539984,"heading":32},{"coords":{"x":537.2980346679688,"y":31.17041778564453,"z":69.63748168945313},"model":243539984,"heading":212}]}'),
	(335, 'Vinewood Door 26', '{"state":1,"coords":{"x":537.9301147460938,"y":-30.67746925354004,"z":72.15109252929688},"heading":31,"groups":{"police":0},"maxDistance":9,"doors":false,"model":-221339946}'),
	(336, 'Vinewood Door 27', '{"state":1,"coords":{"x":532.04541015625,"y":-34.21332168579101,"z":72.15109252929688},"heading":31,"groups":{"police":0},"maxDistance":9,"doors":false,"model":-221339946}'),
	(338, 'apart105', '{"state":1,"lockSound":"door_bolt","unlockSound":"door_bolt","maxDistance":2,"hideUi":true,"doors":false,"model":2011001180,"heading":245,"coords":{"x":-645.9904174804688,"y":-1080.390380859375,"z":22.03683471679687}}'),
	(339, 'apart104', '{"state":1,"lockSound":"door_bolt","unlockSound":"door_bolt","maxDistance":2,"hideUi":true,"doors":false,"model":2011001180,"heading":245,"coords":{"x":-650.6544799804688,"y":-1090.337646484375,"z":22.03742790222168}}'),
	(340, 'apart103', '{"state":1,"lockSound":"door_bolt","unlockSound":"door_bolt","maxDistance":2,"hideUi":true,"doors":false,"model":2011001180,"heading":65,"coords":{"x":-655.2005004882813,"y":-1090.7791748046876,"z":22.0370864868164}}'),
	(341, 'apart102', '{"state":1,"lockSound":"door_bolt","unlockSound":"door_bolt","maxDistance":2,"hideUi":true,"doors":false,"model":2011001180,"heading":245,"coords":{"x":-655.3132934570313,"y":-1100.27392578125,"z":22.03801918029785}}'),
	(342, 'apart101', '{"state":1,"lockSound":"door_bolt","unlockSound":"door_bolt","maxDistance":2,"hideUi":true,"doors":false,"model":2011001180,"heading":65,"coords":{"x":-659.8594360351563,"y":-1100.71533203125,"z":22.03767776489257}}'),
	(349, 'mechanicnew1', '{"coords":{"x":154.79232788085938,"y":-3023.90869140625,"z":8.74872970581054},"heading":90,"groups":{"mechanic":0},"maxDistance":6,"state":1,"doors":false,"model":1031780519}'),
	(350, 'mechanicnew2', '{"coords":{"x":154.82150268554688,"y":-3034.057861328125,"z":8.74872970581054},"heading":90,"groups":{"mechanic":0},"maxDistance":6,"state":1,"doors":false,"model":1031780519}'),
	(351, 'mechanicnew3', '{"coords":{"x":154.82150268554688,"y":-3044.227783203125,"z":8.74872970581054},"heading":90,"groups":{"mechanic":0},"maxDistance":6,"state":1,"doors":false,"model":1031780519}'),
	(352, 'mechanicnew4', '{"maxDistance":2,"state":1,"heading":180,"model":299449810,"coords":{"x":148.72439575195313,"y":-3050.015625,"z":7.5966453552246},"doors":false,"groups":{"mechanic":0}}'),
	(353, 'mechanicnew5', '{"maxDistance":2,"state":1,"heading":180,"model":299449810,"coords":{"x":143.71844482421876,"y":-3050.015625,"z":7.5966453552246},"doors":false,"groups":{"mechanic":0}}'),
	(354, 'mechanicnew6', '{"maxDistance":4,"state":1,"heading":180,"model":299449810,"coords":{"x":138.18927001953126,"y":-3050.015625,"z":7.5966453552246},"doors":false,"groups":{"mechanic":0}}'),
	(355, 'mechanicnew7', '{"maxDistance":2,"heading":90,"doors":false,"model":-325945933,"state":1,"coords":{"x":154.88751220703126,"y":-3018.628173828125,"z":7.1985855102539},"groups":{"mechanic":0}}'),
	(356, 'ambulance1', '{"model":102514839,"doors":false,"maxDistance":2,"state":1,"coords":{"x":310.53564453125,"y":-591.9114379882813,"z":43.39589309692383},"groups":{"ambulance":0},"heading":160}'),
	(357, 'ambulance2', '{"model":459631401,"doors":false,"maxDistance":2,"state":1,"coords":{"x":328.7150573730469,"y":-598.521728515625,"z":43.39578628540039},"groups":{"ambulance":0},"heading":160}'),
	(358, 'ambulance3', '{"doors":[{"heading":250,"model":-69142243,"coords":{"x":299.2203674316406,"y":-585.8753662109375,"z":43.37197113037109}},{"heading":250,"model":-923364535,"coords":{"x":299.9949645996094,"y":-583.78125,"z":43.36650466918945}}],"maxDistance":2,"state":0,"coords":{"x":299.607666015625,"y":-584.8283081054688,"z":43.3692398071289},"groups":{"ambulance":0}}'),
	(359, 'ambulance5', '{"coords":{"x":356.9740295410156,"y":-590.3951416015625,"z":28.94843864440918},"groups":{"ambulance":0},"maxDistance":2,"doors":[{"coords":{"x":357.36041259765627,"y":-589.3499755859375,"z":28.94843864440918},"heading":70,"model":-69142243},{"coords":{"x":356.587646484375,"y":-591.4402465820313,"z":28.94843864440918},"heading":70,"model":-923364535}],"state":0}'),
	(360, 'ambulance4', '{"model":-704543587,"doors":false,"maxDistance":7,"state":1,"coords":{"x":346.9755554199219,"y":-562.192138671875,"z":27.86303329467773},"groups":{"ambulance":0},"heading":250}'),
	(361, 'ambulance6', '{"doors":[{"heading":160,"model":1527147442,"coords":{"x":355.5564880371094,"y":-581.9440307617188,"z":28.97386932373047}},{"heading":340,"model":1527147442,"coords":{"x":357.7965393066406,"y":-582.7593383789063,"z":28.97386932373047}}],"maxDistance":2,"state":1,"coords":{"x":356.676513671875,"y":-582.3516845703125,"z":28.97386932373047},"groups":{"ambulance":0}}'),
	(363, 'Driveline', '{"state":1,"groups":{"mechanic":0},"model":-1188593556,"doors":false,"heading":117,"coords":{"x":-825.3165283203125,"y":-427.2829284667969,"z":35.64749908447265},"maxDistance":8}'),
	(364, 'driveline2', '{"state":1,"groups":{"mechanic":0},"model":-1188593556,"doors":false,"heading":117,"coords":{"x":-820.4550170898438,"y":-436.7496032714844,"z":35.64749908447265},"maxDistance":8}'),
	(367, 'STHospital', '{"doors":[{"model":2072340116,"heading":145,"coords":{"x":1149.366455078125,"y":-1529.9322509765626,"z":34.38226699829101}},{"model":610481702,"heading":325,"coords":{"x":1151.4661865234376,"y":-1531.402587890625,"z":35.38226699829101}}],"coords":{"x":1150.416259765625,"y":-1530.66748046875,"z":35.38226699829101},"state":0,"groups":{"ambulance":0},"maxDistance":4}'),
	(368, 'STHospital2', '{"maxDistance":4,"groups":{"ambulance":0},"state":0,"doors":[{"heading":145,"model":2072340116,"coords":{"x":1147.6278076171876,"y":-1532.4180908203126,"z":34.3818130493164}},{"heading":325,"model":610481702,"coords":{"x":1149.7279052734376,"y":-1533.888427734375,"z":35.3818130493164}}],"coords":{"x":1148.6778564453126,"y":-1533.1533203125,"z":35.3818130493164}}'),
	(369, 'STHospital3', '{"state":0,"maxDistance":4,"doors":[{"coords":{"x":1153.1434326171876,"y":-1545.659423828125,"z":35.0349235534668},"model":2072340116,"heading":90},{"coords":{"x":1153.1495361328126,"y":-1548.2222900390626,"z":35.3349235534668},"model":610481702,"heading":270}],"groups":{"ambulance":0},"coords":{"x":1153.146484375,"y":-1546.94091796875,"z":35.3349235534668}}'),
	(370, 'STHospital4', '{"coords":{"x":1151.1429443359376,"y":-1546.9412841796876,"z":35.33479385375976},"doors":[{"coords":{"x":1151.1429443359376,"y":-1548.2227783203126,"z":35.33479385375976},"model":610481702,"heading":270},{"coords":{"x":1151.1429443359376,"y":-1545.6597900390626,"z":35.33479385375976},"model":2072340116,"heading":90}],"groups":{"ambulance":0},"maxDistance":4,"state":0}'),
	(371, 'STHospital5', '{"doors":[{"heading":0,"model":610481702,"coords":{"x":1124.0079345703126,"y":-1524.3507080078126,"z":35.3346565246582}},{"heading":180,"model":2072340116,"coords":{"x":1121.4453125,"y":-1524.3507080078126,"z":35.3346565246582}}],"coords":{"x":1122.7265625,"y":-1524.3507080078126,"z":35.3346565246582},"state":0,"groups":{"ambulance":0},"maxDistance":4}');

-- Dumping structure for table nchubv3.paychecks
DROP TABLE IF EXISTS `paychecks`;
CREATE TABLE IF NOT EXISTS `paychecks` (
  `citizenid` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `collectamount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.paychecks: ~15 rows (approximately)
REPLACE INTO `paychecks` (`citizenid`, `collectamount`) VALUES
	('OLB58300', 10),
	('CRF43227', 1800),
	('CWA05083', 540),
	('NXP83414', 7950),
	('HUH15838', 10),
	('TXR22118', 23860),
	('BGE23482', 130),
	('EIL98113', 34610),
	('TLQ99557', 10),
	('ZQU51177', 12180),
	('VGO02376', 10),
	('AIW66669', 30),
	('EVA96934', 60),
	('JXR42009', 10),
	('KSV21723', 52690);

-- Dumping structure for table nchubv3.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.permissions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_chatrooms
DROP TABLE IF EXISTS `phone_chatrooms`;
CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(20) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT '{}',
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.phone_chatrooms: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_chatroom_messages
DROP TABLE IF EXISTS `phone_chatroom_messages`;
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.phone_chatroom_messages: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_gallery
DROP TABLE IF EXISTS `phone_gallery`;
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.phone_gallery: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_invoices
DROP TABLE IF EXISTS `phone_invoices`;
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.phone_invoices: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_messages
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.phone_messages: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_note
DROP TABLE IF EXISTS `phone_note`;
CREATE TABLE IF NOT EXISTS `phone_note` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `lastupdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.phone_note: ~0 rows (approximately)

-- Dumping structure for table nchubv3.phone_tweets
DROP TABLE IF EXISTS `phone_tweets`;
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `tweetId` varchar(25) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.phone_tweets: ~0 rows (approximately)

-- Dumping structure for table nchubv3.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `steam` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `paycheck` int(11) NOT NULL DEFAULT 0,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `skin` longtext DEFAULT NULL,
  `luckywheel_spins` varchar(1) DEFAULT '1',
  `credits` int(11) NOT NULL DEFAULT 0,
  `tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `tasks_completed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `winnings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `deleted` int(11) DEFAULT 0,
  `pp` longtext DEFAULT '',
  `policemdtinfo` longtext DEFAULT '',
  `tags` longtext DEFAULT '',
  `gallery` longtext DEFAULT '',
  `crafting_level` int(11) NOT NULL,
  `phonePos` text DEFAULT NULL,
  `spotify` text DEFAULT NULL,
  `ringtone` text DEFAULT NULL,
  `first_screen_showed` int(11) DEFAULT NULL,
  `electrocourses` int(11) DEFAULT 0,
  `inside` varchar(100) DEFAULT NULL,
  `hasvoted` tinyint(4) DEFAULT 0,
  `disabled` tinyint(1) DEFAULT 0,
  `tattoos` longtext DEFAULT NULL,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=2472 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.players: ~0 rows (approximately)

-- Dumping structure for table nchubv3.playerskins
DROP TABLE IF EXISTS `playerskins`;
CREATE TABLE IF NOT EXISTS `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.playerskins: ~0 rows (approximately)

-- Dumping structure for table nchubv3.playerstattoos
DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` longtext DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.playerstattoos: ~0 rows (approximately)

-- Dumping structure for table nchubv3.players_pd_presets
DROP TABLE IF EXISTS `players_pd_presets`;
CREATE TABLE IF NOT EXISTS `players_pd_presets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `ped` longtext DEFAULT NULL,
  `components` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.players_pd_presets: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_bank_cards
DROP TABLE IF EXISTS `player_bank_cards`;
CREATE TABLE IF NOT EXISTS `player_bank_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `pin_hash` varchar(255) NOT NULL,
  `status` enum('active','blocked','cancelled') NOT NULL DEFAULT 'active',
  `failed_attempts` int(11) NOT NULL DEFAULT 0,
  `blocked_until` datetime DEFAULT NULL,
  `last_used` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_active_card` (`citizenid`,`status`),
  KEY `idx_citizenid` (`citizenid`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_bank_cards: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_boats
DROP TABLE IF EXISTS `player_boats`;
CREATE TABLE IF NOT EXISTS `player_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.player_boats: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_boosting
DROP TABLE IF EXISTS `player_boosting`;
CREATE TABLE IF NOT EXISTS `player_boosting` (
  `citizen_id` varchar(50) NOT NULL,
  `contracts` text DEFAULT NULL,
  `reputation` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`citizen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_boosting: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_contacts
DROP TABLE IF EXISTS `player_contacts`;
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.player_contacts: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_crafting
DROP TABLE IF EXISTS `player_crafting`;
CREATE TABLE IF NOT EXISTS `player_crafting` (
  `crafter_hash` varchar(50) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `experience` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_crafting: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_credit_scores
DROP TABLE IF EXISTS `player_credit_scores`;
CREATE TABLE IF NOT EXISTS `player_credit_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `credit_score` int(11) NOT NULL DEFAULT 500,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_credit_scores: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_crops
DROP TABLE IF EXISTS `player_crops`;
CREATE TABLE IF NOT EXISTS `player_crops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext DEFAULT NULL,
  `seed` varchar(100) NOT NULL,
  `water` double NOT NULL,
  `food` double NOT NULL,
  `stage` double NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_crops: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_emotes
DROP TABLE IF EXISTS `player_emotes`;
CREATE TABLE IF NOT EXISTS `player_emotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(50) DEFAULT NULL,
  `emote_category` varchar(255) NOT NULL,
  `emote_index` int(11) NOT NULL,
  `emote_type` varchar(255) NOT NULL,
  `emote_value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nchubv3.player_emotes: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_houses
DROP TABLE IF EXISTS `player_houses`;
CREATE TABLE IF NOT EXISTS `player_houses` (
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `insideId` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `houseID` varchar(50) DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  `decorateStash` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `creditPrice` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`house`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_houses: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_jobs
DROP TABLE IF EXISTS `player_jobs`;
CREATE TABLE IF NOT EXISTS `player_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(50) DEFAULT NULL,
  `employees` text DEFAULT NULL,
  `maxEmployee` tinyint(11) DEFAULT 15,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.player_jobs: ~37 rows (approximately)
REPLACE INTO `player_jobs` (`id`, `jobname`, `employees`, `maxEmployee`) VALUES
	(106, 'coolbeans', '[]', 15),
	(107, 'pawn', '[]', 15),
	(108, 'tatto', '[]', 15),
	(109, 'realestate', '[]', 15),
	(110, 'yellowjack', '[]', 15),
	(111, 'beanmachine', '[]', 15),
	(112, 'redline', '[]', 15),
	(113, 'casino', '[]', 15),
	(114, 'garbage', '[]', 15),
	(115, 'admin', '[]', 15),
	(116, 'taxi', '[]', 15),
	(117, 'cigar', '[]', 15),
	(118, 'logistics', '[]', 15),
	(119, 'planepilot', '[]', 15),
	(120, 'catcafe', '[]', 15),
	(121, 'vanilla', '[]', 15),
	(122, 'taco', '[]', 15),
	(123, 'pizzathis', '[]', 15),
	(124, 'trucker', '[]', 15),
	(125, 'tuner', '[]', 15),
	(126, 'corrections', '[]', 15),
	(127, 'henhouse', '[]', 15),
	(128, 'judge', '[]', 15),
	(129, 'tequilala', '[]', 15),
	(130, 'drugdealer', '[]', 15),
	(131, 'burgershot', '[]', 15),
	(132, 'tow', '[]', 15),
	(133, 'telco', '[]', 15),
	(134, 'whitewidow', '[]', 15),
	(135, 'lawyer', '[]', 15),
	(136, 'bus', '[]', 15),
	(137, 'reporter', '[]', 15),
	(138, 'police', '[]', 15),
	(139, 'comic', '[]', 15),
	(140, 'mechanic', '[]', 15),
	(141, 'ambulance', '[]', 15),
	(142, 'firefighter', '[]', 15);

-- Dumping structure for table nchubv3.player_mails
DROP TABLE IF EXISTS `player_mails`;
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.player_mails: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_outfits
DROP TABLE IF EXISTS `player_outfits`;
CREATE TABLE IF NOT EXISTS `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_outfits: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_outfit_codes
DROP TABLE IF EXISTS `player_outfit_codes`;
CREATE TABLE IF NOT EXISTS `player_outfit_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_player_outfit_codes_player_outfits` (`outfitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_outfit_codes: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_quick_emotes
DROP TABLE IF EXISTS `player_quick_emotes`;
CREATE TABLE IF NOT EXISTS `player_quick_emotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(255) NOT NULL,
  `keybinds` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `emote_index` int(11) NOT NULL,
  `pQuickEmote` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_quick_emotes: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_transactions
DROP TABLE IF EXISTS `player_transactions`;
CREATE TABLE IF NOT EXISTS `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_transactions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.player_vehicles
DROP TABLE IF EXISTS `player_vehicles`;
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  `nosColour` text DEFAULT NULL,
  `traveldistance` int(50) DEFAULT 0,
  `noslevel` int(10) DEFAULT 0,
  `hasnitro` tinyint(4) DEFAULT 0,
  `vinnumber` varchar(50) DEFAULT NULL,
  `vinscratch` int(2) DEFAULT 0,
  `datefinish` date NOT NULL DEFAULT '2999-06-01',
  `logs` longtext DEFAULT '[]',
  `last_stored` int(11) DEFAULT NULL,
  `is_favorite` int(11) DEFAULT 0,
  `custom_name` varchar(50) DEFAULT NULL,
  `stored_in_gang` varchar(50) DEFAULT NULL,
  `shared_garage_id` int(11) DEFAULT NULL,
  `impoundedtime` int(11) DEFAULT NULL,
  `impoundreason` varchar(255) DEFAULT NULL,
  `impoundedby` varchar(255) DEFAULT NULL,
  `impoundtype` varchar(50) DEFAULT 'police',
  `impoundfee` int(11) DEFAULT NULL,
  `impoundtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.player_vehicles: ~2 rows (approximately)
REPLACE INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`, `nosColour`, `traveldistance`, `noslevel`, `hasnitro`, `vinnumber`, `vinscratch`, `datefinish`, `logs`, `last_stored`, `is_favorite`, `custom_name`, `stored_in_gang`, `shared_garage_id`, `impoundedtime`, `impoundreason`, `impoundedby`, `impoundtype`, `impoundfee`, `impoundtime`) VALUES
	(49, 'license:fdb281415bdee905d824ec32ad612e3bff546988', 'KSV21723', 'reaper', '1939284556', '{"modSpoilers":0,"modFrontBumper":0,"modRearBumper":0,"modExhaust":0,"modGrille":-1,"modHood":0,"modFender":-1,"modRightFender":-1,"modRoof":-1,"modEngine":3,"modBrakes":2,"modTransmission":2,"modHorns":-1,"modSuspension":3,"modArmor":-1,"modTurbo":1,"modXenon":1,"modFrontWheels":30,"modBackWheels":-1,"windowTint":1,"wheelColor":0,"color1":[255,255,255,0],"color2":0,"pearlescentColor":0,"neonEnabled":[true,true,true,true],"neonColor":[0,0,255],"modSmokeEnabled":1,"tyreSmokeColor":[0,0,255],"plateIndex":1,"plate":"REAP07","fuelLevel":72.5,"engineHealth":987.4,"bodyHealth":990.1,"dirtLevel":1.7}', 'REAP07', NULL, 'impound', 72, 987.4, 990.1, 2, 0, 28765, NULL, 0, 0, 0, 0, NULL, 10987, 0, 0, NULL, 0, '2999-06-01', '[]', NULL, 0, NULL, NULL, NULL, 1750817653, 'Vehicle abandoned or lost', 'Automated System', 'police', 500, NULL),
	(55, 'license:fdb281415bdee905d824ec32ad612e3bff546988', 'KSV21723', 'gauntlet4', '1934384720', '{"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false,"47":false,"45":false},"dashboardColor":0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modKit19":-1,"modHorns":-1,"modWindows":-1,"color1":[122,129,255,28],"neonColor":[255,255,255],"modFrame":-1,"modCustomTiresR":false,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false,"47":false,"45":false},"modOrnaments":-1,"modSpoilers":-1,"modAirFilter":-1,"modHydrolic":-1,"modSeats":-1,"modKit21":-1,"modRoof":-1,"modTransmission":-1,"modSpeakers":-1,"modSmokeEnabled":false,"modDrift":false,"wheelSize":1.0,"modBProofTires":false,"modTrimB":-1,"fuelLevel":64.3405870126668,"interiorColor":2,"modKit49":-1,"oilLevel":4.76596940834568,"modTrunk":-1,"modShifterLeavers":-1,"windowTint":-1,"tankHealth":1000.0592475178704,"modDashboard":-1,"modKit17":-1,"modDoorSpeaker":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"4":0.0,"5":0.0,"0":1000.0,"47":0.0,"45":0.0},"modStruts":-1,"engineHealth":1000.0592475178704,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modVanityPlate":-1,"modTurbo":false,"modRightFender":-1,"wheelWidth":1.0,"wheelColor":0,"modArmor":-1,"dirtLevel":0.0,"model":1934384720,"modTank":-1,"plate":"NCHUBV3F","modBrakes":-1,"modEngineBlock":-1,"modDial":-1,"liveryRoof":-1,"bodyHealth":1000.0592475178704,"modRearBumper":-1,"modPlateHolder":-1,"plateIndex":0,"modArchCover":-1,"modSideSkirt":-1,"modAerials":-1,"modEngine":-1,"neonEnabled":[false,false,false,false],"modBackWheels":-1,"tyreSmokeColor":[255,255,255],"modKit47":-1,"modHood":-1,"modAPlate":-1,"modFender":-1,"modGrille":-1,"modLivery":-1,"wheels":1,"modXenon":false,"modTrimA":-1,"modFrontBumper":-1,"color2":[122,129,255,28],"headlightColor":255,"extras":[],"modSuspension":-1,"modFrontWheels":-1,"modExhaust":-1,"modCustomTiresF":false,"modSteeringWheel":-1,"pearlescentColor":29}', 'NCHubV3F', NULL, 'pillbox', 65, 1000, 1000, 1, 0, NULL, NULL, 0, 0, 0, 0, NULL, 4458, 0, 0, NULL, 0, '2999-06-01', '[]', NULL, 1, 'My Car ♥', NULL, 6, NULL, NULL, NULL, 'police', NULL, NULL);

-- Dumping structure for table nchubv3.player_warns
DROP TABLE IF EXISTS `player_warns`;
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.player_warns: ~0 rows (approximately)

-- Dumping structure for table nchubv3.properties
DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_citizenid` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `has_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`has_access`)),
  `extra_imgs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`extra_imgs`)),
  `furnitures` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`furnitures`)),
  `for_sale` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `shell` varchar(50) NOT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `door_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`door_data`)),
  `garage_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_data`)),
  PRIMARY KEY (`property_id`),
  UNIQUE KEY `UQ_owner_apartment` (`owner_citizenid`,`apartment`),
  CONSTRAINT `FK_owner_citizenid` FOREIGN KEY (`owner_citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.properties: ~0 rows (approximately)

-- Dumping structure for table nchubv3.punchmachine
DROP TABLE IF EXISTS `punchmachine`;
CREATE TABLE IF NOT EXISTS `punchmachine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.punchmachine: ~0 rows (approximately)

-- Dumping structure for table nchubv3.save_jobs
DROP TABLE IF EXISTS `save_jobs`;
CREATE TABLE IF NOT EXISTS `save_jobs` (
  `cid` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.save_jobs: ~0 rows (approximately)

-- Dumping structure for table nchubv3.selldrugs_phone
DROP TABLE IF EXISTS `selldrugs_phone`;
CREATE TABLE IF NOT EXISTS `selldrugs_phone` (
  `player` varchar(255) NOT NULL,
  `settings` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.selldrugs_phone: ~0 rows (approximately)

-- Dumping structure for table nchubv3.selldrugs_players
DROP TABLE IF EXISTS `selldrugs_players`;
CREATE TABLE IF NOT EXISTS `selldrugs_players` (
  `player` varchar(255) DEFAULT NULL,
  `respect` int(11) NOT NULL DEFAULT 0,
  `sale_skill` int(11) NOT NULL DEFAULT 0,
  `mole` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.selldrugs_players: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_accounts
DROP TABLE IF EXISTS `shared_accounts`;
CREATE TABLE IF NOT EXISTS `shared_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `owner_citizenid` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`),
  KEY `idx_owner` (`owner_citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_accounts: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_account_members
DROP TABLE IF EXISTS `shared_account_members`;
CREATE TABLE IF NOT EXISTS `shared_account_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `permission_level` int(11) NOT NULL DEFAULT 1 COMMENT '1=member, 2=manager/owner',
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_member` (`account_id`,`citizenid`),
  KEY `idx_citizenid` (`citizenid`),
  CONSTRAINT `fk_account_members` FOREIGN KEY (`account_id`) REFERENCES `shared_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_account_members: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_account_requests
DROP TABLE IF EXISTS `shared_account_requests`;
CREATE TABLE IF NOT EXISTS `shared_account_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `status` enum('pending','approved','denied') NOT NULL DEFAULT 'pending',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_request` (`account_id`,`citizenid`),
  KEY `idx_status` (`status`),
  CONSTRAINT `fk_account_requests` FOREIGN KEY (`account_id`) REFERENCES `shared_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_account_requests: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_garages
DROP TABLE IF EXISTS `shared_garages`;
CREATE TABLE IF NOT EXISTS `shared_garages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `owner_citizenid` varchar(50) NOT NULL,
  `access_code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `owner_citizenid` (`owner_citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_garages: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_garage_members
DROP TABLE IF EXISTS `shared_garage_members`;
CREATE TABLE IF NOT EXISTS `shared_garage_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage_id` int(11) NOT NULL,
  `member_citizenid` varchar(50) NOT NULL,
  `joined_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `garage_id` (`garage_id`),
  KEY `member_citizenid` (`member_citizenid`),
  CONSTRAINT `shared_garage_members_ibfk_1` FOREIGN KEY (`garage_id`) REFERENCES `shared_garages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_garage_members: ~0 rows (approximately)

-- Dumping structure for table nchubv3.shared_vehicles
DROP TABLE IF EXISTS `shared_vehicles`;
CREATE TABLE IF NOT EXISTS `shared_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'None',
  `hash` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` varchar(50) DEFAULT 'Stored',
  `faction` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `category` (`category`),
  KEY `garage` (`garage`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.shared_vehicles: ~0 rows (approximately)

-- Dumping structure for table nchubv3.society
DROP TABLE IF EXISTS `society`;
CREATE TABLE IF NOT EXISTS `society` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_society` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.society: ~0 rows (approximately)

-- Dumping structure for table nchubv3.spending_history
DROP TABLE IF EXISTS `spending_history`;
CREATE TABLE IF NOT EXISTS `spending_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `day_of_week` int(1) DEFAULT NULL,
  `week_number` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.spending_history: ~0 rows (approximately)

-- Dumping structure for table nchubv3.sprays
DROP TABLE IF EXISTS `sprays`;
CREATE TABLE IF NOT EXISTS `sprays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.sprays: ~0 rows (approximately)

-- Dumping structure for table nchubv3.stashitems
DROP TABLE IF EXISTS `stashitems`;
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.stashitems: ~0 rows (approximately)

-- Dumping structure for table nchubv3.strain
DROP TABLE IF EXISTS `strain`;
CREATE TABLE IF NOT EXISTS `strain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `n` int(2) DEFAULT 0,
  `p` int(2) DEFAULT 0,
  `k` int(2) DEFAULT 0,
  `rep` int(2) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.strain: ~0 rows (approximately)

-- Dumping structure for table nchubv3.taxi_active_rides
DROP TABLE IF EXISTS `taxi_active_rides`;
CREATE TABLE IF NOT EXISTS `taxi_active_rides` (
  `ride_id` varchar(50) NOT NULL,
  `citizenid` varchar(50) NOT NULL,
  `pickup_x` float NOT NULL,
  `pickup_y` float NOT NULL,
  `pickup_z` float NOT NULL,
  `pickup_area` varchar(100) NOT NULL,
  `destination_x` float NOT NULL,
  `destination_y` float NOT NULL,
  `destination_z` float NOT NULL,
  `destination_area` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL DEFAULT 'created',
  `fare` int(11) NOT NULL DEFAULT 0,
  `distance` float NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`ride_id`),
  KEY `idx_citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.taxi_active_rides: ~0 rows (approximately)

-- Dumping structure for table nchubv3.taxi_drivers
DROP TABLE IF EXISTS `taxi_drivers`;
CREATE TABLE IF NOT EXISTS `taxi_drivers` (
  `citizenid` varchar(50) NOT NULL,
  `rating` float NOT NULL DEFAULT 0,
  `completed_rides` int(11) NOT NULL DEFAULT 0,
  `cancelled_rides` int(11) NOT NULL DEFAULT 0,
  `total_earnings` int(11) NOT NULL DEFAULT 0,
  `total_distance` float NOT NULL DEFAULT 0,
  `total_work_time` float NOT NULL DEFAULT 0,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.taxi_drivers: ~0 rows (approximately)

-- Dumping structure for table nchubv3.taxi_ride_history
DROP TABLE IF EXISTS `taxi_ride_history`;
CREATE TABLE IF NOT EXISTS `taxi_ride_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `ride_id` varchar(50) NOT NULL,
  `pickup` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `fare` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL,
  `distance` float NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_citizenid` (`citizenid`),
  KEY `idx_timestamp` (`timestamp`),
  KEY `idx_ride_id` (`ride_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.taxi_ride_history: ~0 rows (approximately)

-- Dumping structure for table nchubv3.territories
DROP TABLE IF EXISTS `territories`;
CREATE TABLE IF NOT EXISTS `territories` (
  `identifier` varchar(50) DEFAULT NULL,
  `grafiti` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `rotation` longtext DEFAULT NULL,
  `gang` varchar(50) DEFAULT NULL,
  `territory` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.territories: ~0 rows (approximately)

-- Dumping structure for table nchubv3.transaction_history
DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE IF NOT EXISTS `transaction_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.transaction_history: ~0 rows (approximately)

-- Dumping structure for table nchubv3.trunkitems
DROP TABLE IF EXISTS `trunkitems`;
CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table nchubv3.trunkitems: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `skin` longtext DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(36) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) DEFAULT '',
  `lastname` varchar(50) DEFAULT '',
  `dateofbirth` varchar(25) DEFAULT '',
  `sex` varchar(10) DEFAULT '',
  `height` varchar(5) DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `lastdigits` varchar(255) DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `hair_1` longtext DEFAULT NULL,
  `armour` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `zetony` int(11) DEFAULT NULL,
  `electrocourses` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table nchubv3.users: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users_current
DROP TABLE IF EXISTS `users_current`;
CREATE TABLE IF NOT EXISTS `users_current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `model` longtext NOT NULL,
  `drawables` longtext NOT NULL,
  `props` longtext NOT NULL,
  `drawtextures` longtext NOT NULL,
  `proptextures` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.users_current: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users_face
DROP TABLE IF EXISTS `users_face`;
CREATE TABLE IF NOT EXISTS `users_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `hairColor` longtext NOT NULL,
  `headBlend` longtext NOT NULL,
  `headOverlay` longtext NOT NULL,
  `headStructure` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.users_face: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users_motel
DROP TABLE IF EXISTS `users_motel`;
CREATE TABLE IF NOT EXISTS `users_motel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `building_type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.users_motel: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users_outfits
DROP TABLE IF EXISTS `users_outfits`;
CREATE TABLE IF NOT EXISTS `users_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `model` longtext NOT NULL,
  `name` longtext NOT NULL,
  `slot` longtext NOT NULL,
  `drawables` longtext NOT NULL,
  `props` longtext NOT NULL,
  `drawtextures` longtext NOT NULL,
  `proptextures` longtext NOT NULL,
  `hairColor` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.users_outfits: ~0 rows (approximately)

-- Dumping structure for table nchubv3.users_tattoos
DROP TABLE IF EXISTS `users_tattoos`;
CREATE TABLE IF NOT EXISTS `users_tattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.users_tattoos: ~0 rows (approximately)

-- Dumping structure for table nchubv3.user_convictions
DROP TABLE IF EXISTS `user_convictions`;
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.user_convictions: ~0 rows (approximately)

-- Dumping structure for table nchubv3.user_lastcharacter
DROP TABLE IF EXISTS `user_lastcharacter`;
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.user_lastcharacter: ~0 rows (approximately)

-- Dumping structure for table nchubv3.user_mdt
DROP TABLE IF EXISTS `user_mdt`;
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  `bail` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.user_mdt: ~0 rows (approximately)

-- Dumping structure for table nchubv3.vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `brand` varchar(50) DEFAULT 'Rockstar',
  `class` char(50) DEFAULT 'D',
  `hidden` int(1) DEFAULT 0,
  `unreleased` int(11) DEFAULT 0,
  `location` varchar(255) DEFAULT 'CAR_DEALERSHIP',
  PRIMARY KEY (`model`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table nchubv3.vehicles: ~0 rows (approximately)

-- Dumping structure for table nchubv3.vehicle_mdt
DROP TABLE IF EXISTS `vehicle_mdt`;
CREATE TABLE IF NOT EXISTS `vehicle_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `stolen` bit(1) DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.vehicle_mdt: ~0 rows (approximately)

-- Dumping structure for table nchubv3.weed_plants
DROP TABLE IF EXISTS `weed_plants`;
CREATE TABLE IF NOT EXISTS `weed_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `z` varchar(255) DEFAULT NULL,
  `gender` int(1) DEFAULT 0,
  `water` float DEFAULT 10,
  `strain` text DEFAULT NULL,
  `maleseeds` text DEFAULT NULL,
  `harvest` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table nchubv3.weed_plants: ~0 rows (approximately)

-- Dumping structure for trigger nchubv3.update_gang_vehicle_stored_state
DROP TRIGGER IF EXISTS `update_gang_vehicle_stored_state`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER IF NOT EXISTS `update_gang_vehicle_stored_state` 
AFTER UPDATE ON `player_vehicles` 
FOR EACH ROW 
BEGIN
  IF NEW.state != OLD.state AND NEW.stored_in_gang IS NOT NULL THEN
    UPDATE `gang_vehicles` SET `stored` = NEW.state WHERE `plate` = NEW.plate;
  END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
