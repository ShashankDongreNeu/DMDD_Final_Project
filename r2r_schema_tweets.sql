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
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `tweet_id` varchar(255) NOT NULL,
  `Twitter_handle` varchar(100) DEFAULT NULL,
  `tweet_text` varchar(1000) DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`tweet_id`),
  KEY `user_tweet_handle_fk1` (`Twitter_handle`),
  CONSTRAINT `user_tweet_handle_fk1` FOREIGN KEY (`Twitter_handle`) REFERENCES `User` (`Twitter_handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES ('1591142488882151424','Trudeaurealtor','5Beds 2Baths 2,190 SqFt\nAttention builders and investors!! \n\nOptions are endless with this home on 1 acre. Very quiet location away from traffic and neighbours. \n\n12355 Mcnutt Rd. Maple Ridge\nhttps://t.co/nLa9j4No49\n\n#mapleridge #homes #houseforsale #bcrealestate #ForSale https://t.co/ryaaJdi8ar','2022-11-11'),('1591142488992151424','ojasvipatel','I would like to buy a 4 bedroom house with a pool.','2022-11-11'),('1591142489982151424','riyavirani','I would like to buy a 4 bedroom house with an ocean view','2022-11-08'),('1591142499882151424','ShashankDongr16','I would like to buy a 5 bedroom house.','2022-11-10'),('1591199536877535232','bobcowanrealtor','??THE BEST DEAL OF THE WEEK ??\n?BUY THIS HOME AND I\'LL BUY YOURS!\n\n? 4 Bedroom\n? 5 Baths\n? 4,468 SqFt\n? Home with Pool\n\n?To view the listing, visit our website:\nhttps://t.co/DR6QRJBZ1z\n\n? 3D Virtual Tour:\nhttps://t.co/wNRMjJPplI\n\n#houseforsale #Oceanview #nearbeach https://t.co/1UDHwKtdku','2022-11-11');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
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
