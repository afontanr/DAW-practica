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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-05-20 09:38:37.844254','2','aaa',1,'[{\"added\": {}}]',4,1),(2,'2019-06-01 08:50:44.062043','1','Movie object (1)',1,'[{\"added\": {}}]',7,1),(3,'2019-06-01 08:52:37.600822','1','Top object (1)',1,'[{\"added\": {}}]',9,1),(4,'2019-06-01 08:53:43.821177','1','Cast object (1)',1,'[{\"added\": {}}]',8,1),(5,'2019-06-01 09:49:32.676186','1','Movie object (1)',1,'[{\"added\": {}}]',7,1),(6,'2019-06-01 09:49:55.074333','1','Casting object (1)',1,'[{\"added\": {}}]',11,1),(7,'2019-06-01 09:50:07.107166','1','Best object (1)',1,'[{\"added\": {}}]',12,1),(8,'2019-06-01 11:43:25.331068','2','Movie object (2)',1,'[{\"added\": {}}]',7,1),(9,'2019-06-01 11:45:00.498516','2','Casting object (2)',1,'[{\"added\": {}}]',11,1),(10,'2019-06-01 11:50:07.946398','2','Best object (2)',1,'[{\"added\": {}}]',12,1),(11,'2019-06-01 11:54:53.722143','3','Movie object (3)',1,'[{\"added\": {}}]',7,1),(12,'2019-06-01 11:56:04.020066','3','Casting object (3)',1,'[{\"added\": {}}]',11,1),(13,'2019-06-01 11:56:27.239597','3','Best object (3)',1,'[{\"added\": {}}]',12,1),(14,'2019-06-01 12:02:25.832259','4','Movie object (4)',1,'[{\"added\": {}}]',7,1),(15,'2019-06-01 12:03:57.366336','4','Casting object (4)',1,'[{\"added\": {}}]',11,1),(16,'2019-06-01 12:04:12.224906','4','Best object (4)',1,'[{\"added\": {}}]',12,1),(17,'2019-06-01 12:08:11.896377','5','Movie object (5)',1,'[{\"added\": {}}]',7,1),(18,'2019-06-01 12:09:23.157999','5','Casting object (5)',1,'[{\"added\": {}}]',11,1),(19,'2019-06-01 12:09:38.178579','5','Best object (5)',1,'[{\"added\": {}}]',12,1),(20,'2019-06-01 12:43:52.898504','6','Movie object (6)',1,'[{\"added\": {}}]',7,1),(21,'2019-06-01 12:46:13.894222','6','Casting object (6)',1,'[{\"added\": {}}]',11,1),(22,'2019-06-01 12:46:33.502226','6','Best object (6)',1,'[{\"added\": {}}]',12,1),(23,'2019-06-01 13:03:38.751038','7','Movie object (7)',1,'[{\"added\": {}}]',7,1),(24,'2019-06-01 13:04:42.616084','7','Casting object (7)',1,'[{\"added\": {}}]',11,1),(25,'2019-06-01 13:04:55.308762','7','Best object (7)',1,'[{\"added\": {}}]',12,1),(26,'2019-06-01 13:17:54.710362','8','Movie object (8)',1,'[{\"added\": {}}]',7,1),(27,'2019-06-01 13:18:56.586046','8','Casting object (8)',1,'[{\"added\": {}}]',11,1),(28,'2019-06-01 13:19:10.217663','8','Best object (8)',1,'[{\"added\": {}}]',12,1),(29,'2019-06-01 13:28:37.977457','9','Movie object (9)',1,'[{\"added\": {}}]',7,1),(30,'2019-06-01 13:29:32.349445','9','Casting object (9)',1,'[{\"added\": {}}]',11,1),(31,'2019-06-01 13:29:42.582135','9','Best object (9)',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-02 22:02:45
