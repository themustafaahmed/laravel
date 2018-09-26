-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Table structure for table `bestsellers`
--

DROP TABLE IF EXISTS `bestsellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bestsellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestsellers`
--

LOCK TABLES `bestsellers` WRITE;
/*!40000 ALTER TABLE `bestsellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bestsellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productId_products_Id` (`productId`),
  KEY `fk_orderId_orders_id` (`orderId`),
  CONSTRAINT `fk_orderId_orders_id` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_productId_products_Id` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (8,14,3,'2018-06-05 11:39:41','2018-06-05 11:39:41',14,369.00,NULL),(9,15,4,'2018-06-05 11:39:41','2018-06-05 11:39:41',14,48.00,NULL),(10,14,2,'2018-06-12 17:46:11','2018-06-12 17:46:11',15,246.00,NULL),(12,14,2,'2018-06-12 17:53:51','2018-06-12 17:53:51',17,246.00,NULL),(13,14,2,'2018-06-12 17:55:07','2018-06-12 17:55:07',18,246.00,NULL),(14,14,2,'2018-06-12 17:56:41','2018-06-12 17:56:41',19,246.00,NULL),(15,14,2,'2018-06-12 18:01:08','2018-06-12 18:01:08',20,246.00,NULL),(16,14,2,'2018-06-12 18:23:56','2018-06-12 18:23:56',21,246.00,NULL),(17,14,2,'2018-06-12 18:29:48','2018-06-12 18:29:48',22,246.00,NULL),(18,14,3,'2018-06-21 18:38:31','2018-06-21 18:38:31',23,295.00,NULL),(19,15,2,'2018-06-21 18:38:31','2018-06-21 18:38:31',23,24.00,NULL),(20,14,1,'2018-06-22 10:17:27','2018-06-22 10:17:27',32,98.40,NULL),(21,16,4,'2018-06-22 10:17:27','2018-06-22 10:17:27',32,320.00,NULL),(22,14,2,'2018-06-22 13:32:24','2018-06-22 13:32:24',34,196.80,98.40),(23,15,2,'2018-06-22 13:32:24','2018-06-22 13:32:24',34,24.00,12.00),(24,14,1,'2018-06-23 17:39:52','2018-06-23 17:39:52',35,123.00,123.00),(25,15,1,'2018-06-23 17:39:52','2018-06-23 17:39:52',35,12.00,12.00),(26,14,2,'2018-06-23 17:50:47','2018-06-23 17:50:47',36,246.00,123.00),(27,14,2,'2018-06-23 17:52:35','2018-06-23 17:52:35',37,246.00,123.00),(28,15,2,'2018-06-23 17:52:35','2018-06-23 17:52:35',37,24.00,12.00),(29,16,2,'2018-06-23 17:52:35','2018-06-23 17:52:35',37,200.00,100.00),(30,14,2,'2018-06-23 17:52:55','2018-06-23 17:52:55',38,246.00,123.00),(31,15,2,'2018-06-23 17:52:55','2018-06-23 17:52:55',38,24.00,12.00),(32,16,2,'2018-06-23 17:52:55','2018-06-23 17:52:55',38,200.00,100.00),(33,14,2,'2018-06-23 17:53:10','2018-06-23 17:53:10',39,246.00,123.00),(34,15,2,'2018-06-23 17:53:10','2018-06-23 17:53:10',39,24.00,12.00),(35,16,2,'2018-06-23 17:53:10','2018-06-23 17:53:10',39,200.00,100.00),(36,14,2,'2018-06-23 18:00:28','2018-06-23 18:00:28',40,246.00,123.00),(37,15,2,'2018-06-23 18:00:29','2018-06-23 18:00:29',40,24.00,12.00),(38,16,2,'2018-06-23 18:00:29','2018-06-23 18:00:29',40,200.00,100.00),(39,14,2,'2018-06-23 18:05:00','2018-06-23 18:05:00',41,246.00,123.00),(40,15,2,'2018-06-23 18:05:00','2018-06-23 18:05:00',41,24.00,12.00),(41,16,2,'2018-06-23 18:05:00','2018-06-23 18:05:00',41,200.00,100.00),(42,14,2,'2018-06-23 18:05:36','2018-06-23 18:05:36',42,246.00,123.00),(43,15,2,'2018-06-23 18:05:36','2018-06-23 18:05:36',42,24.00,12.00),(44,16,2,'2018-06-23 18:05:36','2018-06-23 18:05:36',42,200.00,100.00),(45,14,2,'2018-06-23 18:06:15','2018-06-23 18:06:15',43,246.00,123.00),(46,15,2,'2018-06-23 18:06:15','2018-06-23 18:06:15',43,24.00,12.00),(47,16,2,'2018-06-23 18:06:15','2018-06-23 18:06:15',43,200.00,100.00),(48,14,2,'2018-06-23 18:27:21','2018-06-23 18:27:21',44,246.00,123.00),(49,15,2,'2018-06-23 18:27:21','2018-06-23 18:27:21',44,24.00,12.00),(50,16,2,'2018-06-23 18:27:21','2018-06-23 18:27:21',44,200.00,100.00),(51,14,2,'2018-06-23 18:29:28','2018-06-23 18:29:28',45,246.00,123.00),(52,15,2,'2018-06-23 18:29:28','2018-06-23 18:29:28',45,24.00,12.00),(53,16,2,'2018-06-23 18:29:28','2018-06-23 18:29:28',45,200.00,100.00),(54,14,2,'2018-06-23 18:36:15','2018-06-23 18:36:15',46,246.00,123.00),(55,15,2,'2018-06-23 18:36:15','2018-06-23 18:36:15',46,24.00,12.00),(56,16,2,'2018-06-23 18:36:15','2018-06-23 18:36:15',46,200.00,100.00),(57,14,2,'2018-06-23 18:37:03','2018-06-23 18:37:03',47,246.00,123.00),(58,15,2,'2018-06-23 18:37:03','2018-06-23 18:37:03',47,24.00,12.00),(59,16,2,'2018-06-23 18:37:03','2018-06-23 18:37:03',47,200.00,100.00),(60,14,2,'2018-06-23 18:38:09','2018-06-23 18:38:09',48,246.00,123.00),(61,15,2,'2018-06-23 18:38:09','2018-06-23 18:38:09',48,24.00,12.00),(62,16,2,'2018-06-23 18:38:09','2018-06-23 18:38:09',48,200.00,100.00),(63,14,2,'2018-06-23 18:50:43','2018-06-23 18:50:43',49,246.00,123.00),(64,15,2,'2018-06-23 18:50:43','2018-06-23 18:50:43',49,24.00,12.00),(65,16,2,'2018-06-23 18:50:43','2018-06-23 18:50:43',49,200.00,100.00);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTitle` varchar(250) NOT NULL,
  `categoryUrl` varchar(250) NOT NULL,
  `categoryId` int(11),
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_categoryTitle_uindex` (`categoryTitle`),
  UNIQUE KEY `categories_categoryUrl_uindex` (`categoryUrl`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (17,'bla123','bla123',15,'2018-05-27 10:27:51','2018-05-27 10:27:51'),(18,'Mens','mens',0,'2018-05-27 11:10:27','2018-05-27 11:10:27'),(19,'Shoes','shoes',18,'2018-05-27 11:10:48','2018-05-27 11:10:48'),(35,'Home','home',0,'2018-05-27 12:04:22','2018-05-27 12:04:22'),(52,'Nike','nike',19,'2018-05-27 13:00:25','2018-05-27 13:00:25'),(53,'new','new',19,'2018-05-27 13:09:34','2018-05-27 13:09:34'),(54,'T-shirt','t-shirt',18,'2018-05-27 13:10:00','2018-05-27 13:10:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_categories`
--

DROP TABLE IF EXISTS `coupon_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_coupon_categories_category_id_categories_id` (`category_id`),
  KEY `fk_coupon_categories_coupon_id_coupons_id` (`coupon_id`),
  CONSTRAINT `fk_coupon_categories_category_id_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_coupon_categories_coupon_id_coupons_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_categories`
--

LOCK TABLES `coupon_categories` WRITE;
/*!40000 ALTER TABLE `coupon_categories` DISABLE KEYS */;
INSERT INTO `coupon_categories` VALUES (16,6,19);
/*!40000 ALTER TABLE `coupon_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_products`
--

DROP TABLE IF EXISTS `coupon_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_coupon_products_product_id_products_id` (`product_id`),
  KEY `fk_coupon_products_coupon_id_coupons_id` (`coupon_id`),
  CONSTRAINT `fk_coupon_products_coupon_id_coupons_id` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_coupon_products_product_id_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_products`
--

LOCK TABLES `coupon_products` WRITE;
/*!40000 ALTER TABLE `coupon_products` DISABLE KEYS */;
INSERT INTO `coupon_products` VALUES (19,6,16);
/*!40000 ALTER TABLE `coupon_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `status` bit(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (6,'test64','3344',20,'1',NULL,'F','2018-06-17','2018-06-22','','2018-06-17 00:00:00','2018-06-21 18:06:23');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ImagePath` text,
  `productId` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_images_product` (`productId`),
  CONSTRAINT `pk_images_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (95,'8LWjmX9MlXptNfhP6P2LrcVvxPKUdfQ3QHla.jpg',14,'2018-06-03 14:55:24','2018-06-03 14:55:24'),(96,'jnw1vxjjCTXNURQw38lznScIOfXNUepBo2RV.jpg',14,'2018-06-03 15:04:42','2018-06-03 15:04:42'),(98,'UqyF3ebctMKdPCTokkZF0KJyTjoWtqdel4sG.jpg',15,'2018-06-03 17:09:12','2018-06-03 17:09:12'),(99,'ehJc3PD6Xpu2aCNvQaAwpyOIPRE07lmCYS9w.jpg',15,'2018-06-03 17:09:12','2018-06-03 17:09:12'),(100,'KWNveTJY663aUpYb2KxzUcupes5mpIYbIodu.jpg',15,'2018-06-03 17:09:12','2018-06-03 17:09:12'),(101,'gQllPBFovSo6Ah7jhcUSmIYTcDkqqXc4Its1.jpg',16,'2018-06-17 15:31:52','2018-06-17 15:31:52'),(102,'PC2prCv5UII8892P5Ri2Ri3PRO9KXEXJ4E2X.jpg',16,'2018-06-17 15:31:52','2018-06-17 15:31:52'),(103,'jHLcXNAQwTss4vCagiQFJJUuE6rBgY8u9Hw3.jpg',16,'2018-06-17 15:31:52','2018-06-17 15:31:52');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(250) DEFAULT NULL,
  `Alt` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `Path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'TestTitle','test','2018-05-26 10:02:25','2018-05-31 19:35:59','jbZjfNls22mcMbF4jNgyyaUd49W5jylomYco.jpg'),(2,'TestTitle','test','2018-06-13 14:26:07','2018-06-13 14:26:07','A5LLMPR0TD53I19mvekFUg6o5qAwRcnS3SZS.jpg'),(3,'slider','slider','2018-06-22 17:17:08','2018-06-22 17:17:08','z9aZ4MmEjl486qCvPIAWxAyiRhBUtR79U6v8.jpg'),(4,'slider-2','slider-2','2018-06-22 17:17:29','2018-06-22 17:17:29','7DROUtmzsVkPkFaYi76D4eZJ0tY1hnfhOCIp.jpg');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_slider`
--

DROP TABLE IF EXISTS `media_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sliderId` int(11) DEFAULT NULL,
  `mediaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_slider_sliderId_slider_id` (`sliderId`),
  KEY `fk_media_slider_mediaId_media_id` (`mediaId`),
  CONSTRAINT `fk_media_slider_mediaId_media_id` FOREIGN KEY (`mediaId`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_media_slider_sliderId_slider_id` FOREIGN KEY (`sliderId`) REFERENCES `slider` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_slider`
--

LOCK TABLES `media_slider` WRITE;
/*!40000 ALTER TABLE `media_slider` DISABLE KEYS */;
INSERT INTO `media_slider` VALUES (16,10,3),(17,10,4);
/*!40000 ALTER TABLE `media_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(4,'2018_06_12_162221_create_shipping_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `FirstName` varchar(250) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `eMail` varchar(250) DEFAULT NULL,
  `Telephone` varchar(250) DEFAULT NULL,
  `Fax` varchar(250) DEFAULT NULL,
  `Company` varchar(250) DEFAULT NULL,
  `Address1` text,
  `Address2` text,
  `City` varchar(250) DEFAULT NULL,
  `Country` varchar(250) DEFAULT NULL,
  `Region` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL,
  `Postcode` varchar(250) DEFAULT NULL,
  `Comments` longtext,
  `Shipping` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userId_users_id` (`userId`),
  CONSTRAINT `fk_userId_users_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (14,3,'test','test','test@test.com','test','test','test','test','test','test',NULL,NULL,'2018-06-05 11:39:41','2018-06-05 11:39:41','','test',NULL,NULL),(15,3,'test','test','test@test.com','0000000000','test','test','test','test','test',NULL,NULL,'2018-06-12 17:46:11','2018-06-12 17:46:11','','0000',NULL,NULL),(17,3,'qqqq','qqqq','test@test.com','00000000000',NULL,'qqq','qqq','qqq','qq',NULL,NULL,'2018-06-12 17:53:51','2018-06-12 17:53:51','','0000',NULL,NULL),(18,3,'qqqq','qqqq','test@test.com','0000000000','test','qqq','qqq','qqq','qq',NULL,NULL,'2018-06-12 17:55:07','2018-06-12 17:55:07','','0000',NULL,NULL),(19,3,'qqqq','qqqq','test@test.com','000000000000',NULL,'qqq','qqq','qqq','qq',NULL,NULL,'2018-06-12 17:56:41','2018-06-12 17:56:41','','0000',NULL,NULL),(20,3,'qqqq','qqqq','test@test.com','00000000',NULL,'qqq','qqq','qqq','qq',NULL,NULL,'2018-06-12 18:01:08','2018-06-12 18:01:08','','0000','test',NULL),(21,3,'qqqq','qqqq','test@gmail.com','000000',NULL,'qqq','qqq','qqq','qq','test','qq','2018-06-12 18:23:56','2018-06-12 18:23:56','','0000','test',4.99),(22,3,'qqqq','qqqq','test@gmail.com','000000',NULL,'qqq','qqq','qqq','qq','test','qq','2018-06-12 18:29:48','2018-06-12 18:29:48','','0000','test',4.99),(23,3,'coupon','coupon','coupon','coupon','coupon','coupon','coupon','coupon','coupon','coupon','coupon','2018-06-21 18:38:31','2018-06-21 18:38:31','','coupon','coupon',4.99),(32,999,'coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','coupon_today','2018-06-22 10:17:27','2018-06-22 10:17:27','','coupon_today','coupon_today',4.99),(33,3,'Coupon','Coupon','Coupon','Coupon','Coupon','Coupon','qqq','qqq','qq','Coupon','qq','2018-06-22 13:31:38','2018-06-22 13:31:38','','0000','Coupon',4.99),(34,3,'Coupon','Coupon','Coupon','Coupon','Coupon','Coupon','qqq','qqq','qq','Coupon','qq','2018-06-22 13:32:24','2018-06-22 13:32:24','','0000','Coupon',4.99),(35,999,'test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','test_order_mail','2018-06-23 17:39:51','2018-06-23 17:39:51','','test_order_mail','test_order_mail',4.99),(36,999,'$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','$coupon','2018-06-23 17:50:47','2018-06-23 17:50:47','','$coupon','$coupon',4.99),(37,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 17:52:35','2018-06-23 17:52:35','','order_mail','order_mail',4.99),(38,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 17:52:55','2018-06-23 17:52:55','','order_mail','order_mail',4.99),(39,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 17:53:10','2018-06-23 17:53:10','','order_mail','order_mail',4.99),(40,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 18:00:28','2018-06-23 18:00:28','','order_mail','order_mail',4.99),(41,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 18:05:00','2018-06-23 18:05:00','','order_mail','order_mail',4.99),(42,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 18:05:36','2018-06-23 18:05:36','','order_mail','order_mail',4.99),(43,999,'order_mail','order_mail','order@test.com','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','order_mail','2018-06-23 18:06:15','2018-06-23 18:06:15','','order_mail','order_mail',4.99),(44,3,'test','test','test@test.com','test','test','test','test','test','test','test','test','2018-06-23 18:27:21','2018-06-23 18:27:21','','test','test',4.99),(45,3,'test','test','test@test.com','test','test','test','test','test','test','test','test','2018-06-23 18:29:28','2018-06-23 18:29:28','','test','test',4.99),(46,3,'test','test','test@test.com','test','test','test','test','test','test','test','test','2018-06-23 18:36:15','2018-06-23 18:36:15','','test','test',4.99),(47,3,'test','test','test@test.com','test','test','test','test','test','test','test','test','2018-06-23 18:37:03','2018-06-23 18:37:03','','test','test',4.99),(48,3,'test','test','test@test.com','test','test','test','test','test','test','test','test','2018-06-23 18:38:09','2018-06-23 18:38:09','','test','test',4.99),(49,3,'qqqq','qqqq','test@gmail.com','test',NULL,'qqq','qqq','qqq','qq','test','qq','2018-06-23 18:50:43','2018-06-23 18:50:43','','0000','test',4.99);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text,
  `price` decimal(10,0) NOT NULL,
  `inStock` bit(1) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categoryId_category` (`categoryId`),
  CONSTRAINT `fk_categoryId_category` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'TestTitle','test',123,'','',12,'red',19,'2018-06-13 18:07:17','2018-06-03 13:33:28'),(15,'TestTitle','test',12,'','',1,'red',18,'2018-06-03 17:09:12','2018-06-03 17:09:12'),(16,'test3','test3',100,'','',100,'red',35,'2018-06-17 15:31:52','2018-06-17 15:31:52');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reduction`
--

DROP TABLE IF EXISTS `reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `data_end` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reduction`
--

LOCK TABLES `reduction` WRITE;
/*!40000 ALTER TABLE `reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(250) NOT NULL DEFAULT 'User',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_roleName_uindex` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'User','2018-05-14 13:18:34',NULL),(2,'Admin','2018-05-14 15:19:10',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sliderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sliderId_slider_id` (`sliderId`),
  CONSTRAINT `fk_sliderId_slider_id` FOREIGN KEY (`sliderId`) REFERENCES `slider` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,'Standart Shipping',4.99,'2018-06-12 13:58:20','2018-06-12 14:22:44');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sliderName` varchar(250) DEFAULT NULL,
  `sliderContent` text,
  `show` bit(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `productUrl` varchar(250) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (10,'slider2','<div class=\"center\"><a href=\"/product/14\" type=\"button\" class=\"btn btn-outline-white\">Buy now <i class=\"fa fa-diamond ml-1\"></i></a></div>','','2018-05-26 12:22:05','2018-06-22 18:22:45',NULL,'#c0c0c0');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_roleId_roles_id` (`roleId`),
  CONSTRAINT `fk_roleId_roles_id` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'test','testtest@gmail.com','$2y$10$Dnu1tPWUCaUIE1Pa0Zovr.EgGcQy.vzlq3XhuXKxaONIk6G7JKKVO','LNmp5kLBreoZPay5aVPPKek0I1ho4qMtDzNE279Pxa1yjyyAcfugT1QDzsyb','2018-05-14 07:41:51','2018-05-14 07:41:51',1,''),(3,'admin','admin@admin.com','$2y$10$Dnu1tPWUCaUIE1Pa0Zovr.EgGcQy.vzlq3XhuXKxaONIk6G7JKKVO','FtrR9yXxfxY2TA1TBOf1FNzYvvBE726x5NTlrP4gajz0eJ9H11ndvwUxHxas','2018-05-14 12:20:13','2018-05-14 12:20:16',2,''),(999,'guest','guest@guest.com','$2y$10$Dnu1tPWUCaUIE1Pa0Zovr.EgGcQy.vzlq3XhuXKxaONIk6G7JKKVO',NULL,NULL,'2018-06-22 10:11:33',1,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wish_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wish_list_productId_products_id` (`productId`),
  KEY `fk_wish_list_userId_users_id` (`userId`),
  CONSTRAINT `fk_wish_list_productId_products_id` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_wish_list_userId_users_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_list`
--

LOCK TABLES `wish_list` WRITE;
/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-26 20:47:24
