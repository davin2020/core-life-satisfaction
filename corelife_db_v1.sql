-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.21 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for corelifedb
DROP DATABASE IF EXISTS `corelifedb`;
CREATE DATABASE IF NOT EXISTS `corelifedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `corelifedb`;

-- Dumping structure for table corelifedb.ref_core_questions
DROP TABLE IF EXISTS `ref_core_questions`;
CREATE TABLE IF NOT EXISTS `ref_core_questions` (
  `q_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `gp_order` int NOT NULL,
  `do_points_ascend` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`q_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table corelifedb.ref_core_questions: 0 rows
/*!40000 ALTER TABLE `ref_core_questions` DISABLE KEYS */;
INSERT INTO `ref_core_questions` (`q_id`, `question`, `gp_order`, `do_points_ascend`) VALUES
	(1, 'I have felt tense, anxious or nervous', 1, 1),
	(2, '	I have felt I have someone to turn to for support when needed', 2, 0),
	(3, 'I have felt ok about myself', 3, 0),
	(4, 'I have felt ok about myself', 4, 0),
	(5, 'I have been troubled by aches, pains or other physical problems	', 5, 1),
	(6, 'I have been happy with the things I have done', 6, 0),
	(7, '	I have had difficulty getting to sleep or staying asleep', 7, 1);
/*!40000 ALTER TABLE `ref_core_questions` ENABLE KEYS */;

-- Dumping structure for table corelifedb.ref_core_scale
DROP TABLE IF EXISTS `ref_core_scale`;
CREATE TABLE IF NOT EXISTS `ref_core_scale` (
  `scale_id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `points` int DEFAULT NULL,
  PRIMARY KEY (`scale_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table corelifedb.ref_core_scale: 0 rows
/*!40000 ALTER TABLE `ref_core_scale` DISABLE KEYS */;
INSERT INTO `ref_core_scale` (`scale_id`, `label`, `points`) VALUES
	(1, 'Not at all', NULL),
	(2, 'Only occasionally', NULL),
	(3, 'Sometimes', NULL),
	(4, 'Often', NULL),
	(5, 'Most or All the time', NULL);
/*!40000 ALTER TABLE `ref_core_scale` ENABLE KEYS */;

-- Dumping structure for table corelifedb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table corelifedb.users: 0 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `name`) VALUES
	(1, 'Alvis'),
	(2, 'Pree'),
	(3, 'Turin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table corelifedb.user_core_score
DROP TABLE IF EXISTS `user_core_score`;
CREATE TABLE IF NOT EXISTS `user_core_score` (
  `ucs_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `score_date` date DEFAULT NULL,
  `overall_score` int DEFAULT NULL,
  PRIMARY KEY (`ucs_id`) USING BTREE,
  KEY `FK1_userid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table corelifedb.user_core_score: 0 rows
/*!40000 ALTER TABLE `user_core_score` DISABLE KEYS */;
INSERT INTO `user_core_score` (`ucs_id`, `user_id`, `score_date`, `overall_score`) VALUES
	(1, 1, '2021-02-15', NULL),
	(2, 3, '2021-01-21', NULL),
	(3, 3, '2021-01-14', NULL);
/*!40000 ALTER TABLE `user_core_score` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
