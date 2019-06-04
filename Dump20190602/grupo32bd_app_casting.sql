-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grupo32bd
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_casting`
--

DROP TABLE IF EXISTS `app_casting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_casting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor1` varchar(50) NOT NULL,
  `actor2` varchar(50) NOT NULL,
  `actor4` varchar(50) NOT NULL,
  `actor5` varchar(50) NOT NULL,
  `film_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_casting_film_id_ececb6c2_fk_app_movie_id` (`film_id`),
  CONSTRAINT `app_casting_film_id_ececb6c2_fk_app_movie_id` FOREIGN KEY (`film_id`) REFERENCES `app_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_casting`
--

LOCK TABLES `app_casting` WRITE;
/*!40000 ALTER TABLE `app_casting` DISABLE KEYS */;
INSERT INTO `app_casting` VALUES (1,'Robert Downey Jr.','Chris Evans','Chris Hemsworth','Mark Ruffalo',1),(2,'David Harbour','Milla Jovovich','Ian McShane','Daniel Dae Kim',2),(3,'Rami Malek','Gwilym Lee','Ben Hardy','Joseph Mazzello',3),(4,'Keanu Reeves','Michael Nyqvist','Alfie Allen','Willem Dafoe',4),(5,'Mark Ruffalo','Michael Keaton','Rachel McAdams','Liev Schreiber',5),(6,'Leonardo DiCaprio','Tom Hardy','Will Poulter','Domhnall Gleeson',6),(7,'Clint Eastwood','Bradley Cooper','Laurence Fishburne','Michael Peña',7),(8,'Matthew McConaughey','Jessica Chastain','Anne Hathaway','Michael Caine',8),(9,'Ryan Gosling','Emma Stone','John Legend','Rosemarie DeWitt',9),(11,'Robert Downey Jr.','Chris Hemsworth','Mark Ruffalo','',11),(12,'Tom Hanks','Tim Allen','Joan Cusack','',12),(13,'Clint Eastwood','Christopher Carley','','Ahney Her',13);
/*!40000 ALTER TABLE `app_casting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-02 22:02:46
