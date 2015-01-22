-- MySQL dump 10.13  Distrib 5.1.71, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	5.1.71

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
-- Table structure for table `metaforiki`
--

DROP TABLE IF EXISTS `metaforiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metaforiki` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postalcode` int(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `fragile` tinyint(1) DEFAULT NULL,
  `tracking` varchar(20) DEFAULT NULL,
  `comments` tinytext,
  `status` enum('undelivered','delivered','unavailable') CHARACTER SET latin1 NOT NULL DEFAULT 'undelivered',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metaforiki`
--

LOCK TABLES `metaforiki` WRITE;
/*!40000 ALTER TABLE `metaforiki` DISABLE KEYS */;
INSERT INTO `metaforiki` VALUES (1,'Filippos','Sarbanis','Νικηταρα 80',11345,'Greece','2105221705',1,'RE272193155GR','????? ??? ?????????','','2013-12-23 13:51:35'),
(2,'John','Apto','Gewrgiou 79 Peuki Attiki',20345,'Greece','2104958834',1,'RE231556415GR','ρε','delivered','2013-12-25 13:51:35'),
(3,'Kostantina','Best','Kalampoki 15 Ilissia Attiki',15127,'Greece','2108105470',0,'RE235654865GR','φερε ενα φορεμα','delivered','2013-12-26 13:51:35'),
(4,'John','tigkos',' Vasilisis Sofias 5',10021,'Greece','2103707000',0,'RE906614837GR','mizes','undelivered','2013-12-27 14:06:03'),
(5,'Γιάννης','Αντετοκούμπο','Κόδρου 9 Μαρούσι',15126,'Ελλάδα','2101234567',0,'RE286925809GR','NBA','undelivered','2013-12-27 18:36:59'),
(6,'ΜΠΑΜΠΗΣ','ΣΟΥΓΙΑΣ','Παπαφλεσσα 2 ΝΙΚΑΙΑ',18450,'ΕΛΛΑΔΑ','2104256789',0,'RE717751985GR','ΡΕ ΠΑΙΔΙΑ ΣΤΕΙΛΤΕ ΜΟΥ ΤΟ ΔΕΜΑ\nΣΑΣ ΠΑΡΚΑΛΩ!!!!!!!','undelivered','2013-12-27 18:38:37'),
(7,'ΓΙΩΡΓΟΣ','ΚΑΛΑΜΑΡΑΚΗΣ','ΟΛΥΜΠΙΑΚΟΥ 23 Αργυρούπολη',12345,'ΕΛΛΑΔΑ','2104589678',0,'RE832173824GR','ΜΗ Γ@@@@','undelivered','2013-12-27 18:44:12'),
(8,'Giannis','Panagiotopoulos','Petrou ralli & Thivwn 250 Aigalaiw',12244,'Greece','2105381100',1,'RE622171986GR','Σιχαμενοι','undelivered','2013-12-27 18:47:26'),
(9,'Gioujin','Kabouris','bu8os tou mpikini 34',16451,'GREECE','2104567789',0,'RE308662632GR','ΩΣΤΟΣΟ ΟΜΩΣ','undelivered','2013-12-27 18:54:26'),
(10,'Vaggelis','Tziwlos','Themistokleous 1 PERAMA',18863,'Greece','2104567890',1,'RE891178390GR','gfdgfd','delivered','2013-12-28 00:39:33'),
(11,'kristo','koutrovic','Bellmansgatan 3 ',21213,'Serbia','2105678954',0,'RE056137968GR','dwrean ta metaforika','undelivered','2013-12-28 16:14:40'),
(12,'Μαρια','Παπαδοπουλου','Λεωφορος Δημοκρατιας 17 Μελισσια',15127,'Αθηνα','6933406547',1,'RE858139504GR','','delivered','2013-12-31 15:36:16'),
(13,'Νικος','μπριζολιδης','Θεμιστοκλεους 33',15135,'Αθηνα','6944347054',0,'RE288861925GR','','unavailable','2013-12-31 15:38:54');
/*!40000 ALTER TABLE `metaforiki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-20 16:50:34
