-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: r2r_schema
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `house_listing`
--

DROP TABLE IF EXISTS `house_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_listing` (
  `listing_id` int NOT NULL,
  `tweet_id` varchar(50) NOT NULL,
  `listing_url` varchar(1000) DEFAULT NULL,
  `type_of_house` varchar(45) DEFAULT NULL,
  `no_of_bedroom` int DEFAULT NULL,
  `no_of_bathroom` int DEFAULT NULL,
  `area_sqft` int DEFAULT NULL,
  `has_pool` varchar(5) DEFAULT 'NO',
  `virtual_3d_tour_url` varchar(1000) DEFAULT NULL,
  `has_beach_access` varchar(3) NOT NULL DEFAULT 'NO',
  `has_ocean_view` varchar(3) NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`listing_id`),
  KEY `tweets_tweet_id` (`tweet_id`),
  CONSTRAINT `tweets_tweet_id` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_listing`
--

LOCK TABLES `house_listing` WRITE;
/*!40000 ALTER TABLE `house_listing` DISABLE KEYS */;
INSERT INTO `house_listing` VALUES (1,'1591199536877535232','https://t.co/DR6QRJBZ1z','House',4,5,4468,'NO','https://t.co/wNRMjJPplI','YES','YES'),(2,'1591142488882151424','https://t.co/nLa9j4No49','House',5,2,2190,'NO',NULL,'NO','NO');
/*!40000 ALTER TABLE `house_listing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 23:48:50
