-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Valdivia
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DESPLAZARSE`
--

DROP TABLE IF EXISTS `DESPLAZARSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DESPLAZARSE` (
  `rut` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `latitud` decimal(6,3) DEFAULT NULL,
  `longitud` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`rut`,`fecha`),
  CONSTRAINT `DESPLAZARSE_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `PERSONA` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DESPLAZARSE`
--

LOCK TABLES `DESPLAZARSE` WRITE;
/*!40000 ALTER TABLE `DESPLAZARSE` DISABLE KEYS */;
INSERT INTO `DESPLAZARSE` VALUES (1,'2017-03-09 12:00:00',-39.120,-70.230),(2,'2017-03-09 13:50:03',-39.120,-70.230),(3,'2017-03-09 12:40:20',-9.120,-70.230),(4,'2017-03-09 17:33:00',-39.200,-35.230),(4,'2017-03-09 18:03:10',-42.120,-40.230),(5,'2017-03-09 12:00:12',-39.120,-70.230);
/*!40000 ALTER TABLE `DESPLAZARSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LUGAR_DE_INTERES`
--

DROP TABLE IF EXISTS `LUGAR_DE_INTERES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LUGAR_DE_INTERES` (
  `lugar` int(11) NOT NULL AUTO_INCREMENT,
  `descripción` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitud` decimal(7,3) NOT NULL,
  `longitud` decimal(7,3) NOT NULL,
  PRIMARY KEY (`lugar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LUGAR_DE_INTERES`
--

LOCK TABLES `LUGAR_DE_INTERES` WRITE;
/*!40000 ALTER TABLE `LUGAR_DE_INTERES` DISABLE KEYS */;
INSERT INTO `LUGAR_DE_INTERES` VALUES (1,'Mercado Fluvial','Turismo',-39.810,-73.240),(2,'Torreon Yungai','Turismo/Historico',-1.230,20.240),(3,'Pendulo','Turismo',-39.810,-73.240),(4,'Puente Cau-Cau','Turismo/Random',-23.000,-22.240),(5,'Playa Collico','Turismo',20.320,-10.220),(6,'Niebla','Turismo',-99.810,-73.240);
/*!40000 ALTER TABLE `LUGAR_DE_INTERES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSONA`
--

DROP TABLE IF EXISTS `PERSONA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PERSONA` (
  `rut` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `nivel_de_estudio` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSONA`
--

LOCK TABLES `PERSONA` WRITE;
/*!40000 ALTER TABLE `PERSONA` DISABLE KEYS */;
INSERT INTO `PERSONA` VALUES (1,'Jorge Delgado',21,NULL),(2,'Alferd Morales',23,NULL),(3,'Sanhueza',22,NULL),(4,'Seba Prro',21,NULL),(5,'Spun',21,NULL),(6,'Mono no vino',21,NULL);
/*!40000 ALTER TABLE `PERSONA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-15 22:44:28
