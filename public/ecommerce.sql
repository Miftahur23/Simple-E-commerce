
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
DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Dr. Myrtice Wintheiser Sr.','iNNWlrWhIIHnaKB','2022-04-04 16:49:25','2022-04-04 16:49:25'),(2,'Dr. Kamille Miller','GeHruCILCV00C6R','2022-04-04 16:49:25','2022-04-04 16:49:25'),(3,'Jimmy Lind','2XAr17yMJCAs1LC','2022-04-04 16:49:25','2022-04-04 16:49:25'),(4,'Shemar Kuhn','v5j3E7BuI1rDt1Y','2022-04-04 16:49:25','2022-04-04 16:49:25'),(5,'Christop Nienow','DrE0v4OfIv9oKNv','2022-04-04 16:49:25','2022-04-04 16:49:25'),(6,'Dr. Samir Von','BNTbU0vBjfyvwqG','2022-04-04 16:49:25','2022-04-04 16:49:25'),(7,'Mr. Aidan Williamson IV','Srh11GA15tXSF3q','2022-04-04 16:49:25','2022-04-04 16:49:25'),(8,'Carolyn Russel','NtP4lrIzeaqd4Fg','2022-04-04 16:49:25','2022-04-04 16:49:25'),(9,'Ms. Ernestina Gulgowski','MmdtzwMuXuTlvSY','2022-04-04 16:49:25','2022-04-04 16:49:25'),(10,'Susan Schneider','B5fBSeae7Elj5Iz','2022-04-04 16:49:25','2022-04-04 16:49:25'),(11,'Ms. Callie Zieme PhD','cy5sSdFbh2qjt8n','2022-04-04 16:49:25','2022-04-04 16:49:25'),(12,'Melany Kiehn','urjLc93DIrGpcER','2022-04-04 16:49:25','2022-04-04 16:49:25'),(13,'Prof. Cecil Ebert','xtTBXs5DqTTVOwO','2022-04-04 16:49:25','2022-04-04 16:49:25'),(14,'Mrs. Beryl Pfeffer PhD','7Vj7OW97kXsZH46','2022-04-04 16:49:25','2022-04-04 16:49:25'),(15,'Hailee Miller','UyvBEYEbRqAAyuv','2022-04-04 16:49:25','2022-04-04 16:49:25'),(16,'Rose Strosin','KGilE9sStQf3jJ5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(17,'Blaze Bruen','mmUzwzGsy6BGFuE','2022-04-04 16:49:25','2022-04-04 16:49:25'),(18,'Miss Minerva Jones','KgREx2cLT5a57gF','2022-04-04 16:49:25','2022-04-04 16:49:25'),(19,'Aurore Jerde','68IoRRMHIXf2poi','2022-04-04 16:49:25','2022-04-04 16:49:25'),(20,'Arnold Price','BJ9huOMheUcPmBA','2022-04-04 16:49:25','2022-04-04 16:49:25'),(21,'Suzanne Kris Sr.','QJVFHEKZjWeFzbx','2022-04-04 16:49:25','2022-04-04 16:49:25'),(22,'Elisha Heathcote','bdTcPjpgYCmnMi2','2022-04-04 16:49:25','2022-04-04 16:49:25'),(23,'Prof. Orville Koelpin','Odm1N8kocoqzAWU','2022-04-04 16:49:25','2022-04-04 16:49:25'),(24,'Luisa Vandervort','8ScdXWt3jyR5oCg','2022-04-04 16:49:25','2022-04-04 16:49:25'),(25,'Dr. Rashawn Beahan','ZQ1nvfG8R7vUgrt','2022-04-04 16:49:25','2022-04-04 16:49:25'),(26,'Ms. Dakota Wilkinson IV','Mv1MuQ8Sk238tdA','2022-04-04 16:49:25','2022-04-04 16:49:25'),(27,'Genesis Gleichner','4sZgNANd18Y38PR','2022-04-04 16:49:25','2022-04-04 16:49:25'),(28,'Issac Schmeler','hV2SCpHw9HS1k8K','2022-04-04 16:49:25','2022-04-04 16:49:25'),(29,'Marina Langosh','7mb8Yq2Z44KgqEk','2022-04-04 16:49:25','2022-04-04 16:49:25'),(30,'Hugh McClure','pgz2JX92L1z2Bm8','2022-04-04 16:49:25','2022-04-04 16:49:25'),(31,'Dr. Rubie Maggio','paRB3umUKhHmiBz','2022-04-04 16:49:25','2022-04-04 16:49:25'),(32,'Elmo Kling','7CF5x7t4CjVoKkY','2022-04-04 16:49:25','2022-04-04 16:49:25'),(33,'Pierre Schiller','nHjALHjw177UE9p','2022-04-04 16:49:25','2022-04-04 16:49:25'),(34,'Jamir Dietrich','9Ucr46Og6MzBqRX','2022-04-04 16:49:25','2022-04-04 16:49:25'),(35,'Dr. Heber Hegmann','4l4ZaAfSwovCq8N','2022-04-04 16:49:25','2022-04-04 16:49:25'),(36,'Shad Dietrich DDS','flpb35a6LhlNDWi','2022-04-04 16:49:25','2022-04-04 16:49:25'),(37,'Gerardo Rowe III','4jnFIAHHnWnXcgi','2022-04-04 16:49:25','2022-04-04 16:49:25'),(38,'Abagail Huels III','sddgyanmWZQRMrW','2022-04-04 16:49:25','2022-04-04 16:49:25'),(39,'Kaleb Effertz','GYc2G1vtKRHdv4D','2022-04-04 16:49:25','2022-04-04 16:49:25'),(40,'Georgette Mertz','s2GYB4YjHQm3FQq','2022-04-04 16:49:25','2022-04-04 16:49:25'),(41,'Mr. Estevan Klein II','gJUGavqiltSR6V5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(42,'Sincere Yost','LIg9XsmlsmE7uP1','2022-04-04 16:49:25','2022-04-04 16:49:25'),(43,'Dr. Lonzo Murazik IV','Jsq4GOubZguHjeQ','2022-04-04 16:49:25','2022-04-04 16:49:25'),(44,'Stephen Feeney','Ve7dsCZpPQbQDH5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(45,'Lia Abbott','FlqcyEXgW8fXMXe','2022-04-04 16:49:25','2022-04-04 16:49:25'),(46,'Jalen Cremin','q8Twipun57YetZ5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(47,'Miss Malika Kutch Jr.','rD1nzTVDTlhT9jk','2022-04-04 16:49:25','2022-04-04 16:49:25'),(48,'Marquis Brakus','9bYZNdsDW1oCdwg','2022-04-04 16:49:25','2022-04-04 16:49:25'),(49,'Abel Stracke','zqcLzYiN7q3gxAf','2022-04-04 16:49:25','2022-04-04 16:49:25'),(50,'Ernest Yost','wjFSaUEgb2jtr8Q','2022-04-04 16:49:25','2022-04-04 16:49:25'),(51,'Helmer Stracke','lyFQNX3T7FwsXCr','2022-04-04 16:49:25','2022-04-04 16:49:25'),(52,'Zackery Corwin','yjqWjzCf3fytJk5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(53,'Bianka Williamson','POD4NVggeXQVsdk','2022-04-04 16:49:25','2022-04-04 16:49:25'),(54,'Cydney Jacobs','ZafeoKReYceKvf4','2022-04-04 16:49:25','2022-04-04 16:49:25'),(55,'Neva Littel MD','SMYYl2YoqFFreyM','2022-04-04 16:49:25','2022-04-04 16:49:25'),(56,'Dr. Harrison Zulauf','JnsHKeIgyp9raT0','2022-04-04 16:49:25','2022-04-04 16:49:25'),(57,'Gabe Schmeler','mRuPWkIBfJyu629','2022-04-04 16:49:25','2022-04-04 16:49:25'),(58,'Dr. Demarco Rogahn','6zkbzrZJkAKJ9kB','2022-04-04 16:49:25','2022-04-04 16:49:25'),(59,'Kory Jakubowski','kPGQs7ZJN6hwIAP','2022-04-04 16:49:25','2022-04-04 16:49:25'),(60,'Irving Jacobi','zPbCoLCqvOe4hUL','2022-04-04 16:49:25','2022-04-04 16:49:25'),(61,'Raymond Metz','hd2xbBwhiZayidy','2022-04-04 16:49:25','2022-04-04 16:49:25'),(62,'Mrs. Winifred Kovacek I','RlhwZYjyLesxmW5','2022-04-04 16:49:25','2022-04-04 16:49:25'),(63,'Aliza Thompson PhD','aIBLoH6oS1nw0zN','2022-04-04 16:49:25','2022-04-04 16:49:25'),(64,'Mrs. Christiana Tillman DDS','5jTSKqiPFbxVi0K','2022-04-04 16:49:25','2022-04-04 16:49:25'),(65,'Isai Shanahan','QdL4S3OEeIFe7v3','2022-04-04 16:49:25','2022-04-04 16:49:25'),(66,'Zane Lubowitz','8D5FpzQLKpoIKi7','2022-04-04 16:49:25','2022-04-04 16:49:25'),(67,'Shania Kozey IV','SrqbKMmBRLCEMaV','2022-04-04 16:49:26','2022-04-04 16:49:26'),(68,'Aidan Marquardt','rvgo0UrrsYzuAJD','2022-04-04 16:49:26','2022-04-04 16:49:26'),(69,'Elbert Beer','H7qcqZ7iKlCrKfr','2022-04-04 16:49:26','2022-04-04 16:49:26'),(70,'Mr. Raheem Senger','LccHpeLmZP1jTVO','2022-04-04 16:49:26','2022-04-04 16:49:26'),(71,'Vidal Terry','6Tidq6c1acUjTje','2022-04-04 16:49:26','2022-04-04 16:49:26'),(72,'Stevie Abshire','3i81m7K9VTkicUT','2022-04-04 16:49:26','2022-04-04 16:49:26'),(73,'Rhea Ebert','G4CaZTFAj4SvS6c','2022-04-04 16:49:26','2022-04-04 16:49:26'),(74,'Hazel Hermann','WBrle5o3BzkgzqQ','2022-04-04 16:49:26','2022-04-04 16:49:26'),(75,'Miss Judy Dare I','77NIAfMelCAyj1g','2022-04-04 16:49:26','2022-04-04 16:49:26'),(76,'Cathryn Corkery','aAr2qxxzE14znKs','2022-04-04 16:49:26','2022-04-04 16:49:26'),(77,'Judah Mann PhD','zxyxaNEUuUMye66','2022-04-04 16:49:26','2022-04-04 16:49:26'),(78,'Karolann Luettgen','A8Mdc9JTmITfkxi','2022-04-04 16:49:26','2022-04-04 16:49:26'),(79,'Mr. Reid Kautzer','VT6mHxKieFEhFaN','2022-04-04 16:49:26','2022-04-04 16:49:26'),(80,'Jena Farrell DDS','HfHkDgdF5Th0K8X','2022-04-04 16:49:26','2022-04-04 16:49:26'),(81,'Loren Strosin','3vRmPCm8dGHtiix','2022-04-04 16:49:26','2022-04-04 16:49:26'),(82,'Grayce Haley','Pw7NsdL5suoiOXM','2022-04-04 16:49:26','2022-04-04 16:49:26'),(83,'Monserrate Beahan','CXf7c8FJr7NVqNN','2022-04-04 16:49:26','2022-04-04 16:49:26'),(84,'Mrs. Celestine Weimann DDS','vSg4szveXD7ifek','2022-04-04 16:49:26','2022-04-04 16:49:26'),(85,'Trevor Auer','prNPAUpoTu7Swml','2022-04-04 16:49:26','2022-04-04 16:49:26'),(86,'Norval Kub','fV1duQp3taVciEZ','2022-04-04 16:49:26','2022-04-04 16:49:26'),(87,'Judge Lebsack','ZbtJqQGBSgMgTGx','2022-04-04 16:49:26','2022-04-04 16:49:26'),(88,'Dovie Willms','ZMdcstRqnakL17J','2022-04-04 16:49:26','2022-04-04 16:49:26'),(89,'Hyman Mertz','iAa6mn0HorkB0yw','2022-04-04 16:49:26','2022-04-04 16:49:26'),(90,'Kailey Barrows','kAgdkDlNAfEMHYQ','2022-04-04 16:49:26','2022-04-04 16:49:26'),(91,'Irwin VonRueden','9DsdRXqyFzL1VnU','2022-04-04 16:49:26','2022-04-04 16:49:26'),(92,'Ms. Ivy Romaguera','sJc2nQCLQ5XNsJY','2022-04-04 16:49:26','2022-04-04 16:49:26'),(93,'Ms. Meaghan Ferry','zg0qfweuAffythZ','2022-04-04 16:49:26','2022-04-04 16:49:26'),(94,'Ms. Bernadette Kunze','5Y2kNt5HP6YPWga','2022-04-04 16:49:26','2022-04-04 16:49:26'),(95,'Jaylen Streich','o8A05qM7YeQk0Jg','2022-04-04 16:49:26','2022-04-04 16:49:26'),(96,'Dolores Hills','0gpa1vUJEGssCWH','2022-04-04 16:49:26','2022-04-04 16:49:26'),(97,'Claudine Mohr','frH2St44hRd7uy5','2022-04-04 16:49:26','2022-04-04 16:49:26'),(98,'Adrienne Lind','jn5LZCz4BNO4ylZ','2022-04-04 16:49:26','2022-04-04 16:49:26'),(99,'Giuseppe Hermann PhD','u05fzWPsXfw1Kda','2022-04-04 16:49:26','2022-04-04 16:49:26'),(100,'Mr. Jean Rippin DDS','IqifoM2FIfxk24O','2022-04-04 16:49:26','2022-04-04 16:49:26');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
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

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `managers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_03_05_230229_create_roles_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_01_10_004107_create_modules_table',1),(7,'2022_02_24_025830_create_categories_table',1),(8,'2022_03_05_231637_create_permissions_table',1),(9,'2022_03_06_010203_create_role_permissions_table',1),(10,'2022_03_24_154436_create_products_table',1),(11,'2022_04_01_080146_create_managers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Category','active','2022-04-04 16:49:25','2022-04-04 16:49:25');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
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

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_module_id_foreign` (`module_id`),
  CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,'show.category','showcategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(2,1,'create.category','createcategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(3,1,'store.category','storecategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(4,1,'view.category','viewcategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(5,1,'edit.category','editcategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(6,1,'update.category','updatecategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(7,1,'delete.category','deletecategory','Active','2022-04-04 16:49:25','2022-04-04 16:49:25');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'ELIJAH CHANDLER','Leandra Emerson',331,'xuvipy@mailinator.com','2022-04-07 17:19:16','2022-04-07 17:19:16'),(8,'YEN HARDY','Heather Osborn',430,'zenumiru@mailinator.com','2022-04-15 22:18:00','2022-04-15 22:18:00'),(9,'YEN HARDY','Heather Osborn',430,'zenumiru@mailinator.com','2022-04-15 22:18:04','2022-04-15 22:18:04'),(10,'IMOGENE MCCLAIN','Mira Hodges',255,'qivob@mailinator.com','2022-04-15 22:18:12','2022-04-15 22:18:12'),(11,'DOMINIC RUTLEDGE','Ross Alston',539,'kecid@mailinator.com','2022-04-15 22:39:15','2022-04-15 22:39:15'),(12,'TIMOTHY CAMERON','Heidi Lawson',48,'guzohumis@mailinator.com','2022-04-15 22:39:27','2022-04-15 22:39:27');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `permission_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_permissions_role_id_foreign` (`role_id`),
  KEY `role_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (1,1,1,'2022-04-14 18:23:20','2022-04-14 18:23:20'),(2,1,2,'2022-04-14 18:23:20','2022-04-14 18:23:20');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','admin','active','2022-04-04 16:49:25','2022-04-04 16:49:25'),(2,'manager',NULL,'active','2022-04-14 18:18:39','2022-04-14 18:18:39');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_token_expire_at` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,NULL,NULL,'sara','sara@gmail.com',NULL,'$2y$10$iCl2.yj.zWazVqr7KuAkuuQjGo47XzVZ1i6b8ps6hxzCGU2r3vA8q',NULL,NULL,NULL,NULL,NULL),(2,1,NULL,'68961518','Sara Rahman','18103214@iubat.edu',NULL,'$2y$10$Ftq6am0nJDjC3bJPmH3iuu4hKDwRQVcwRbANjBJy9pGY..khZVGMW',NULL,NULL,NULL,'2022-04-04 17:01:09','2022-04-04 17:01:09');
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

