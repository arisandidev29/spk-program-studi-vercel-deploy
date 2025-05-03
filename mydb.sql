-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: DB_MYPATH
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alternatives`
--

DROP TABLE IF EXISTS `alternatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternatives` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternatives`
--

LOCK TABLES `alternatives` WRITE;
/*!40000 ALTER TABLE `alternatives` DISABLE KEYS */;
INSERT INTO `alternatives` VALUES (1,'Si','Sistem Informasi','2025-05-03 00:04:56','2025-05-03 00:04:56'),(2,'MI','Manajemen Informatika','2025-05-03 00:05:08','2025-05-03 00:05:08');
/*!40000 ALTER TABLE `alternatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bobots`
--

DROP TABLE IF EXISTS `bobots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bobots` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `normalisasi` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bobots`
--

LOCK TABLES `bobots` WRITE;
/*!40000 ALTER TABLE `bobots` DISABLE KEYS */;
INSERT INTO `bobots` VALUES (1,'W1','penting',50,0.45,'2025-05-03 00:04:00','2025-05-03 00:04:35'),(2,'W2','lumayan penting',40,0.36,'2025-05-03 00:04:20','2025-05-03 00:04:35'),(3,'W3','kurang',20,0.18,'2025-05-03 00:04:35','2025-05-03 00:04:35');
/*!40000 ALTER TABLE `bobots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('5c785c036466adea360111aa28563bfd556b5fba','i:1;',1746262344),('5c785c036466adea360111aa28563bfd556b5fba:timer','i:1746262344;',1746262344);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `hasil_rekomendasis`
--

DROP TABLE IF EXISTS `hasil_rekomendasis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hasil_rekomendasis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `alternative_id` bigint unsigned NOT NULL,
  `vektor_v` double DEFAULT NULL,
  `ranking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hasil_rekomendasis_user_id_alternative_id_unique` (`user_id`,`alternative_id`),
  KEY `hasil_rekomendasis_alternative_id_foreign` (`alternative_id`),
  CONSTRAINT `hasil_rekomendasis_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hasil_rekomendasis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_rekomendasis`
--

LOCK TABLES `hasil_rekomendasis` WRITE;
/*!40000 ALTER TABLE `hasil_rekomendasis` DISABLE KEYS */;
INSERT INTO `hasil_rekomendasis` VALUES (3,11,2,0.54,'1','2025-05-03 00:24:15','2025-05-03 00:24:15'),(4,11,1,0.46,'2','2025-05-03 00:24:15','2025-05-03 00:24:15');
/*!40000 ALTER TABLE `hasil_rekomendasis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kriterias`
--

DROP TABLE IF EXISTS `kriterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kriterias` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int DEFAULT NULL,
  `kode_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kriteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `bobot_id` bigint unsigned DEFAULT NULL,
  `kategori` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kriterias_kode_kriteria_unique` (`kode_kriteria`),
  KEY `kriterias_bobot_id_foreign` (`bobot_id`),
  CONSTRAINT `kriterias_bobot_id_foreign` FOREIGN KEY (`bobot_id`) REFERENCES `bobots` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kriterias`
--

LOCK TABLES `kriterias` WRITE;
/*!40000 ALTER TABLE `kriterias` DISABLE KEYS */;
INSERT INTO `kriterias` VALUES ('9ed25bc2-1224-45cf-b960-ab9efe6a125f',1,'C1','Minat Dan Bakat','minat dan bakat dari calon mahasiswa, apakah kamu memiliki minat atau bakat dalam program studi berikut ?',NULL,2,'benefit','2025-05-03 00:06:37','2025-05-03 00:06:37');
/*!40000 ALTER TABLE `kriterias` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_03_21_015356_create_tokens_table',1),(5,'2025_03_23_193438_create_alternatives_table',1),(6,'2025_03_23_193449_create_bobots_table',1),(7,'2025_03_27_094503_create_kriterias_table',1),(8,'2025_03_31_112739_create_pilihan_jawabans_table',1),(9,'2025_04_01_110332_update_foreign_key_on_pilihan_jawabans_table',1),(10,'2025_04_04_075641_update_foreign_key_kriteria',1),(11,'2025_04_05_062248_create_user_jawabans_table',1),(12,'2025_04_06_110812_update_add_unique_column_in_user_jawabans_table',1),(13,'2025_04_07_060615_create_vektor_s_table',1),(14,'2025_04_08_034006_create_hasil_rekomendasis_table',2),(15,'2025_04_12_072444_add_cascade_on_foreign_column_user_in_table_user_jawabans',2),(16,'2025_05_03_091123_modify_column_rangking_in_hasil_rekomedasis_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilihan_jawabans`
--

DROP TABLE IF EXISTS `pilihan_jawabans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilihan_jawabans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int NOT NULL,
  `id_kriteria` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pilihan_jawabans_id_kriteria_foreign` (`id_kriteria`),
  CONSTRAINT `pilihan_jawabans_id_kriteria_foreign` FOREIGN KEY (`id_kriteria`) REFERENCES `kriterias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilihan_jawabans`
--

LOCK TABLES `pilihan_jawabans` WRITE;
/*!40000 ALTER TABLE `pilihan_jawabans` DISABLE KEYS */;
INSERT INTO `pilihan_jawabans` VALUES (1,'Ya, Sangat',90,'9ed25bc2-1224-45cf-b960-ab9efe6a125f','2025-05-03 00:06:37','2025-05-03 00:06:37'),(2,'lumayan, saya sedikit terampil dalam program ini',80,'9ed25bc2-1224-45cf-b960-ab9efe6a125f','2025-05-03 00:06:37','2025-05-03 00:06:37'),(3,'kurang sih',70,'9ed25bc2-1224-45cf-b960-ab9efe6a125f','2025-05-03 00:06:37','2025-05-03 00:06:37'),(4,'kurang sekali',60,'9ed25bc2-1224-45cf-b960-ab9efe6a125f','2025-05-03 00:06:37','2025-05-03 00:06:37'),(5,'tidak ada',50,'9ed25bc2-1224-45cf-b960-ab9efe6a125f','2025-05-03 00:06:37','2025-05-03 00:06:37');
/*!40000 ALTER TABLE `pilihan_jawabans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('mOl9Rs6wt1n99aS13GCuQygKysVzqKWv6XUReAAP',11,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDRFa05nVVFZSFdPRzFPUFoxRTVqVTlobHE2eWc4TjlldzNtRktzdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7fQ==',1746264367),('tQd6AVjuMq2duQTila7R3Pbr1F8kw6cSWiooeDcd',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0lmaFFqRmNUR2Z6QW1KQlJ0cUtTQ1RRZE5RNHJaVnpic3JnTVIwdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1746261698);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,'liYYdy','2025-05-02 23:46:15','2025-05-02 23:46:15');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jawabans`
--

DROP TABLE IF EXISTS `user_jawabans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_jawabans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `kriteria_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_id` bigint unsigned NOT NULL,
  `pilihan_jawaban_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_jawabans_user_id_kriteria_id_alternative_id_unique` (`user_id`,`kriteria_id`,`alternative_id`),
  KEY `user_jawabans_kriteria_id_foreign` (`kriteria_id`),
  KEY `user_jawabans_alternative_id_foreign` (`alternative_id`),
  KEY `user_jawabans_pilihan_jawaban_id_foreign` (`pilihan_jawaban_id`),
  CONSTRAINT `user_jawabans_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`),
  CONSTRAINT `user_jawabans_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriterias` (`id`),
  CONSTRAINT `user_jawabans_pilihan_jawaban_id_foreign` FOREIGN KEY (`pilihan_jawaban_id`) REFERENCES `pilihan_jawabans` (`id`),
  CONSTRAINT `user_jawabans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jawabans`
--

LOCK TABLES `user_jawabans` WRITE;
/*!40000 ALTER TABLE `user_jawabans` DISABLE KEYS */;
INSERT INTO `user_jawabans` VALUES (5,11,'9ed25bc2-1224-45cf-b960-ab9efe6a125f',1,4,'2025-05-03 00:24:15','2025-05-03 00:24:15'),(6,11,'9ed25bc2-1224-45cf-b960-ab9efe6a125f',2,1,'2025-05-03 00:24:15','2025-05-03 00:24:15');
/*!40000 ALTER TABLE `user_jawabans` ENABLE KEYS */;
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
  `profile_pic` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alexanne Mante','mconsidine@example.com',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','jLgOkpLABT','2025-04-20 16:09:09','2025-04-20 16:09:09'),(2,'Nelle Lynch','lenore32@example.org',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','osyJdtPscS','2025-04-20 16:09:09','2025-04-20 16:09:09'),(3,'Melisa Reilly','kenneth84@example.org',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','FSIQmYL1fw','2025-04-20 16:09:09','2025-04-20 16:09:09'),(4,'Percy Gleason','maida.haley@example.com',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','N8A8UKzHbA','2025-04-20 16:09:09','2025-04-20 16:09:09'),(5,'Daisy Homenick','julie.swaniawski@example.org',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','Xeltvbd2Iq','2025-04-20 16:09:09','2025-04-20 16:09:09'),(6,'Stacy Morar','spaucek@example.com',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','KYmdsA9JFe','2025-04-20 16:09:09','2025-04-20 16:09:09'),(7,'Rey Murray','scotty14@example.net',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','PclNALlUkk','2025-04-20 16:09:09','2025-04-20 16:09:09'),(8,'Jarred Jacobson','uharber@example.net',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','IfYr0VfD2O','2025-04-20 16:09:09','2025-04-20 16:09:09'),(9,'Prof. Theron Wiegand','whauck@example.net',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','qB0tpNl6ge','2025-04-20 16:09:09','2025-04-20 16:09:09'),(10,'Elena Schmeler','weissnat.alvina@example.com',NULL,'users','2025-04-20 16:09:09','$2y$12$PIQhzIiiEvB9Wi58dQ2VJuXcZ6QYpxe/xb5UlGek8mEh3JkWl/PhK','6bMEDjKkHp','2025-04-20 16:09:09','2025-04-20 16:09:09'),(11,'arisandi','arisandikader@gmai.com','users/arisandi-5vNaYF-avatar.png','users',NULL,'$2y$12$.Ei1L4sq6FFBixKtWx7n4OYQqeh.VsNpg.Kr18RbQ3oGFOXhfzGSi','rRNkDPORlnd5p2xqNXGBYQM5XbYJixBiYPDyVkQerKQOWNVEM4o9J2RuIt4g','2025-05-02 23:51:30','2025-05-02 23:51:30'),(12,'Admin','admin@gmail.com',NULL,'admin',NULL,'$2y$12$lecdZQYi5oAv7/7XqP6fkO9ZseWH5d2HQ0gd/BLwT/kvL/Mtm5SLu',NULL,'2025-05-02 23:55:23','2025-05-02 23:55:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vektor_s`
--

DROP TABLE IF EXISTS `vektor_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vektor_s` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `alternative_id` bigint unsigned NOT NULL,
  `vektor_s` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vektor_s_user_id_foreign` (`user_id`),
  KEY `vektor_s_alternative_id_foreign` (`alternative_id`),
  CONSTRAINT `vektor_s_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vektor_s_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vektor_s`
--

LOCK TABLES `vektor_s` WRITE;
/*!40000 ALTER TABLE `vektor_s` DISABLE KEYS */;
INSERT INTO `vektor_s` VALUES (5,11,1,4.37,'2025-05-03 00:24:15','2025-05-03 00:24:15'),(6,11,2,5.05,'2025-05-03 00:24:15','2025-05-03 00:24:15');
/*!40000 ALTER TABLE `vektor_s` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 19:07:38
