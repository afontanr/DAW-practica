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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-05-19 15:38:36.641536'),(2,'auth','0001_initial','2019-05-19 15:38:39.719045'),(3,'admin','0001_initial','2019-05-19 15:38:40.456005'),(4,'admin','0002_logentry_remove_auto_add','2019-05-19 15:38:40.494018'),(5,'admin','0003_logentry_add_action_flag_choices','2019-05-19 15:38:40.527194'),(6,'contenttypes','0002_remove_content_type_name','2019-05-19 15:38:41.017122'),(7,'auth','0002_alter_permission_name_max_length','2019-05-19 15:38:41.271413'),(8,'auth','0003_alter_user_email_max_length','2019-05-19 15:38:41.492412'),(9,'auth','0004_alter_user_username_opts','2019-05-19 15:38:41.503023'),(10,'auth','0005_alter_user_last_login_null','2019-05-19 15:38:41.781151'),(11,'auth','0006_require_contenttypes_0002','2019-05-19 15:38:41.801691'),(12,'auth','0007_alter_validators_add_error_messages','2019-05-19 15:38:41.807182'),(13,'auth','0008_alter_user_username_max_length','2019-05-19 15:38:42.039949'),(14,'auth','0009_alter_user_last_name_max_length','2019-05-19 15:38:42.305678'),(15,'sessions','0001_initial','2019-05-19 15:38:42.669942'),(16,'app','0001_initial','2019-06-01 08:08:11.563262'),(17,'app','0002_auto_20190601_1051','2019-06-01 08:51:41.677597'),(18,'app','0002_auto_20190601_1148','2019-06-01 09:48:24.681448');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-02 22:02:47
