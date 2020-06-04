CREATE DATABASE  IF NOT EXISTS `active` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `active`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: active
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `breakfast`
--

DROP TABLE IF EXISTS `breakfast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breakfast` (
  `idbreakfast` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `Matiere grasse` varchar(45) DEFAULT NULL,
  `Fruit1` varchar(45) DEFAULT NULL,
  `Fruit2` varchar(45) DEFAULT NULL,
  `produits cerealiser` varchar(45) DEFAULT NULL,
  `Legumes1` varchar(45) DEFAULT NULL,
  `Legumes2` varchar(45) DEFAULT NULL,
  `Legumes3` varchar(45) DEFAULT NULL,
  `Boissons` varchar(45) DEFAULT NULL,
  `vvpolav` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbreakfast`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakfast`
--

LOCK TABLES `breakfast` WRITE;
/*!40000 ALTER TABLE `breakfast` DISABLE KEYS */;
/*!40000 ALTER TABLE `breakfast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menutable`
--

DROP TABLE IF EXISTS `menutable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menutable` (
  `idmenutable` int(11) NOT NULL AUTO_INCREMENT,
  `plat` varchar(45) DEFAULT NULL,
  `gras` varchar(45) DEFAULT NULL,
  `gras1` varchar(45) DEFAULT NULL,
  `fruit1` varchar(45) DEFAULT NULL,
  `fruit2` varchar(45) DEFAULT NULL,
  `fruit3` varchar(45) DEFAULT NULL,
  `cereal1` varchar(45) DEFAULT NULL,
  `cereal2` varchar(45) DEFAULT NULL,
  `leg1` varchar(45) DEFAULT NULL,
  `leg2` varchar(45) DEFAULT NULL,
  `leg3` varchar(45) DEFAULT NULL,
  `boi` varchar(45) DEFAULT NULL,
  `vvpolav` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idmenutable`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menutable`
--

LOCK TABLES `menutable` WRITE;
/*!40000 ALTER TABLE `menutable` DISABLE KEYS */;
INSERT INTO `menutable` VALUES (89,'dinner','Juice','Oil','Meat','Chicken','Meat','Fish','Tomatoes','Tomatoes','Fish','Chicken','Meat','Meat','dinner'),(90,'breakfast','Juice','Meat','Banana','Tomatoes','eggs','Lettuce','Potatoes','Cucumber','Potatoes','Lettuce','Oil','Apples','low carbs'),(91,'lunch','Juice','Meat','Banana','Tomatoes','eggs','Lettuce','Potatoes','Cucumber','Potatoes','Lettuce','Oil','Apples','high fibers'),(92,'dinner','Juice','Meat','Banana','Tomatoes','eggs','Lettuce','Potatoes','Cucumber','Potatoes','Lettuce','Oil','Apples','low sugar'),(93,'breakfast','Juice','Meat','Banana','Tomatoes','eggs','Lettuce','Potatoes','Cucumber','Potatoes','Lettuce','Oil','Apples','regular'),(94,'breakfast','eggs','Tomatoes','Fish','Meat','Oil','Lemonade','eggs','Fish','Lemonade','Tomatoes','Banana','Tomatoes','p1'),(95,'breakfast','Lemonade','Chicken','Chicken','Chicken','Fish','Tomatoes','Fish','Chicken','Chicken','Carrots','Carrots','Fish','az1'),(96,'breakfast','Carrots','Chicken','Fish','Meat','Meat','Lemonade','Tomatoes','Meat','Fish','Carrots','Fish','Meat','z12'),(97,'breakfast','Lemonade','Lemonade','Chicken','Fish','Fish','Meat','Chicken','Fish','Banana','Chicken','Chicken','Fish','r12');
/*!40000 ALTER TABLE `menutable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertable` (
  `idordertable` int(11) NOT NULL AUTO_INCREMENT,
  `Cdate` date DEFAULT NULL,
  `Rdate` date DEFAULT NULL,
  `Commande` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idordertable`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (30,'2020-06-26',NULL,'Tomatoes','15 kg'),(31,'2020-06-27',NULL,'eggs','100');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientstable`
--

DROP TABLE IF EXISTS `patientstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientstable` (
  `idpatientstable` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `Etatpatient` varchar(100) NOT NULL,
  `Regime` varchar(100) NOT NULL,
  `breakfast` varchar(45) NOT NULL,
  `lunch` varchar(45) NOT NULL,
  `dinner` varchar(45) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`idpatientstable`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `userstable` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientstable`
--

LOCK TABLES `patientstable` WRITE;
/*!40000 ALTER TABLE `patientstable` DISABLE KEYS */;
INSERT INTO `patientstable` VALUES (114,'younes','Intesif care','Sugar Free','low carbs','high fibers','low sugar',31),(115,'yassine','Normal','No Salt','regular','high fibers','low sugar',31);
/*!40000 ALTER TABLE `patientstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantitytable`
--

DROP TABLE IF EXISTS `quantitytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantitytable` (
  `idquantitytable` int(11) NOT NULL AUTO_INCREMENT,
  `element` varchar(45) NOT NULL,
  `quantiteinitial` varchar(45) NOT NULL,
  `quantiteconsome` varchar(45) NOT NULL,
  `quantitecommande` varchar(45) NOT NULL,
  `quantitepresent` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idquantitytable`),
  UNIQUE KEY `element_UNIQUE` (`element`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantitytable`
--

LOCK TABLES `quantitytable` WRITE;
/*!40000 ALTER TABLE `quantitytable` DISABLE KEYS */;
INSERT INTO `quantitytable` VALUES (6,'Strawberries','13','188','12',13,'2020-06-12'),(7,'kiki','2','12','33',-19,'2020-06-04'),(8,'Juice','30','22','33',8,'2020-06-06'),(9,'Meat','30','25','33',5,'2020-06-06'),(10,'Lemonade','290','150','10',140,'2020-06-04'),(11,'Fish','15','5','10',10,'2020-06-06');
/*!40000 ALTER TABLE `quantitytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storagetable`
--

DROP TABLE IF EXISTS `storagetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storagetable` (
  `idelement` varchar(45) DEFAULT NULL,
  `element` varchar(45) DEFAULT NULL,
  `storagezone` varchar(45) DEFAULT NULL,
  `storagetype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storagetable`
--

LOCK TABLES `storagetable` WRITE;
/*!40000 ALTER TABLE `storagetable` DISABLE KEYS */;
INSERT INTO `storagetable` VALUES ('AH1','Oil','zone A','humid'),('AF2','Juice','zone A','Cold'),('AF3','Lemonade','zone A','Cold'),('BF4','Meat','zone B','Cold'),('BF5','Fish','zone B','Cold'),('BF6','Chicken','zone B','Cold'),('AH7','Tomatoes','zone A','humid'),('AH8','Carrots','zone A','humid'),('AH9','eggs','zone A','humid'),('AH10','Banana','zone A','humid'),('AH11','Apples','zone A','humid'),('AH12','Potatoes','zone A','humid'),('AF13','Cucumber','zone A','Cold'),('AF14','Lettuce','zone A','Cold');
/*!40000 ALTER TABLE `storagetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstable`
--

DROP TABLE IF EXISTS `userstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstable` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstable`
--

LOCK TABLES `userstable` WRITE;
/*!40000 ALTER TABLE `userstable` DISABLE KEYS */;
INSERT INTO `userstable` VALUES (30,'yo','ko','younes','el ouafi','doctor'),(31,'younes','el ouafi','IDTEST','TEST','doctor'),(32,'kk','ll','kk','hoho','Chef'),(33,'k','k','chef','chef','Chef'),(34,'jjj','kkkk','doc','doc','Chef'),(35,'nn','bb',' koko','lolk','doctor'),(36,'j','lll','jjj','momo','Chef'),(37,'klkl','nnnnnnnn','kllkk','lolo','doctor'),(38,',,',',,','mpmp','mp','doctor'),(39,'koko','lolo','kiki','kiki','Salesman'),(40,'j','l','chaf','chaf','Chef'),(41,'LI','KOK','JIJI','JIJI','doctor'),(42,'SECOND','FIRST','SS','MM','doctor'),(43,'younes','el ouafi','younes123','younes123','doctor'),(44,'chef','chef',' cheff','Chef','Chef'),(45,'salman','salesman','salesman','salesman','Salesman'),(46,'kk','jj','testingit','testingit','doctor'),(47,'younes','el ouafi ','test12','test12','doctor');
/*!40000 ALTER TABLE `userstable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-04 19:24:46
