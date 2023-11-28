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
-- Table structure for table `PopulationStatistic`
--

DROP TABLE IF EXISTS `PopulationStatistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PopulationStatistic` (
  `country_Code` varchar(3) NOT NULL,
  `population_Growth_Rate` float DEFAULT NULL,
  `fertility_Rate` float DEFAULT NULL,
  `immigration_Rate` float DEFAULT NULL,
  `refugee_Population` int DEFAULT NULL,
  KEY `country_Code` (`country_Code`),
  CONSTRAINT `populationstatistic_ibfk_1` FOREIGN KEY (`country_Code`) REFERENCES `Country` (`Code`),
  CONSTRAINT `populationstatistic_chk_1` CHECK ((`population_Growth_Rate` <= 100)),
  CONSTRAINT `populationstatistic_chk_2` CHECK ((`fertility_Rate` <= 100)),
  CONSTRAINT `populationstatistic_chk_3` CHECK ((`immigration_Rate` <= 100)),
  CONSTRAINT `populationstatistic_chk_4` CHECK ((`refugee_Population` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PopulationStatistic`
--

LOCK TABLES `PopulationStatistic` WRITE;
/*!40000 ALTER TABLE `PopulationStatistic` DISABLE KEYS */;
INSERT INTO `PopulationStatistic` VALUES ('IND',1,2.2,0.3,200000),('CHN',0.5,1.6,0.2,50000),('USA',0.7,1.9,0.8,100000),('IDN',1.1,2.3,0.5,75000),('PAK',2,3,0.1,20000),('NGA',2.5,4,0.2,30000),('BRA',0.6,1.8,0.4,25000),('BGD',1.3,2.1,0.2,30000),('RUS',0.1,1.5,0.3,5000),('MEX',1.2,2.2,0.4,15000),('JPN',-0.1,1.4,0.1,10000),('ETH',2.5,4.5,0.2,20000),('PHL',1.6,2.8,0.3,30000),('EGY',1.9,3.2,0.1,10000),('COD',3,5,0.1,15000),('VNM',1,2,0.3,20000),('IRN',0.8,2.1,0.2,30000),('TUR',1.1,2.3,0.3,25000),('DEU',0.2,1.6,0.5,10000),('THA',0.3,1.7,0.4,15000),('FRA',0.4,1.9,0.6,20000),('GBR',0.5,1.8,0.7,25000),('TZA',2.7,4.2,0.1,30000),('ZAF',1.8,3.5,0.2,20000),('ITA',0.1,1.5,0.4,10000),('MMR',1.5,2.7,0.2,15000),('KEN',2,3.8,0.1,20000),('COL',1.2,2.5,0.3,25000),('KOR',0.3,1.8,0.4,30000),('ESP',0.5,1.6,0.2,20000);
/*!40000 ALTER TABLE `PopulationStatistic` ENABLE KEYS */;
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
