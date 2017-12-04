-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schoolwork
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `cookie_UNIQUE` (`cookie`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'rob','12345','Im fan gay','spc'),(2,'marata','1234','luh','nbsbub'),(3,'spencer','123','ggwwp spender','tqfotfs'),(30,'maratas','asdsad','sadsad','nbsbubt'),(31,'spensers','123','','tqfotfst'),(32,'robs','123','s','spct'),(33,'testaccount','123','123','873uftubddpvou');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `photoid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photoid`),
  UNIQUE KEY `photoid_UNIQUE` (`photoid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,1,'private','http://i.imgur.com/Ylu23zJ.jpg','Coding','Screen of code.'),(2,1,'private','http://i.imgur.com/WS8Ctnc.jpg','Desert Puzzle','Deltascape v3.0 mechanic.'),(3,1,'public','http://i.imgur.com/QCRP4oT.png','Tokoha - Kumi Hi5','Cardfight Vanguard screencap.'),(4,1,'public','http://i.imgur.com/JlfSOUr.jpg','Grimgar Sad Scene','A sad scene from Grimgar'),(5,1,'public','http://i.imgur.com/DmzdUto.jpg','Erased','I just said that out loud.'),(6,2,'private','http://i.imgur.com/ZafvsyC.jpg','Bravely Second - Catmancer Job','Catmancer anyone?'),(7,2,'private','http://i.imgur.com/80gFnpC.jpg','Stormblood Title','The title screen for the new FFXIV expansion.'),(8,2,'public','http://i.imgur.com/x2FaN6s.jpg','Gardevoir EX SCR','\"Online luck = good. Offline luck = not so good.'),(9,2,'public','http://i.imgur.com/8RSMxFa.jpg','Fire Emblem Fates Wallpaper','Collection of characters from Fire Emblem Fates.'),(10,2,'public','http://i.imgur.com/Zpo5Cwz.jpg','Midoriya Shocked','RIP Midoriya\'s dreams.'),(11,3,'private','http://i.imgur.com/h7r4KLM.jpg','Dark Souls III Dungeon','Dark Souls III Dungeon'),(12,3,'private','http://i.imgur.com/I2cSA9b.jpg','Yohane','Meme girl.'),(13,3,'public','http://i.imgur.com/sWuzVON.jpg','Jet Set Radio Title','Dreamcast classic.'),(14,3,'public','http://i.imgur.com/3ABPVSu.jpg','Jerome Came Out','Good friend Jerome.'),(15,3,'public','http://i.imgur.com/GBNtlol.jpg','Persona 5 - Kamodshida\'s Castle','Taken from PS4 remote play.'),(16,1,'public','https://gbf.wiki/images/1/1c/Threo_C.png','Threo','Unite and Fight exclusive character.'),(17,2,'public','http://game-a.granbluefantasy.jp/assets_en/img/sp/assets/leader/pm/190201_sp_1_01.png','Vakyrie - Djeeta','Class from Granblue fantasy- Djeeta ver.'),(18,1,'Public','https://i.imgur.com/0YjKZBL.jpg','test','test');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `shareid` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`shareid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,2),(15,15,2),(16,16,2),(17,17,1);
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,1,'irl'),(2,1,'code'),(3,2,'game'),(4,2,'final fantasy xiv'),(5,3,'anime'),(6,3,'vanguard'),(7,4,'anime'),(8,4,'grimgar of fantasy and ash'),(9,5,'anime'),(10,5,'erased'),(11,6,'game'),(12,6,'bravely second'),(13,7,'game'),(14,7,'final fantasy xiv'),(15,8,'game'),(16,8,'pokemon'),(17,9,'game'),(18,9,'fire emblem fates'),(19,10,'anime'),(20,10,'my hero academia'),(21,11,'game'),(22,11,'dark souls 3'),(23,12,'anime'),(24,12,'love live sunshine'),(25,13,'game'),(26,13,'jet set radio'),(27,14,'irl'),(28,14,'jerome'),(29,15,'game'),(30,15,'persona 5'),(31,16,'game'),(32,16,'granblue fantasy'),(50,18,'test'),(51,16,'test'),(52,17,'game'),(53,17,'granblue fantasy');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-18 13:17:05
