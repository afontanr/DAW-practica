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
-- Table structure for table `app_movie`
--

DROP TABLE IF EXISTS `app_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url_movie` varchar(200) NOT NULL,
  `director` varchar(50) NOT NULL,
  `url_poster` varchar(200) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_movie`
--

LOCK TABLES `app_movie` WRITE;
/*!40000 ALTER TABLE `app_movie` DISABLE KEYS */;
INSERT INTO `app_movie` VALUES (1,'Avengers: Endgame','https://www.youtube.com/embed/TcMBFSGVi1c','Joe Russo & Anthony Russo','http://image.tmdb.org/t/p/w342/or06FN3Dka5tukK1e9sl16pB3iy.jpg','After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos\' actions and restore order to the universe once and for all, no matter what consequences may be in store.',9),(2,'Hellboy','https://www.youtube.com/embed/ZsBO4b3tyZg','Neil Marshall','http://image.tmdb.org/t/p/w342/bk8LyaMqUtaQ9hUShuvFznQYQKR.jpg','Hellboy comes to England, where he must defeat Nimue, Merlin\'s consort and the Blood Queen. But their battle will bring about the end of the world, a fate he desperately tries to turn away.',5),(3,'Bohemian Rhapsody','https://www.youtube.com/embed/mP0VHJYFOAU','Bryan Singer','http://image.tmdb.org/t/p/w342/lHu1wtNaczFPGFDTrjCSzeLPTKN.jpg','Singer Freddie Mercury, guitarist Brian May, drummer Roger Taylor and bass guitarist John Deacon take the music world by storm when they form the rock \'n\' roll band Queen in 1970. Hit songs become instant classics. When Mercury\'s increasingly wild lifestyle starts to spiral out of control, Queen soon faces its greatest challenge yet – finding a way to keep the band together amid the success and excess.',8.1),(4,'John Wick','https://www.youtube.com/embed/2AUmvWm5ZDQ','Chad Stahelski','http://image.tmdb.org/t/p/w342/b9uYMMbm87IBFOq59pppvkkkgNg.jpg','Ex-hitman John Wick comes out of retirement to track down the gangsters that took everything from him.',7.2),(5,'Spotligh','https://www.youtube.com/embed/EwdCIpbTN5g','Tom McCarthy','http://image.tmdb.org/t/p/w342/ngKxbvsn9Si5TYVJfi1EGAGwThU.jpg','In 2001, editor Marty Baron of The Boston Globe assigns a team of journalists to investigate allegations against John Geoghan, an unfrocked priest accused of molesting more than 80 boys. Led by editor Walter \\\"Robby\\\" Robinson, reporters Michael Rezendes, Matt Carroll and Sacha Pfeiffer interview victims and try to unseal sensitive documents. The reporters make it their mission to provide proof of a cover-up of sexual abuse within the Roman Catholic Church.',7.8),(6,'The Revenant','https://www.youtube.com/embed/LoebZZ8K5N0','Alejandro González Iñárritu','http://image.tmdb.org/t/p/w342/oXUWEc5i3wYyFnL1Ycu8ppxxPvs.jpg','In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.',7.4),(7,'The Mule','https://www.youtube.com/embed/N_QksSzK7sI','Clint Eastwood','http://image.tmdb.org/t/p/w342//klazQbxk3yfuZ8JcfO9jdKOZQJ7.jpg','Earl Stone, a man in his 80s, is broke, alone, and facing foreclosure of his business when he is offered a job that simply requires him to drive. Easy enough, but, unbeknownst to Earl, he’s just signed on as a drug courier for a Mexican cartel. He does so well that his cargo increases exponentially, and Earl hit the radar of hard-charging DEA agent Colin Bates.',6.5),(8,'Interstellar','https://www.youtube.com/embed/zSWdZVtXT7E','Christopher Nolan','http://image.tmdb.org/t/p/w342/nBNZadXqJSdt05SHLqgT0HuC5Gm.jpg','Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.',8.2),(9,'La La Land','https://www.youtube.com/embed/0pdqf4P9MB8','Damien Chazelle','http://image.tmdb.org/t/p/w342/ylXCdC106IKiarftHkcacasaAcb.jpg','Mia, an aspiring actress, serves lattes to movie stars in between auditions and Sebastian, a jazz musician, scrapes by playing cocktail party gigs in dingy bars, but as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.',7.9),(11,'Avengers: Infinity War','https://www.youtube.com/embed/6ZfuNTqbHE8','Kevin Feige','http://image.tmdb.org/t/p/w342//7WsyChQLEftFiDOVTGkv3hFpyyt.jpg','As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.',8.3),(12,'Toy Story 4','https://www.youtube.com/embed/wmiIUN-7qhE','Josh Cooley','http://image.tmdb.org/t/p/w342//pDCiYUc09wnmg855P3gFTZOoBCv.jpg','Woody has always been confident about his place in the world and that his priority is taking care of his kid, whether that\'s Andy or Bonnie. But when Bonnie adds a reluctant new toy called \"Forky\" to her room, a road trip adventure alongside old and new friends will show Woody how big the world can be for a toy.',0),(13,'Gran Torino','https://www.youtube.com/embed/RMhbr2XQblk','Clint Eastwood','http://image.tmdb.org/t/p/w342//yeBc5vpEiqIAZrbVQnl833GlBEi.jpg','Walt Kowalski is a widower who holds onto his prejudices despite the changes in his Michigan neighborhood and the world around him. Kowalski is a grumpy, tough-minded, unhappy old man who can\'t get along with either his kids or his neighbors. He is a Korean War veteran whose prize possession is a 1972 Gran Torino he keeps in mint condition. When his neighbor Thao, a young Hmong teenager under pressure from his gang member cousin, tries to steal his Gran Torino, Kowalski sets out to reform the yo',7.9);
/*!40000 ALTER TABLE `app_movie` ENABLE KEYS */;
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
