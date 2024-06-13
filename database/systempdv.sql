-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: systempdv
-- ------------------------------------------------------
-- Server version	8.0.36

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

CREATE DATABASE systempdv;

--
-- Table structure for table `ordersale`
--

DROP TABLE IF EXISTS `ordersale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersale` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(2000) NOT NULL,
  `Total` double NOT NULL,
  `Moment` date NOT NULL,
  `Payment` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Price` double NOT NULL,
  `WholesalePrice` double NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'PIC. AO LEITE',2.8,2.5,100),(2,'PIC. RETRO',1.5,1.5,100),(3,'PIC. FRUTA',2.5,2.25,100),(4,'PIC. LOVE',3,3,100),(5,'PIC. FONDUE',3.8,3.5,100),(6,'PIC. NATTURALE',3.9,3.6,100),(7,'PIC. ASTROS',4.5,4.25,100),(8,'PIC. AÇAI',4.75,4.4,100),(9,'PIC. T.GELADA',4.8,4.5,100),(10,'PIC. L.SICILIANO',4.9,4.4,100),(11,'PIC. ZERO',4.9,4.4,100),(12,'PIC. SNACK',5.9,5.4,100),(13,'PIC. ALPHA',5.9,5.4,100),(14,'PIC. PALETA',6.9,6.6,100),(15,'PIC. BELGA / BRULEE',7.5,6.9,100),(16,'PIC. BROWNIE / CENOURA',8.5,7.9,100),(17,'PIC. UNICORNIO',3.9,3.4,100),(18,'POTE COPÃO',5.75,5.75,100),(19,'POTE SUNDAE',5.9,5.6,100),(20,'POTE DUO 1,5L',15.9,15.9,100),(21,'POTE DUO 2L',19.9,19.9,100),(22,'POTE SPECIALLE',26.9,26.9,100),(23,'POTE ZERO NAPO',26.9,26.9,100),(24,'POTE AÇAI 2L',37.9,35.9,100),(25,'POTE AÇAI ZERO',37.9,36.9,100),(26,'CONE',7,6.5,100),(27,'MINI BOMBOM',9.5,8.9,100),(28,'POTE AÇAI 200G',8.9,8.6,100),(29,'FRITOS 400G',18.9,17.6,100),(30,'KIBE 400G',22.9,21.9,100),(31,'B.BACALHAU 400G',35.9,34.9,100),(32,'ASSADOS 500G',38.9,37.9,100),(33,'TORTINHA 4UN',28.9,27.9,100),(34,'PÃO DE QUEIJO 1KG',25.9,23.5,100),(35,'PÃO DE QUEIJO 400G',12,10.9,100),(36,'CHIPA 1KG',29,27.5,100),(37,'TUN-IN',3,3,100),(38,'CESTINHA',6,6,100),(39,'CASCÃO C/10',8,8,100),(40,'COBERTURA',9,9,100),(41,'CASQUINHA C/20',10,10,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sys`
--

DROP TABLE IF EXISTS `user_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_sys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password_sys` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sys`
--

LOCK TABLES `user_sys` WRITE;
/*!40000 ALTER TABLE `user_sys` DISABLE KEYS */;
INSERT INTO `user_sys` VALUES (1,'usuario1@email.com','1234567'),(2,'usuario2@email.com','1234567');
/*!40000 ALTER TABLE `user_sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'systempdv'
--

--
-- Dumping routines for database 'systempdv'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08 20:28:28
