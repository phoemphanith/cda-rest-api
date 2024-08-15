-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cda_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitleKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionKh` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkLabelKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkTo` text COLLATE utf8mb4_unicode_ci,
  `redirectNewTap` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Help the Poor <br /> in Need','2','Helping Them Today','2','','1','/banner/CamGoTech_ve12vqXMZ5LdWrrmMU6ku9TeaAcFQXVk3jGttkNb.jpg','Donate','1','/projects',0,2,1,'2024-08-01 06:27:23','2024-08-02 23:47:36'),(2,'Help the Poor <br /> in Need','','Helping Them Today','','','','/banner/CamGoTech_PWuJLTbLYBs7MO5MG5X8S75Gzye4kJ6SZgT2WKyL.jpg','DONATE NOW',NULL,'/projects',0,1,1,'2024-08-02 23:47:30','2024-08-02 23:47:30');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_categories`
--

DROP TABLE IF EXISTS `campaign_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_categories`
--

LOCK TABLES `campaign_categories` WRITE;
/*!40000 ALTER TABLE `campaign_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `creatorId` bigint NOT NULL,
  `campaignCategoryId` bigint DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaignTile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaignTileKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullStory` text COLLATE utf8mb4_unicode_ci,
  `fullStoryKm` text COLLATE utf8mb4_unicode_ci,
  `additionalInformation` text COLLATE utf8mb4_unicode_ci,
  `additionalInformationKm` text COLLATE utf8mb4_unicode_ci,
  `involvement` text COLLATE utf8mb4_unicode_ci,
  `involvementKm` text COLLATE utf8mb4_unicode_ci,
  `referenceLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal` double NOT NULL DEFAULT '0',
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `gratitude` text COLLATE utf8mb4_unicode_ci,
  `gratitudeKm` text COLLATE utf8mb4_unicode_ci,
  `campaignFor` int DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documentType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identityNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creatorLocation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creatorCity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiveByBank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoLink` text COLLATE utf8mb4_unicode_ci,
  `campaignGallery` json NOT NULL,
  `videoFile` text COLLATE utf8mb4_unicode_ci,
  `idCardBack` text COLLATE utf8mb4_unicode_ci,
  `idCardFront` text COLLATE utf8mb4_unicode_ci,
  `passport` text COLLATE utf8mb4_unicode_ci,
  `profile` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isInNeed` tinyint(1) NOT NULL DEFAULT '0',
  `isTrending` tinyint(1) NOT NULL DEFAULT '0',
  `isLatest` tinyint(1) NOT NULL DEFAULT '0',
  `totalTip` double NOT NULL DEFAULT '0',
  `totalRaised` double NOT NULL DEFAULT '0',
  `totalDonation` int NOT NULL DEFAULT '0',
  `totalReaction` int NOT NULL DEFAULT '0',
  `totalShare` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `campaignId` bigint NOT NULL,
  `donorId` bigint DEFAULT NULL,
  `donateType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `tip` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `isConfirmAgreement` tinyint(1) NOT NULL DEFAULT '0',
  `donationDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `creatorId` bigint DEFAULT NULL,
  `feedType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaignId` bigint DEFAULT NULL,
  `donationId` bigint DEFAULT NULL,
  `publishedAt` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_10_19_072713_create_performances_table',1),(6,'2023_10_19_095945_create_news_table',1),(7,'2023_10_20_020156_create_campaign_categories_table',1),(8,'2023_10_20_040811_create_projects_table',1),(9,'2023_10_23_075315_create_testimonials_table',1),(10,'2023_10_23_091524_create_technologies_table',1),(11,'2023_10_23_102456_create_banners_table',1),(12,'2023_10_27_134236_create_site_settings_table',1),(13,'2023_11_09_015606_create_page_banners_table',1),(14,'2024_06_28_053113_create_verification_codes_table',1),(15,'2024_07_06_041520_create_campaigns_table',1),(16,'2024_07_16_163711_create_donations_table',1),(17,'2024_07_20_043922_create_feeds_table',1),(18,'2024_08_02_070822_create_partners_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `summaryKh` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `contentKh` longtext COLLATE utf8mb4_unicode_ci,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'hkjljhkl','alsdfjla','jkh;','asdfljl','<p>jkhlklj;l</p>','',1,'/news/CamGoTech_levGFX6fbrwNcl1wIHevcWk95HV7Vtst8wrjzjhs.jpg','EVENT',3,1,'2024-08-01 06:09:07','2024-08-03 02:47:34'),(2,'Donation is Hope for Poor Childrens in Africa','2','Donation is Hope for Poor Childrens in Africa','2','<p class=\"news-details__text-one\">Tliq is notm hendr erit a augue insu image pellen tes que id erat quis sollicitud. Lorem ipsum dolor sit amet, consectetur adipiscing ullam blandit hendrerit faucibus suspendisse. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<p class=\"news-details__text-two\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ley of type and scrambled it to make a type specimen book.</p>\n<p class=\"news-details__text-three\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version.</p>','',1,'/news/CamGoTech_8VsaSe0zlo4bObiIl8aNEx1TsbRrqhMA0XXfGK0S.jpg','NEWS',1,1,'2024-08-01 06:40:41','2024-08-03 02:13:32'),(3,'How Does Malnutrition Affect Children?','','How Does Malnutrition Affect Children?','','<p class=\"news-details__text-one\">Tliq is notm hendr erit a augue insu image pellen tes que id erat quis sollicitud. Lorem ipsum dolor sit amet, consectetur adipiscing ullam blandit hendrerit faucibus suspendisse. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<p class=\"news-details__text-two\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ley of type and scrambled it to make a type specimen book.</p>\n<p class=\"news-details__text-three\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version.</p>','',1,'/news/CamGoTech_JipkemNUe4jlXCzKl5lVALIPY4YdCRYUqvbCLYnz.jpg','NEWS',2,1,'2024-08-03 02:14:51','2024-08-03 02:14:51');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_banners`
--

DROP TABLE IF EXISTS `page_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_banners`
--

LOCK TABLES `page_banners` WRITE;
/*!40000 ALTER TABLE `page_banners` DISABLE KEYS */;
INSERT INTO `page_banners` VALUES (1,'/pageBanner-profile/CamGoTech_WkztjCpZ5JaFjopeqnTlNB35tqTECyDH4hjck05r.jpg','CONTACT_PAGE',1,'2024-08-02 23:01:24','2024-08-02 23:07:54'),(2,'/pageBanner-profile/CamGoTech_o5EqnhrhGC4eO1EEIJFl5pjPV51TsbjW2IUmXiX2.jpg','ABOUT_PAGE',1,'2024-08-02 23:01:59','2024-08-02 23:08:18'),(3,'/pageBanner-profile/CamGoTech_9Bgm920IKM9N9Uo4hR04YXGXXQ3dwKLQQf3GT1VW.jpg','EVENT_PAGE',1,'2024-08-02 23:02:38','2024-08-02 23:08:47'),(4,'/pageBanner-profile/CamGoTech_uD8nMlAA7YYPKOB2ObqfcZWaUnmzLNpsj0sFPVwd.jpg','NEWS_PAGE',1,'2024-08-02 23:02:53','2024-08-02 23:09:14'),(5,'/pageBanner-profile/CamGoTech_3qVWq4tvhc8tVZ9rIDvYjwj5gO9D2mGJ07YJPzMR.jpg','FEED_PAGE',1,'2024-08-02 23:03:44','2024-08-02 23:09:03'),(6,'/pageBanner-profile/CamGoTech_q8uAjFkoGDGtMXrO5zuuUBjqGMEkN9OaddHRsssF.jpg','DONORS_PAGE',1,'2024-08-02 23:04:00','2024-08-02 23:08:37'),(7,'/pageBanner-profile/CamGoTech_kNRnCcRgVg7ZcQ2BLS58eDR0S4lgKQkiKVoPuvgQ.jpg','RAISE_FUND_PAGE',1,'2024-08-02 23:04:18','2024-08-02 23:08:11'),(8,'/pageBanner-profile/CamGoTech_m468rZgUzHuJftNIQd9sewrCB1gyKBoojiOHKn1l.jpg','CAMPAIGN_PAGE',1,'2024-08-02 23:04:39','2024-08-02 23:07:47'),(9,'/pageBanner-profile/CamGoTech_g6xdER6lsVkOIA32BifQF7h56n4fAwIqmk7ktamP.jpg','TERM_CONDITION',1,'2024-08-02 23:12:25','2024-08-02 23:12:25'),(10,'/pageBanner-profile/CamGoTech_WFoSt3gsNFGaC4WiMhMTYPOO5jZxxwrMzaB5mMY2.jpg','PRIVACY_POLICY',1,'2024-08-02 23:12:59','2024-08-02 23:12:59');
/*!40000 ALTER TABLE `page_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Partner 1','/partner-profile/CamGoTech_QRJjTJ5T4pLRAjGsYHqoNz9d2K6SsdvFpRsE1fp6.png',1,1,'2024-08-02 09:05:08','2024-08-03 02:50:50'),(2,'Partner 2','/partner-profile/CamGoTech_InjRnCVY1pWhrDJWoGA5FFrfx5MQx2qmdg4mMth2.png',2,1,'2024-08-03 02:51:09','2024-08-03 02:51:09'),(3,'Partner 3','/partner-profile/CamGoTech_sNiMgWDMQ0gDuWRUJzSGicsL4bpIC20QFXeaoIse.png',3,1,'2024-08-03 02:51:26','2024-08-03 02:51:26');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `performances`
--

DROP TABLE IF EXISTS `performances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionKh` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
INSERT INTO `performances` VALUES (2,'Goal','','Finally, set your goals and what you hope to achieve from your campaign.','','/performance/CamGoTech_7ceW5gyUXHVZQvFR5866U46k8SzklbkthWEt9rqT.png',4,1,'2024-08-03 02:56:48','2024-08-03 02:56:48'),(3,'Photos & Video','','Donors are more likely to connect with your campaign with story telling visuals.','','/performance/CamGoTech_eiiPoHmbwUUeWppepmUEcFHVUFn6ZJ6uyqa0NjyL.png',3,1,'2024-08-03 02:57:23','2024-08-03 02:57:23'),(4,'Your Story','','Provide your potential donors with a moving and poweful cause.','','/performance/CamGoTech_qbefPawyYQqDyTHR8Qzs91rNX19fn5zqVQndoHxv.png',2,1,'2024-08-03 02:57:49','2024-08-03 02:57:49'),(5,'Basic Information','','Enter your personal information so you can verify your account to continue','','/performance/CamGoTech_I5sG3MmXK5n5alaChwjPhrS0mreYdyREj4boLUQn.png',1,1,'2024-08-03 02:58:11','2024-08-03 02:58:11');
/*!40000 ALTER TABLE `performances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `websiteLink` text COLLATE utf8mb4_unicode_ci,
  `facebookLink` text COLLATE utf8mb4_unicode_ci,
  `instagramLink` text COLLATE utf8mb4_unicode_ci,
  `telegramLink` text COLLATE utf8mb4_unicode_ci,
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES (1,'CONTACT','{\"email1\": \"info@cdafund.org\", \"email2\": \"\", \"address\": \"No. 148, Preah Sihanouk Blvd, Chamkarmon, Phnom Penh, Cambodia.\", \"embedMap\": \"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250151.1627751833!2d104.72537693631722!3d11.579654004334014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109513dc76a6be3%3A0x9c010ee85ab525bb!2sPhnom%20Penh!5e0!3m2!1sen!2skh!4v1698767656628!5m2!1sen!2skh\", \"addressKh\": \"២\", \"pageTitle\": \"We love to hear from our <br /> happy customers\", \"thumbnail\": \"/site-setting/CamGoTech_yvflGC7dEJl0GTIAe31TcVNVsltFrxBdBhhLBAQ1.jpg\", \"pageTitleKh\": \"២\", \"facebookLink\": \"https://www.facebook.com/\", \"linkedinLink\": \"https://linkedin.com/feed/\", \"phoneNumber1\": \"+85512637686\", \"phoneNumber2\": \"+855 88 488 6422\", \"telegramLink\": \"https://web.telegram.org/\", \"instagramLink\": \"https://www.instagram.com/\", \"pageDescription\": \"There are many variations of passages of available but the majority have suffered alteration in some form, by injected humou or randomised words even slightly believable.\", \"pageDescriptionKh\": \"២\"}','2024-08-01 22:13:41','2024-08-05 20:58:06'),(2,'HOME_PAGE','{\"cardDesc1\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardDesc2\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardDesc3\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardIcon1\": \"icon-fast-food\", \"cardIcon2\": \"icon-water\", \"cardIcon3\": \"icon-health-check\", \"ourDonors\": \"Help them whenever they are in need\", \"thumbnail\": \"/site-setting/CamGoTech_2jNX5rAUaT3Rhfwod8djXXYtY7O2MNYreQ6rhrSl.jpg\", \"bannerDesc\": \"Join the community <br /> to give education for children\", \"cardLabel1\": \"Donate\", \"cardLabel2\": \"Donate\", \"cardLabel3\": \"Donate\", \"cardTitle1\": \"Healthy Food\", \"cardTitle2\": \"Clean Water\", \"cardTitle3\": \"Medical Treatment\", \"bannerLabel\": \"Learn More\", \"cardDescKh1\": \"២\", \"cardDescKh2\": \"២\", \"cardDescKh3\": \"២\", \"cardIsShow1\": true, \"cardIsShow2\": true, \"cardIsShow3\": true, \"cardLinkTo1\": \"/projects\", \"cardLinkTo2\": \"/projects\", \"cardLinkTo3\": \"/projects\", \"ourDonorsKh\": \"Help them whenever they are in need\", \"bannerDescKh\": \"២\", \"bannerLinkTo\": \"/about\", \"cardLabelKh1\": \"២\", \"cardLabelKh2\": \"២\", \"cardLabelKh3\": \"២\", \"cardTitleKh1\": \"២\", \"cardTitleKh2\": \"២\", \"cardTitleKh3\": \"២\", \"thumbnailTwo\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"bannerLabelKh\": \"២\", \"latestProject\": \"Find the popular cause and donate them\", \"thumbnailFive\": \"/site-setting/CamGoTech_bbexmkW9WDQMfbrtq4h9MXyk6cTGGFx0hL2eyfYY.jpg\", \"thumbnailFour\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"getDailyUpdate\": \"Latest news & articles directly coming from the blog\", \"thumbnailThree\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"latestProjectKh\": \"២\", \"getDailyUpdateKh\": \"Latest news & articles directly coming from the blog\"}','2024-08-01 22:21:14','2024-08-03 00:41:44'),(3,'ABOUT_PAGE','{\"cardDesc1\": \"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\", \"cardDesc2\": \"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\", \"cardDesc3\": \"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\", \"cardIcon1\": \"fas fa-eye\", \"cardIcon2\": \"fas fa-bullseye\", \"cardIcon3\": \"far fa-gem\", \"introDesc\": \"We are trusted by our clients and have a reputation for the best services in the field. Lorem ipsum is simply free text dolor sit amett consectetur adipiscing elit. It is a long established fact that a reader will be distracted by the readable content of a page.\", \"ourDonors\": \"Help them whenever they are in need\", \"thumbnail\": \"/site-setting/CamGoTech_5dKgATQgNPkKaGKu2IVvdWeEK0eBaYXh9EgAw07g.jpg\", \"bannerDesc\": \"Join the community to give education for children\", \"cardTitle1\": \"VISION\", \"cardTitle2\": \"MISSION\", \"cardTitle3\": \"VALUES\", \"introTitle\": \"We believe that we can save more lifes\", \"bannerLabel\": \"Learn More\", \"cardDescKh1\": \"1\", \"cardDescKh2\": \"1\", \"cardDescKh3\": \"1\", \"happyPeople\": 0, \"introDescKh\": \"1\", \"ourDonorsKh\": \"\", \"bannerDescKh\": \"1\", \"bannerLinkTo\": \"/projects\", \"cardTitleKh1\": \"1\", \"cardTitleKh2\": \"1\", \"cardTitleKh3\": \"1\", \"donorTrusted\": \"98750\", \"introTitleKh\": \"1\", \"ourVolunteer\": 0, \"thumbnailTwo\": \"/site-setting/CamGoTech_VURC54iaOLD1axTXnZaXOmRIJOyoK5Jyc7RlT0Gt.jpg\", \"amazingDonors\": \"50\", \"bannerLabelKh\": \"1\", \"projectClosed\": \"100\", \"thumbnailFive\": \"/site-setting/CamGoTech_u2Y1W1cG9H7TRq8pSLZ27430WMFKhWJhvQM3q8ff.jpg\", \"totalDonation\": 0, \"introHighlight\": \"Halpes is the largest global crowdfunding community in the world\", \"introHighlightKh\": \"1\", \"successfulCampaign\": \"90\", \"professionalVolunteer\": \"Meet the best team behind our success story\", \"professionalVolunteerKh\": \"1\"}','2024-08-02 22:54:51','2024-08-05 20:51:15');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologies`
--

DROP TABLE IF EXISTS `technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technologies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologies`
--

LOCK TABLES `technologies` WRITE;
/*!40000 ALTER TABLE `technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reviewerName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewerPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `reviewerProfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isSuperAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `joinAt` timestamp NOT NULL,
  `totalDonation` double NOT NULL DEFAULT '0',
  `loginWith` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User',NULL,NULL,'admin@gmail.com',NULL,NULL,'$2y$10$p8RgoFjd9XrZgFfTL00uFOObaEwAEM9H4WW50u5k/pHzcgLc/3A4W',1,1,1,'2024-08-01 06:05:09',0,0,'2024-08-01 06:05:09','2024-08-01 06:05:09'),(2,'Phanith Phoem','Phanith','Phoem','phanith.contact@gmail.com','08298467','/user-profile/CamGoTech_mMCCA7CI1LCGvU1mEHxbPBOoTOEPaFysgRC4fUZs.jpg','$2y$10$HitB.zYn8Cy32eQ4yMy9Z.rVWb9vVnJePCOGKuOK8VIDHynI17Ooa',0,0,0,'2024-08-05 21:49:34',0,2,'2024-08-05 21:49:34','2024-08-05 21:52:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_codes`
--

DROP TABLE IF EXISTS `verification_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifiable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_codes`
--

LOCK TABLES `verification_codes` WRITE;
/*!40000 ALTER TABLE `verification_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_codes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-06 11:55:52
