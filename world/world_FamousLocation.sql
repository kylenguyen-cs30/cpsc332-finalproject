-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: world
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `FamousLocation`
--

DROP TABLE IF EXISTS `FamousLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FamousLocation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  `annual_tourists` int DEFAULT NULL,
  `free_admission` tinyint(1) DEFAULT NULL,
  `kid_friendly` tinyint(1) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_code` varchar(3) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `city` (`city`),
  KEY `country_code` (`country_code`),
  CONSTRAINT `famouslocation_ibfk_1` FOREIGN KEY (`city`) REFERENCES `City` (`Name`),
  CONSTRAINT `famouslocation_ibfk_2` FOREIGN KEY (`country_code`) REFERENCES `Country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FamousLocation`
--

LOCK TABLES `FamousLocation` WRITE;
/*!40000 ALTER TABLE `FamousLocation` DISABLE KEYS */;
INSERT INTO `FamousLocation` VALUES (1,'Taj Mahal',7500000,0,1,'Agra','IND'),(2,'Great Wall of China',10000000,0,1,'Beijing','CHN'),(3,'Statue of Liberty',4000000,1,1,'New York','USA'),(4,'Uluwatu Temple',3000000,0,1,'Bali','IDN'),(5,'Badshahi Mosque',500000,1,1,'Lahore','PAK'),(6,'Zuma Rock',200000,1,1,'Abuja','NGA'),(7,'Christ the Redeemer',2300000,0,1,'Rio de Janeiro','BRA'),(8,'Cox\'s Bazar',2500000,1,1,'Chittagong','BGD'),(9,'Red Square',12000000,1,1,'Moscow','RUS'),(10,'Chichen Itza',2500000,0,1,'Yucatan','MEX'),(11,'Kyoto Imperial Palace',1000000,1,1,'Kyoto','JPN'),(12,'Lake Tana',500000,1,1,'Bahir Dar','ETH'),(13,'Mayon Volcano',300000,1,1,'Albay','PHL'),(14,'Pyramids of Giza',1500000,0,1,'Giza','EGY'),(15,'Virunga National Park',300000,0,1,'Albertine Rift Valley','COD'),(16,'Ha Long Bay',2500000,1,1,'Ha Long','VNM'),(17,'Naqsh-e Jahan Square',1000000,1,1,'Isfahan','IRN'),(18,'Hagia Sophia',3000000,0,1,'Istanbul','TUR'),(19,'Neuschwanstein Castle',1500000,0,1,'Bavaria','DEU'),(20,'Grand Palace',8000000,0,1,'Bangkok','THA'),(21,'Eiffel Tower',7000000,0,1,'Paris','FRA'),(22,'Buckingham Palace',4000000,0,1,'London','GBR'),(23,'Zanzibar Stone Town',1000000,1,1,'Zanzibar','TZA'),(24,'Table Mountain',1500000,1,1,'Cape Town','ZAF'),(25,'Colosseum',7000000,0,1,'Rome','ITA'),(26,'Shwedagon Pagoda',2500000,1,1,'Rangoon (Yangon)','MMR'),(27,'Lamu Island',500000,1,1,'Lamu','KEN'),(28,'Cartagena Old Town',2000000,1,1,'Cartagena','COL'),(29,'Gyeongbokgung Palace',6000000,0,1,'Seoul','KOR'),(30,'Sagrada Familia',3000000,1,1,'Barcelona','ESP');
/*!40000 ALTER TABLE `FamousLocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-28 13:16:19
