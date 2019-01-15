-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: appinfo
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Current Database: `appinfo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appinfo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `appinfo`;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `c_status` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'aa',4,'follow up'),(3,'ac',4,'not follow up'),(4,'ad',4,'not follow up'),(8,'sdas',4,'not follow up');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`friend_id`) USING BTREE,
  KEY `friend_id` (`friend_id`),
  CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1,4);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'USER'),(2,'TOURIST');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_t`
--

DROP TABLE IF EXISTS `permission_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_t` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_t`
--

LOCK TABLES `permission_t` WRITE;
/*!40000 ALTER TABLE `permission_t` DISABLE KEYS */;
INSERT INTO `permission_t` VALUES (0,'admin'),(1,'总经理'),(2,'地区主管'),(3,'普通销售'),(4,'网络咨询顾问');
/*!40000 ALTER TABLE `permission_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenic_evaluation`
--

DROP TABLE IF EXISTS `scenic_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenic_evaluation` (
  `eval_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  `eval_content` varchar(255) DEFAULT NULL,
  `eval_date` date DEFAULT NULL,
  PRIMARY KEY (`eval_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `scenic_evaluation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenic_evaluation`
--

LOCK TABLES `scenic_evaluation` WRITE;
/*!40000 ALTER TABLE `scenic_evaluation` DISABLE KEYS */;
INSERT INTO `scenic_evaluation` VALUES (1,1,1,'test','2019-01-13');
/*!40000 ALTER TABLE `scenic_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenic_spot`
--

DROP TABLE IF EXISTS `scenic_spot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenic_spot` (
  `scenic_id` int(11) NOT NULL AUTO_INCREMENT,
  `scenic_name` varchar(50) NOT NULL,
  `scenic_info` varchar(255) DEFAULT NULL,
  `scenic_score` float(20,4) DEFAULT NULL,
  PRIMARY KEY (`scenic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenic_spot`
--

LOCK TABLES `scenic_spot` WRITE;
/*!40000 ALTER TABLE `scenic_spot` DISABLE KEYS */;
INSERT INTO `scenic_spot` VALUES (1,'sea','it\'s huge and beautiful',5.0000),(7,'b','b',5.6000),(8,'a','a',2.0000),(9,'c','c',2.0000),(10,'d','beautiful',3.0000);
/*!40000 ALTER TABLE `scenic_spot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_experience`
--

DROP TABLE IF EXISTS `share_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_experience` (
  `exper_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `exper_content` varchar(255) DEFAULT NULL,
  `exper_date` date DEFAULT NULL,
  PRIMARY KEY (`exper_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `share_experience_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_experience`
--

LOCK TABLES `share_experience` WRITE;
/*!40000 ALTER TABLE `share_experience` DISABLE KEYS */;
INSERT INTO `share_experience` VALUES (1,1,'feel good and come again@','2019-01-13'),(2,4,'test ad ss s4','2019-01-13');
/*!40000 ALTER TABLE `share_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_record`
--

DROP TABLE IF EXISTS `travel_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travel_record` (
  `travel_id` int(11) NOT NULL AUTO_INCREMENT,
  `travel_content` varchar(255) DEFAULT NULL,
  `travel_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`travel_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `travel_record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_record`
--

LOCK TABLES `travel_record` WRITE;
/*!40000 ALTER TABLE `travel_record` DISABLE KEYS */;
INSERT INTO `travel_record` VALUES (1,'hello','2019-01-13',1),(4,'I like this place. And I will come again!','2019-01-13',1),(5,'good place!','2019-01-13',4);
/*!40000 ALTER TABLE `travel_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `head_portrait` varchar(255) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `permission` (`p_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'yan','yan',NULL,1,'男',23),(2,'x','x',NULL,1,'男',23),(3,'y','y',NULL,1,'男',23),(4,'a','a',NULL,1,'男',24),(5,'b','b',NULL,1,'男',24),(6,'c','c',NULL,1,'女',24);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_t`
--

DROP TABLE IF EXISTS `user_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  `p_id` int(11) NOT NULL,
  `r_status` int(4) unsigned zerofill NOT NULL DEFAULT '0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_t`
--

LOCK TABLES `user_t` WRITE;
/*!40000 ALTER TABLE `user_t` DISABLE KEYS */;
INSERT INTO `user_t` VALUES (1,'as','as',24,1,0001),(3,'sc','sc',1,3,0001),(4,'xu','xu',1,4,0001),(7,'sg','sg',40,1,0001),(10,'sjka','sjka',22,2,0000),(12,'aaa','aaaa',24,3,0000),(13,'xuyan','xuyan',22,1,0000);
/*!40000 ALTER TABLE `user_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-15 10:02:50
