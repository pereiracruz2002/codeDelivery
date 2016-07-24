-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: codedelivery
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.12.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'blanditiis','2016-07-24 02:52:58','2016-07-24 02:52:58'),(2,'hic','2016-07-24 02:52:58','2016-07-24 02:52:58'),(3,'molestias','2016-07-24 02:52:58','2016-07-24 02:52:58'),(4,'dolores','2016-07-24 02:52:58','2016-07-24 02:52:58'),(5,'veniam','2016-07-24 02:52:58','2016-07-24 02:52:58'),(6,'quia','2016-07-24 02:52:58','2016-07-24 02:52:58'),(7,'voluptas','2016-07-24 02:52:58','2016-07-24 02:52:58'),(8,'necessitatibus','2016-07-24 02:52:58','2016-07-24 02:52:58'),(9,'quis','2016-07-24 02:52:58','2016-07-24 02:52:58'),(10,'et','2016-07-24 02:52:58','2016-07-24 02:52:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `clients_user_id_foreign` (`user_id`),
  CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,1,'902-520-0674 x54051','3384 Mitchell Manors\nHilpertton, VT 02277-2640','New Gabrielborough','Mississippi','27911-3785','2016-07-24 02:52:58','2016-07-24 02:52:58'),(2,2,'+1-806-569-0768','9714 Howell Fort Suite 751\nPort Mariannabury, CA 18308','Tremblayshire','Alabama','89527-0811','2016-07-24 02:52:58','2016-07-24 02:52:58'),(3,3,'951-627-1422 x9400','627 Manley Branch Apt. 980\nMullerchester, AK 23834','Ziemestad','Missouri','24841-2200','2016-07-24 02:52:58','2016-07-24 02:52:58'),(4,4,'+1 (398) 973-4794','34393 Nicola Square\nEast Anderson, ME 36540','Kingmouth','Iowa','89342-1009','2016-07-24 02:52:58','2016-07-24 02:52:58'),(5,5,'1-412-391-4216','2680 Alessandra Square\nLake Jarrelltown, DE 29613-0913','Port Kaleigh','Louisiana','44516','2016-07-24 02:52:58','2016-07-24 02:52:58'),(6,6,'+1 (705) 256-0557','1429 Miller Junction Suite 036\nBennieland, CT 46274','Nolanside','North Dakota','62336-1614','2016-07-24 02:52:58','2016-07-24 02:52:58'),(7,7,'754.939.1833','13885 Kitty Club Suite 094\nSouth Stephanyborough, MD 45768-2225','Ernserburgh','Maryland','45288-6370','2016-07-24 02:52:58','2016-07-24 02:52:58'),(8,8,'(959) 776-7763 x61672','6718 Carrie Key\nWest Marlin, AZ 48764-2287','Ladariusburgh','California','79192','2016-07-24 02:52:58','2016-07-24 02:52:58'),(9,9,'1-604-876-5376 x806','97293 Thurman Light\nCurtisville, IN 24182-0231','Michelchester','North Carolina','80091','2016-07-24 02:52:58','2016-07-24 02:52:58'),(10,10,'1-346-795-6824 x4976','88279 Jaylin Pass\nLake Orpha, DE 16881-4712','Braunborough','Rhode Island','27045','2016-07-24 02:52:58','2016-07-24 02:52:58');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_07_23_223632_create_categories_table',1),('2016_07_23_225905_create_products_table',1),('2016_07_23_233336_create_clients_table',1),('2016_07_23_235605_create_orders_table',2),('2016_07_23_235712_create_order_items_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qtd` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `user_deliveryman_id` int(10) unsigned DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `orders_client_id_foreign` (`client_id`),
  KEY `orders_user_deliveryman_id_foreign` (`user_deliveryman_id`),
  CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `orders_user_deliveryman_id_foreign` FOREIGN KEY (`user_deliveryman_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'ut','Similique eos sunt delectus consequatur corporis nisi.',13.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(2,1,'maxime','Commodi officia aspernatur aliquam quae vero exercitationem tempora.',16.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(3,1,'molestiae','Sed provident impedit ab in non.',29.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(4,1,'iusto','Est eum sit aut in recusandae provident.',23.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(5,1,'deserunt','Quis recusandae dolores reprehenderit dolor esse et nesciunt.',32.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(6,1,'aut','Aut laboriosam non nesciunt et ut veritatis mollitia.',30.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(7,2,'sequi','Maiores pariatur omnis et qui id.',32.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(8,2,'autem','Ad doloremque atque vel accusantium dicta fugit.',50.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(9,2,'velit','Eos debitis quisquam et at et in aperiam omnis.',36.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(10,2,'et','Aut voluptatem sed enim omnis aut non.',49.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(11,2,'adipisci','Optio facilis sed possimus.',16.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(12,2,'earum','Incidunt natus beatae enim adipisci laboriosam.',39.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(13,3,'qui','Placeat enim autem autem nam qui odio.',10.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(14,3,'est','Fuga nam doloremque quo nulla.',35.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(15,3,'cumque','Corrupti rem asperiores veritatis reiciendis natus unde est.',10.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(16,3,'natus','Iure aut dolores est modi ea dolorem.',16.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(17,3,'est','Laboriosam alias quo est numquam sapiente tenetur.',48.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(18,3,'porro','Ea laboriosam ad et fugiat eos sed.',42.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(19,4,'enim','Provident voluptatem voluptas vel hic eius necessitatibus.',50.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(20,4,'ipsum','Quo adipisci aliquid fugiat ea.',14.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(21,4,'voluptas','Laborum cumque soluta itaque possimus.',37.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(22,4,'error','Voluptas iste et facere cum.',39.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(23,4,'culpa','Architecto accusamus voluptatem rerum illo.',26.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(24,4,'dolores','Nam culpa sequi consectetur sed.',32.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(25,5,'debitis','Molestiae qui perspiciatis laudantium commodi velit et ut.',27.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(26,5,'id','Et doloremque rerum quas ducimus.',22.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(27,5,'facere','Molestiae in ipsa quaerat fugit voluptatum quae aut.',50.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(28,5,'et','Illo labore voluptatibus numquam nihil hic repellat.',25.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(29,5,'autem','Suscipit quia tenetur qui.',37.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(30,5,'maxime','Sed ut consectetur qui ad.',11.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(31,6,'ut','Quo quia aut officia impedit rem nobis sint.',44.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(32,6,'eius','In eos error saepe delectus quis tempore.',47.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(33,6,'ipsa','Beatae iste dolor ab sunt veniam.',19.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(34,6,'aut','Cumque doloribus provident ex iusto ab.',34.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(35,6,'nemo','Velit suscipit eius repudiandae natus.',22.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(36,6,'ab','Non et et possimus at.',28.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(37,7,'expedita','Illo blanditiis ut impedit dicta est.',14.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(38,7,'quia','Unde maiores exercitationem incidunt suscipit repellendus atque.',30.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(39,7,'et','Iste quisquam velit quod quo magnam.',49.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(40,7,'ad','Tenetur suscipit consequatur iure hic in aut aut qui.',18.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(41,7,'voluptatem','Vero eum necessitatibus ut provident.',47.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(42,7,'accusamus','Consectetur dicta placeat maxime.',26.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(43,8,'incidunt','Provident modi omnis nam iure.',30.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(44,8,'maiores','Qui sequi et eaque porro possimus.',28.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(45,8,'delectus','Et nihil fugiat deserunt earum.',27.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(46,8,'libero','Rerum reiciendis rerum in debitis eaque magni.',32.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(47,8,'non','Qui doloremque adipisci corporis et incidunt.',31.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(48,8,'quidem','Dignissimos necessitatibus exercitationem mollitia.',21.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(49,9,'quod','Sunt dolores eius tempora omnis.',46.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(50,9,'rerum','Ex odit odit vitae impedit nemo quo recusandae.',22.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(51,9,'sunt','Inventore possimus quis doloribus non quod autem quibusdam iste.',25.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(52,9,'eius','Odio quia et expedita molestiae voluptas.',16.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(53,9,'veritatis','Vel numquam nisi explicabo rerum voluptate.',37.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(54,9,'voluptatem','Sequi libero veritatis ratione.',46.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(55,10,'numquam','Facilis aut non nisi.',36.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(56,10,'optio','Rerum ut ea sunt consequatur dicta non minima.',24.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(57,10,'sed','Perspiciatis illum sit corrupti dolor sapiente omnis ad.',24.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(58,10,'quas','Repudiandae officia necessitatibus error neque veniam voluptatum tempora.',46.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(59,10,'rerum','Molestiae incidunt voluptas corrupti sit aut quam aspernatur.',33.00,'2016-07-24 02:52:59','2016-07-24 02:52:59'),(60,10,'enim','Repellat itaque explicabo ipsa beatae eos quae non.',39.00,'2016-07-24 02:52:59','2016-07-24 02:52:59');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Cecilia Gottlieb','abeatty@example.com','$2y$10$BJP2MZy/1YUBWcuL6KR9Ce7hAA0OeSLsb2NS.4q0OSoOBtSfIQ3Im','TH5w5PVwrk','2016-07-24 02:52:58','2016-07-24 02:52:58'),(2,'Prof. Raul Rutherford','xyundt@example.net','$2y$10$Td8pNSKMjuTqnupFv.eBzuV4XB8aeDeeQbDT/G3lUh/LA1WQjn6Rq','L7rB8L6Y3w','2016-07-24 02:52:58','2016-07-24 02:52:58'),(3,'Adrien Braun','eortiz@example.org','$2y$10$E917Dys66sOKjlD5S9AlOu69t79NMPV/7UlKreUWjdtv/fYzbWwSy','9nl6BJlpSY','2016-07-24 02:52:58','2016-07-24 02:52:58'),(4,'Earline Kub','marge10@example.net','$2y$10$QK5iOAz/jBsTcUxpovih7umpK8Q7L6TzikZ0j1/y3BdkMRBtf6xJC','1G2lcbEi6C','2016-07-24 02:52:58','2016-07-24 02:52:58'),(5,'Dr. Stephan Upton','anderson.myah@example.org','$2y$10$ff/HjUIdf4uBvqNeox2kEOiMvC/41WpF0.S/zaXfLK6aq.L9gBM.u','fNPl7to3Xn','2016-07-24 02:52:58','2016-07-24 02:52:58'),(6,'Odessa Kassulke','ogutkowski@example.net','$2y$10$D0eVSHlcYgA1b9RrCgK5/O6wS56SN1ww5r48ic4ukXNoO0NBkuT36','vIoVuI0LOb','2016-07-24 02:52:58','2016-07-24 02:52:58'),(7,'Jovany Emmerich','madie23@example.net','$2y$10$yc4hXMVBQydBCy6aFaucneBx5Z8vB4KCNbPRMPNpyKANoqHTa2E2y','XeseiEsspc','2016-07-24 02:52:58','2016-07-24 02:52:58'),(8,'Margaret Harber','adelle.balistreri@example.com','$2y$10$V4sYsDDjHAXIbiSdeAtdHuM4hXMJDDMNzrxZTecYAFZV//vSEnqaS','lUQ57Ou4v5','2016-07-24 02:52:58','2016-07-24 02:52:58'),(9,'Micaela Wolff','stehr.lewis@example.org','$2y$10$rpanayq/6l7sQB0hH6SN1uG5ysDWBgdn46qKEB/0j29q/yVCUs8Je','T7CkIUzsZT','2016-07-24 02:52:58','2016-07-24 02:52:58'),(10,'Wiley Bode','annabel63@example.net','$2y$10$TqNUqg6BJqwkZuMQ5Ur9o.80A.oLZa4ZHKWUqPSCnCvHYSzc0R4uG','atRLv2gGq9','2016-07-24 02:52:58','2016-07-24 02:52:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-24 15:32:15
