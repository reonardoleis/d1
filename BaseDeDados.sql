CREATE DATABASE  IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'2020-07-10 20:39:08','2020-07-10 22:12:07','Até 30 anos',1),(2,'2020-07-10 20:39:24','2020-07-10 22:12:10','De 30 a 50 anos',1),(3,'2020-07-10 20:39:30','2020-07-10 22:12:11','De 50 a 65 anos',1),(4,'2020-07-10 20:39:36','2020-07-10 22:12:14','Acima de 65 anos',1),(5,'2020-07-10 21:45:57','2020-07-10 21:45:57','1',10),(6,'2020-07-10 21:45:58','2020-07-10 21:45:58','2',10),(7,'2020-07-10 21:45:58','2020-07-10 21:45:58','3',10),(8,'2020-07-10 21:45:58','2020-07-10 21:45:58','4',10),(9,'2020-07-10 22:12:51','2020-07-10 22:12:51','INSS',11),(10,'2020-07-10 22:12:51','2020-07-10 22:12:51','SIAPE',11),(11,'2020-07-10 22:12:52','2020-07-10 22:12:52','Forças Armadas',11),(12,'2020-07-10 22:12:52','2020-07-10 22:12:52','Outros',11),(13,'2020-07-10 22:13:25','2020-07-10 22:13:25','Até 2 salários mínimos',12),(14,'2020-07-10 22:13:25','2020-07-10 22:13:25','De 2 a 4 salários mínimos',12),(15,'2020-07-10 22:13:25','2020-07-10 22:13:25','De 4 a 6 salários mínimos',12),(16,'2020-07-10 22:13:25','2020-07-10 22:13:25','Acima de 6 salários mínimos',12),(17,'2020-07-10 22:14:33','2020-07-10 22:14:33','Pagar contas',13),(18,'2020-07-10 22:14:34','2020-07-10 22:14:34','Reformar a casa',13),(19,'2020-07-10 22:14:34','2020-07-10 22:14:34','Comprar um carro',13),(20,'2020-07-10 22:14:34','2020-07-10 22:14:34','Outros motivos',13),(21,'2020-07-10 23:57:46','2020-07-10 23:57:46','1',14),(22,'2020-07-10 23:57:46','2020-07-10 23:57:46','2',14),(23,'2020-07-10 23:57:46','2020-07-10 23:57:46','4',14),(24,'2020-07-10 23:57:46','2020-07-10 23:57:46','3',14);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_07_10_163432_create_questions_table',2),(5,'2020_07_10_165222_update_questions_table',3),(6,'2020_07_10_170814_update_questions_table2',4),(7,'2020_07_10_170857_update_questions_table3',5),(8,'2020_07_10_170931_create_answers_table',6),(9,'2020_07_10_192800_create_user_entries_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'2020-07-10 19:49:00','2020-07-10 22:12:00','Qual sua faixa etária'),(11,'2020-07-10 22:12:50','2020-07-10 22:12:50','Qual seu convênio'),(12,'2020-07-10 22:13:24','2020-07-10 22:13:24','Qual sua faixa salarial'),(13,'2020-07-10 22:14:33','2020-07-10 22:14:33','Por que você realizou o empréstimo');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_entries`
--

DROP TABLE IF EXISTS `user_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_id` int NOT NULL,
  `answer_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_entries`
--

LOCK TABLES `user_entries` WRITE;
/*!40000 ALTER TABLE `user_entries` DISABLE KEYS */;
INSERT INTO `user_entries` VALUES (1,'2020-07-10 22:38:49','2020-07-10 22:38:49',1,1),(2,'2020-07-10 22:38:49','2020-07-10 22:38:49',11,9),(3,'2020-07-10 22:38:49','2020-07-10 22:38:49',12,13),(4,'2020-07-10 22:38:50','2020-07-10 22:38:50',13,17),(5,'2020-07-10 22:58:48','2020-07-10 22:58:48',1,2),(6,'2020-07-10 22:58:49','2020-07-10 22:58:49',11,9),(7,'2020-07-10 22:58:49','2020-07-10 22:58:49',12,13),(8,'2020-07-10 22:58:49','2020-07-10 22:58:49',13,17),(9,'2020-07-10 22:59:02','2020-07-10 22:59:02',1,3),(10,'2020-07-10 22:59:02','2020-07-10 22:59:02',11,9),(11,'2020-07-10 22:59:02','2020-07-10 22:59:02',12,13),(12,'2020-07-10 22:59:02','2020-07-10 22:59:02',13,17),(13,'2020-07-10 23:51:53','2020-07-10 23:51:53',1,3),(14,'2020-07-10 23:51:53','2020-07-10 23:51:53',11,10),(15,'2020-07-10 23:51:53','2020-07-10 23:51:53',12,14),(16,'2020-07-10 23:51:53','2020-07-10 23:51:53',13,18),(17,'2020-07-11 00:00:08','2020-07-11 00:00:08',1,1),(18,'2020-07-11 00:00:08','2020-07-11 00:00:08',11,9),(19,'2020-07-11 00:00:08','2020-07-11 00:00:08',12,13),(20,'2020-07-11 00:00:08','2020-07-11 00:00:08',13,20);
/*!40000 ALTER TABLE `user_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'leonardo reis','admin@gmail.com',NULL,'123',NULL,'2020-07-07 19:31:17','2020-07-07 19:36:37'),(2,'joao','joao@gmail.com',NULL,'joao123',NULL,'2020-07-07 19:33:20','2020-07-07 19:33:20');
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

-- Dump completed on 2020-07-10 18:21:32
