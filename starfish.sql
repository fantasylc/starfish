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
-- Table structure for table `account_user`
--

--
-- Dumping data for table `account_user`
--

LOCK TABLES `account_user` WRITE;
/*!40000 ALTER TABLE `account_user` DISABLE KEYS */;
INSERT INTO `account_user` VALUES (1,'pbkdf2_sha256$30000$tbEjP5XIhIhe$XBlOp1fTGm9o2G2BbVR1ML9s3e2L7tilJrsE/2Yp+Nw=','2016-12-17 14:37:41.838705','liuchao_824@163.com','liuchao_824','','',0,1,1,4,'2016-12-17 14:37:15.936983'),(3,'pbkdf2_sha256$30000$IrAu04vPBHmo$QoP6HUw5oQKrT8dkLm91aOOkN6++PENQJMCC5wwZfik=','2016-12-17 15:18:46.967582','lala@lala.com','lala','','',0,0,1,3,'2016-12-17 14:40:58.212886');
/*!40000 ALTER TABLE `account_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--


--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--


--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--


-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户',6,'add_user'),(17,'Can change 用户',6,'change_user'),(18,'Can delete 用户',6,'delete_user'),(19,'Can add 四级词汇',7,'add_cetfourwords'),(20,'Can change 四级词汇',7,'change_cetfourwords'),(21,'Can delete 四级词汇',7,'delete_cetfourwords'),(22,'Can add 六级词汇',8,'add_cetsixwords'),(23,'Can change 六级词汇',8,'change_cetsixwords'),(24,'Can delete 六级词汇',8,'delete_cetsixwords'),(25,'Can add 雅思词汇',9,'add_ieltswords'),(26,'Can change 雅思词汇',9,'change_ieltswords'),(27,'Can delete 雅思词汇',9,'delete_ieltswords'),(28,'Can add 背诵记录表',10,'add_reciterecord'),(29,'Can change 背诵记录表',10,'change_reciterecord'),(30,'Can delete 背诵记录表',10,'delete_reciterecord'),(31,'Can add synonym group',11,'add_synonymgroup'),(32,'Can change synonym group',11,'change_synonymgroup'),(33,'Can delete synonym group',11,'delete_synonymgroup'),(34,'Can add test',12,'add_test'),(35,'Can change test',12,'change_test'),(36,'Can delete test',12,'delete_test'),(37,'Can add 托福词汇',13,'add_toeftwords'),(38,'Can change 托福词汇',13,'change_toeftwords'),(39,'Can delete 托福词汇',13,'delete_toeftwords'),(40,'Can add 单词笔记',14,'add_wordnote'),(41,'Can change 单词笔记',14,'change_wordnote'),(42,'Can delete 单词笔记',14,'delete_wordnote'),(43,'Can add 单词总表',15,'add_words'),(44,'Can change 单词总表',15,'change_words'),(45,'Can delete 单词总表',15,'delete_words');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

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

DROP TABLE IF EXISTS `cetsix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cetsix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `words` varchar(255) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `lx` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cetsix`
--

LOCK TABLES `cetsix` WRITE;
/*!40000 ALTER TABLE `cetsix` DISABLE KEYS */;
/*!40000 ALTER TABLE `cetsix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_account_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_account_user_id` FOREIGN KEY (`user_id`) REFERENCES `account_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-12-17 14:40:33.010177','2','lala@lala.com',3,'',6,1),(2,'2016-12-17 14:51:03.747152','1','CetFourWords object',1,'[{\"added\": {}}]',7,1),(3,'2016-12-17 14:52:29.408838','2','CetFourWords object',1,'[{\"added\": {}}]',7,1),(4,'2016-12-17 14:55:57.903402','3','CetFourWords object',1,'[{\"added\": {}}]',7,1),(5,'2016-12-17 14:56:51.388656','4','CetFourWords object',1,'[{\"added\": {}}]',7,1),(6,'2016-12-17 14:57:25.382547','5','CetFourWords object',1,'[{\"added\": {}}]',7,1),(7,'2016-12-17 15:02:42.236176','5','Words object',2,'[{\"changed\": {\"fields\": [\"synonym_id\"]}}]',15,1),(8,'2016-12-17 15:02:53.346321','4','Words object',2,'[{\"changed\": {\"fields\": [\"synonym_id\"]}}]',15,1),(9,'2016-12-17 15:03:03.404599','3','Words object',2,'[{\"changed\": {\"fields\": [\"synonym_id\"]}}]',15,1),(10,'2016-12-17 15:05:55.441545','3','Words object',2,'[{\"changed\": {\"fields\": [\"meaning\"]}}]',15,1),(11,'2016-12-17 15:16:45.418922','5','ReciteRecord object',3,'',10,1),(12,'2016-12-17 15:16:45.422840','4','ReciteRecord object',3,'',10,1),(13,'2016-12-17 15:16:45.427114','3','ReciteRecord object',3,'',10,1),(14,'2016-12-17 15:16:45.431874','2','ReciteRecord object',3,'',10,1),(15,'2016-12-17 15:16:45.436375','1','ReciteRecord object',3,'',10,1),(16,'2016-12-17 15:21:15.650148','10','ReciteRecord object',3,'',10,1),(17,'2016-12-17 15:21:15.654011','9','ReciteRecord object',3,'',10,1),(18,'2016-12-17 15:21:15.658148','8','ReciteRecord object',3,'',10,1),(19,'2016-12-17 15:21:15.663523','7','ReciteRecord object',3,'',10,1),(20,'2016-12-17 15:21:15.667604','6','ReciteRecord object',3,'',10,1),(21,'2016-12-17 15:22:23.686340','15','ReciteRecord object',3,'',10,1),(22,'2016-12-17 15:22:23.691885','14','ReciteRecord object',3,'',10,1),(23,'2016-12-17 15:22:23.696182','13','ReciteRecord object',3,'',10,1),(24,'2016-12-17 15:22:23.700656','12','ReciteRecord object',3,'',10,1),(25,'2016-12-17 15:22:23.704858','11','ReciteRecord object',3,'',10,1),(26,'2016-12-17 15:24:22.298031','6','CetFourWords object',1,'[{\"added\": {}}]',7,1),(27,'2016-12-17 15:26:23.883693','7','CetFourWords object',1,'[{\"added\": {}}]',7,1),(28,'2016-12-17 15:26:57.311615','7','Words object',2,'[{\"changed\": {\"fields\": [\"synonym_id\"]}}]',15,1),(29,'2016-12-17 15:27:06.074421','6','Words object',2,'[{\"changed\": {\"fields\": [\"synonym_id\"]}}]',15,1),(30,'2016-12-17 16:45:39.449415','2','WordNote object',1,'[{\"added\": {}}]',14,1),(31,'2016-12-18 01:47:26.480001','22','ReciteRecord object',3,'',10,1),(32,'2016-12-18 01:47:26.484123','21','ReciteRecord object',3,'',10,1),(33,'2016-12-18 01:47:26.488652','20','ReciteRecord object',3,'',10,1),(34,'2016-12-18 01:47:26.492637','19','ReciteRecord object',3,'',10,1),(35,'2016-12-18 01:47:26.496908','18','ReciteRecord object',3,'',10,1),(36,'2016-12-18 01:47:26.501113','17','ReciteRecord object',3,'',10,1),(37,'2016-12-18 01:47:26.506086','16','ReciteRecord object',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'account','user'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'words','cetfourwords'),(8,'words','cetsixwords'),(9,'words','ieltswords'),(10,'words','reciterecord'),(11,'words','synonymgroup'),(12,'words','test'),(13,'words','toeftwords'),(14,'words','wordnote'),(15,'words','words');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'account','0001_initial','2016-12-17 14:35:50.660301'),(2,'contenttypes','0001_initial','2016-12-17 14:35:50.723118'),(3,'admin','0001_initial','2016-12-17 14:35:50.863552'),(4,'admin','0002_logentry_remove_auto_add','2016-12-17 14:35:50.921783'),(5,'contenttypes','0002_remove_content_type_name','2016-12-17 14:35:51.016942'),(6,'auth','0001_initial','2016-12-17 14:35:51.328185'),(7,'auth','0002_alter_permission_name_max_length','2016-12-17 14:35:51.384680'),(8,'auth','0003_alter_user_email_max_length','2016-12-17 14:35:51.402621'),(9,'auth','0004_alter_user_username_opts','2016-12-17 14:35:51.445677'),(10,'auth','0005_alter_user_last_login_null','2016-12-17 14:35:51.464066'),(11,'auth','0006_require_contenttypes_0002','2016-12-17 14:35:51.469991'),(12,'auth','0007_alter_validators_add_error_messages','2016-12-17 14:35:51.489286'),(13,'auth','0008_alter_user_username_max_length','2016-12-17 14:35:51.507182'),(14,'sessions','0001_initial','2016-12-17 14:35:51.563758'),(15,'words','0001_initial','2016-12-17 14:36:00.747014');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ax62timvu23sjp4m94fzxva6i3err1bh','NGUzNDI1ZTg5MWNmYjIwNWQwNzhlZTM5ZDViM2UxMjkxNTg5YzNiYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyNGNlZTI4YTE4Y2I3OTVkNmRmNmQ0OGRkOWUyYWU4ZjUzYzljZmIiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnQuYXV0aC5NeUJhY2tlbmQifQ==','2016-12-31 15:18:46.972694'),('kxc6yvfzo3wa2ugpfh425ksnuykpise9','NjU5MDNmMjc0MmJhMDI5YTQxMmE2NDQ5NmIwNWRmYmMwYWQ3YjU1ODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0ZWY5NmI1M2FkNjUxZjQyMzZiNTZlMzYyMWY0OTlhMWVlYzczM2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-31 14:37:41.843906');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

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
