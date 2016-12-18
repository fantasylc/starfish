-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: starfishdb
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `cet4_words`
--

DROP TABLE IF EXISTS `cet4_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cet4_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `meaning` varchar(100) NOT NULL,
  `example` longtext,
  `is_import` tinyint(1) NOT NULL,
  `global_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`),
  KEY `cet4_words_186a2d48` (`global_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cet4_words`
--

LOCK TABLES `cet4_words` WRITE;
/*!40000 ALTER TABLE `cet4_words` DISABLE KEYS */;
INSERT INTO `cet4_words` VALUES (1,'exist','vi. 存在；生存；生活；继续存在','He thought that if he couldn\'t see something, it didn\'t exist.',1,1),(2,'purpose','n. 目的；用途；意志<br /> vt. 决心；企图；打算','The purpose of the occasion was to raise money for medical supplies.',0,2),(3,'like','vt. 喜欢；想；愿意<br/>prep. 像；如同','His arms look like they might snap under the weight of his gloves.',0,3),(4,'love','v. 爱，热爱；爱戴；赞美，称赞；喜爱；喜好；喜欢；爱慕','Oh, Amy, I love you.',0,4),(5,'enjoy','vt. 欣赏，享受；喜爱；使过得快活','e was a guy who enjoyed life to the full.',0,5),(6,'fantasy','n. 幻想；白日梦；幻觉','The film is more of an ironic fantasy than a horror story.',0,6),(7,'fantastic','adj. 奇异的；空想的；异想天开的；古怪的；极好的，极出色的；不可思议的；不切实际的','I have a fantastic social life',0,7);
/*!40000 ALTER TABLE `cet4_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cet6_words`
--

DROP TABLE IF EXISTS `cet6_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cet6_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `meaning` varchar(100) NOT NULL,
  `example` longtext,
  `is_import` tinyint(1) NOT NULL,
  `global_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`),
  KEY `cet6_words_186a2d48` (`global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cet6_words`
--

LOCK TABLES `cet6_words` WRITE;
/*!40000 ALTER TABLE `cet6_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `cet6_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cetsix`
--

--
-- Table structure for table `django_admin_log`
--


--
-- Table structure for table `ielts_words`
--

DROP TABLE IF EXISTS `ielts_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ielts_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `meaning` varchar(100) NOT NULL,
  `example` longtext,
  `is_import` tinyint(1) NOT NULL,
  `global_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`),
  KEY `ielts_words_186a2d48` (`global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ielts_words`
--

LOCK TABLES `ielts_words` WRITE;
/*!40000 ALTER TABLE `ielts_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `ielts_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recite_record`
--

DROP TABLE IF EXISTS `recite_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recite_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recite_record_83ca49d0` (`word_id`),
  KEY `recite_record_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recite_record`
--

LOCK TABLES `recite_record` WRITE;
/*!40000 ALTER TABLE `recite_record` DISABLE KEYS */;
INSERT INTO `recite_record` VALUES (23,1,1,3,2,'2016-12-18 01:47:40.149040','2016-12-18 01:47:40.149132'),(24,2,1,3,2,'2016-12-18 01:48:30.492655','2016-12-18 01:48:30.492729'),(25,3,1,3,2,'2016-12-18 01:48:33.187643','2016-12-18 01:48:33.187709'),(26,4,1,3,2,'2016-12-18 01:48:39.936595','2016-12-18 01:48:39.936643'),(27,5,1,3,2,'2016-12-18 01:48:40.791170','2016-12-18 01:48:40.791217'),(28,6,1,3,2,'2016-12-18 01:48:44.681830','2016-12-18 01:48:44.681878');
/*!40000 ALTER TABLE `recite_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synonym_group`
--

DROP TABLE IF EXISTS `synonym_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonym_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonym_group`
--

LOCK TABLES `synonym_group` WRITE;
/*!40000 ALTER TABLE `synonym_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `synonym_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeft_words`
--

DROP TABLE IF EXISTS `toeft_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeft_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `meaning` varchar(100) NOT NULL,
  `example` longtext,
  `is_import` tinyint(1) NOT NULL,
  `global_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`),
  KEY `toeft_words_186a2d48` (`global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeft_words`
--

LOCK TABLES `toeft_words` WRITE;
/*!40000 ALTER TABLE `toeft_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeft_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_note`
--

DROP TABLE IF EXISTS `word_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `word_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `word_note_83ca49d0` (`word_id`),
  KEY `word_note_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_note`
--

LOCK TABLES `word_note` WRITE;
/*!40000 ALTER TABLE `word_note` DISABLE KEYS */;
INSERT INTO `word_note` VALUES (1,2,3,'lala\'s note purpose','2016-12-17 16:37:09.367475',1),(2,7,1,'经常用来做昵称','2016-12-17 16:45:39.448390',1);
/*!40000 ALTER TABLE `word_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `meaning` varchar(100) NOT NULL,
  `example` longtext,
  `synonym_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `word` (`word`),
  KEY `words_0fbb6a76` (`synonym_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'exist','vi. 存在；生存；生活；继续存在','He thought that if he couldn\'t see something, it didn\'t exist.',0),(2,'purpose','n. 目的；用途；意志<br /> vt. 决心；企图；打算','The purpose of the occasion was to raise money for medical supplies.',0),(3,'like','vt. 喜欢；想；愿意 prep. 像；如同','His arms look like they might snap under the weight of his gloves.',1),(4,'love','v. 爱，热爱；爱戴；赞美，称赞；喜爱；喜好；喜欢；爱慕','Oh, Amy, I love you.',1),(5,'enjoy','vt. 欣赏，享受；喜爱；使过得快活','e was a guy who enjoyed life to the full.',1),(6,'fantasy','n. 幻想；白日梦；幻觉','The film is more of an ironic fantasy than a horror story.',2),(7,'fantastic','adj. 奇异的；空想的；异想天开的；古怪的；极好的，极出色的；不可思议的；不切实际的','I have a fantastic social life',2);
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-18 10:35:46
