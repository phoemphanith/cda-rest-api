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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_categories`
--

LOCK TABLES `campaign_categories` WRITE;
/*!40000 ALTER TABLE `campaign_categories` DISABLE KEYS */;
INSERT INTO `campaign_categories` VALUES (1,'Educations','ការអប់រំ','/campaign-categories/CamGoTech_EB606NRap8579ky9YTIdBITAJUD0lKlGABm83ZGW.png',1,1,'2024-07-01 05:21:57','2024-07-17 04:58:17'),(2,'Sports','កីឡា','/campaign-categories/CamGoTech_ctUkLrQUg2oRqsI5ksFbffFqoIY5D4QEQTzu8hnP.png',2,1,'2024-07-01 05:29:26','2024-07-17 05:05:39'),(3,'Litigation','','',3,1,'2024-07-01 05:30:37','2024-07-01 05:30:37'),(4,'Volunteer','','',4,1,'2024-07-01 05:30:53','2024-07-01 05:30:53'),(5,'Healthy Food','','',5,1,'2024-07-01 05:31:20','2024-07-01 05:31:20'),(6,'Clean Water','','',6,1,'2024-07-01 05:31:33','2024-07-01 05:31:41'),(7,'Medical Treatment','','',7,1,'2024-07-01 05:32:00','2024-07-01 05:32:00'),(8,'Environment','បរិស្ថាន','',8,1,'2024-07-17 09:49:51','2024-07-17 09:49:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-07-20 01:06:16',0,0,0,85.66,500,18,0,0),(2,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-07-20 01:06:03',0,0,1,1.7,160,10,0,0),(3,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-07-20 01:13:24',0,0,1,50.1,102,2,0,0),(4,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-16 06:53:31',1,1,1,0,0,0,0,0),(5,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-16 06:53:31',1,1,1,0,0,0,0,0),(6,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-16 06:53:31',1,1,1,0,0,0,0,0),(7,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-16 06:53:31',1,1,1,0,0,0,0,0),(8,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',0,1,'2024-07-16 06:51:12','2024-07-19 05:29:48',1,1,1,0,0,0,0,0),(9,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-17 06:01:28',1,0,1,0,0,0,0,0),(10,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-17 06:01:21',1,0,1,0,0,0,0,0),(11,3,2,'Kandal Province, Cambodia','Kandal Province','Our donation is hope for poor children','អំណោយរបស់យើងគឺជាក្តីសង្ឃឹមសម្រាប់កុមារក្រីក្រ',NULL,NULL,'There are not many of passages of lorem ipsum avail isn alteration donationa in form simply free.','មិនមានការអនុម័តជាច្រើននៃ lorem ipsum avail មិនត្រូវបានផ្លាស់ប្តូរការបរិច្ចាគជាទម្រង់ឥតគិតថ្លៃទេ។','There are not many of passages of lorem ipsum avail isn alteration donationa in form simply free.','មិនមានការអនុម័តជាច្រើននៃ lorem ipsum avail មិនត្រូវបានផ្លាស់ប្តូរការបរិច្ចាគជាទម្រង់ឥតគិតថ្លៃទេ។','https://www.google.com/',1500,'2024-07-18','2024-07-31','Thank you','អរគុណ',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','123456','https://www.youtube.com/watch?v=xg7f5YO38Hg','[\"/campaign/CamGoTech_nghVYV4587Czqy0A2xtOskkEkmF2eWXyBaTiPHQ6.jpg\"]',NULL,'/campaign/CamGoTech_T56vvZ6b8iC5jFNGPzUtxU6RdYE4n61Y3MTbp17v.png','/campaign/CamGoTech_r5OyOsktkdWa5mqjI8h6LlgMHQkTShCqUBMQyVpt.png',NULL,'/campaign/CamGoTech_2c1qfAT0G8DtKHQRahwcrOfLzvFoV1xsudox95jE.webp','COMPLETE',0,1,'2024-07-17 05:40:11','2024-07-20 05:53:48',1,1,1,117.5,830,12,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,11,2,'Daily',100,5,105,'CREDIT_DEBIT_CARD','T',1,'2024-07-19 03:27:19','2024-07-18 20:27:19','2024-07-18 20:27:19'),(2,11,2,'Daily',100,5,105,'KHQR','T',1,'2024-07-19 03:32:31','2024-07-18 20:32:31','2024-07-18 20:32:31'),(3,11,2,'Daily',100,25,125,'CREDIT_DEBIT_CARD','111',1,'2024-07-19 03:34:53','2024-07-18 20:34:53','2024-07-18 20:34:53'),(4,11,2,'Yearly',100,5,105,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 04:05:01','2024-07-18 21:05:01','2024-07-18 21:05:01'),(5,11,2,'Monthly',100,25,125,'CREDIT_DEBIT_CARD','11',1,'2024-07-19 04:07:40','2024-07-18 21:07:40','2024-07-18 21:07:40'),(6,11,2,'Yearly',100,50,150,'CREDIT_DEBIT_CARD','ss',1,'2024-07-19 04:11:25','2024-07-18 21:11:25','2024-07-18 21:11:25'),(7,11,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','qwerty',1,'2024-07-19 04:24:41','2024-07-18 21:24:41','2024-07-18 21:24:41'),(8,1,2,'Yearly',100,5,105,'CREDIT_DEBIT_CARD','ss',1,'2024-07-19 04:25:28','2024-07-18 21:25:28','2024-07-18 21:25:28'),(9,1,2,'Yearly',2,0.1,2.1,'SATHAPANA_PAY','qwerty',1,'2024-07-19 04:28:33','2024-07-18 21:28:33','2024-07-18 21:28:33'),(10,1,2,'Daily',1,0.01,1.01,'CREDIT_DEBIT_CARD','1',0,'2024-07-19 04:31:23','2024-07-18 21:31:23','2024-07-18 21:31:23'),(11,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','Tip',1,'2024-07-19 04:54:13','2024-07-18 21:54:13','2024-07-18 21:54:13'),(12,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 05:02:03','2024-07-18 22:02:03','2024-07-18 22:02:03'),(13,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 05:02:26','2024-07-18 22:02:26','2024-07-18 22:02:26'),(14,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','hello',1,'2024-07-19 06:51:25','2024-07-18 23:51:25','2024-07-18 23:51:25'),(15,1,2,'Daily',1,0.05,1.05,'CREDIT_DEBIT_CARD','q',1,'2024-07-19 06:55:21','2024-07-18 23:55:21','2024-07-18 23:55:21'),(16,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 07:20:23','2024-07-19 00:20:24','2024-07-19 00:20:24'),(17,1,2,'Daily',1,0,1,'KHQR',NULL,1,'2024-07-19 07:24:16','2024-07-19 00:24:16','2024-07-19 00:24:16'),(18,11,2,'Daily',99,0,99,'SATHAPANA_PAY',NULL,1,'2024-07-19 07:29:15','2024-07-19 00:29:15','2024-07-19 00:29:15'),(19,1,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 07:31:18','2024-07-19 00:31:18','2024-07-19 00:31:18'),(20,1,2,'Daily',10,0,10,'SATHAPANA_PAY',NULL,1,'2024-07-19 08:22:47','2024-07-19 01:22:47','2024-07-19 01:22:47'),(21,11,2,'Daily',100,0,100,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:34:15','2024-07-19 01:34:15','2024-07-19 01:34:15'),(22,1,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:34:59','2024-07-19 01:34:59','2024-07-19 01:34:59'),(23,1,2,'Daily',100,50,150,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:36:36','2024-07-19 01:36:36','2024-07-19 01:36:36'),(24,1,2,'Daily',50,0,50,'CREDIT_DEBIT_CARD','a',1,'2024-07-19 09:14:37','2024-07-19 02:14:37','2024-07-19 02:14:37'),(25,1,2,'Daily',10,0.5,10.5,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 09:15:34','2024-07-19 02:15:34','2024-07-19 02:15:34'),(26,2,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD','10',1,'2024-07-19 09:17:25','2024-07-19 02:17:25','2024-07-19 02:17:25'),(27,2,2,'Daily',20,1,21,'KHQR','Note',1,'2024-07-19 11:57:11','2024-07-19 04:57:11','2024-07-19 04:57:11'),(28,3,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 11:59:14','2024-07-19 04:59:14','2024-07-19 04:59:14'),(29,2,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:01:34','2024-07-19 05:01:34','2024-07-19 05:01:34'),(30,2,2,'Daily',2,0,2,'SATHAPANA_PAY',NULL,1,'2024-07-19 12:02:41','2024-07-19 05:02:41','2024-07-19 05:02:41'),(31,2,2,'Daily',2,0,2,'CREDIT_DEBIT_CARD','f',1,'2024-07-19 12:03:34','2024-07-19 05:03:34','2024-07-19 05:03:34'),(32,2,2,'Daily',2,0,2,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:05:47','2024-07-19 05:05:47','2024-07-19 05:05:47'),(33,2,2,'Daily',100,0,100,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:06:21','2024-07-19 05:06:21','2024-07-19 05:06:21'),(34,2,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:07:16','2024-07-19 05:07:16','2024-07-19 05:07:16'),(35,2,2,'Daily',10,0.5,10.5,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:07:59','2024-07-19 05:07:59','2024-07-19 05:07:59'),(36,2,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:08:36','2024-07-19 05:08:36','2024-07-19 05:08:36'),(37,1,2,'Daily',100,5,105,'CREDIT_DEBIT_CARD','Donation',1,'2024-07-19 12:28:46','2024-07-19 05:28:46','2024-07-19 05:28:46'),(38,1,2,'Daily',100,25,125,'CREDIT_DEBIT_CARD','Test',1,'2024-07-19 12:44:00','2024-07-19 05:44:00','2024-07-19 05:44:00'),(39,11,2,'Daily',10,2.5,12.5,'CREDIT_DEBIT_CARD','Donation',1,'2024-07-19 12:54:19','2024-07-19 05:54:19','2024-07-19 05:54:19'),(40,11,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 13:40:11','2024-07-19 06:40:11','2024-07-19 06:40:11'),(41,3,4,'Monthly',100,50,150,'CREDIT_DEBIT_CARD','God bless you,',1,'2024-07-20 08:13:24','2024-07-20 01:13:24','2024-07-20 01:13:24'),(42,11,4,'Weekly',10,0,10,'CREDIT_DEBIT_CARD','God bless you.',1,'2024-07-20 12:53:47','2024-07-20 05:53:47','2024-07-20 05:53:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,3,'APPROVE',11,NULL,'2024-07-20 04:54:59','2024-07-19 21:54:59','2024-07-19 21:54:59'),(2,3,'APPROVE',11,NULL,'2024-07-20 07:53:56','2024-07-20 00:53:56','2024-07-20 00:53:56'),(3,3,'APPROVE',3,NULL,'2024-07-20 08:05:51','2024-07-20 01:05:51','2024-07-20 01:05:51'),(4,3,'APPROVE',2,NULL,'2024-07-20 08:06:03','2024-07-20 01:06:03','2024-07-20 01:06:03'),(5,3,'APPROVE',1,NULL,'2024-07-20 08:06:16','2024-07-20 01:06:16','2024-07-20 01:06:16'),(6,4,'DONATION',3,41,'2024-07-20 08:13:24','2024-07-20 01:13:24','2024-07-20 01:13:24'),(7,4,'DONATION',11,42,'2024-07-20 12:53:48','2024-07-20 05:53:48','2024-07-20 05:53:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (123,'2023_10_20_020156_create_project_categories_table',1),(131,'2014_10_12_000000_create_users_table',2),(132,'2014_10_12_100000_create_password_reset_tokens_table',2),(133,'2019_08_19_000000_create_failed_jobs_table',2),(134,'2019_12_14_000001_create_personal_access_tokens_table',2),(135,'2023_10_19_072713_create_performances_table',2),(136,'2023_10_19_095945_create_news_table',2),(137,'2023_10_20_020156_create_campaign_categories_table',2),(138,'2023_10_20_040811_create_projects_table',2),(139,'2023_10_23_075315_create_testimonials_table',2),(140,'2023_10_23_091524_create_technologies_table',2),(141,'2023_10_23_102456_create_banners_table',2),(142,'2023_10_27_134236_create_site_settings_table',2),(143,'2023_11_09_015606_create_page_banners_table',2),(144,'2024_06_28_053113_create_verification_codes_table',2),(149,'2024_07_06_041520_create_campaigns_table',3),(150,'2024_07_16_163711_create_donations_table',4),(151,'2024_07_20_043922_create_feeds_table',5);
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_banners`
--

LOCK TABLES `page_banners` WRITE;
/*!40000 ALTER TABLE `page_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_banners` ENABLE KEYS */;
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performances`
--

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;
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
-- Table structure for table `project_categories`
--

DROP TABLE IF EXISTS `project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_categories` (
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
-- Dumping data for table `project_categories`
--

LOCK TABLES `project_categories` WRITE;
/*!40000 ALTER TABLE `project_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_categories` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
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
  `memberType` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User',NULL,NULL,'admin@gmail.com',NULL,NULL,'$2y$10$.xpP7YSR/p.uZ3hHwjjZVuZnK1Vbv.svy.EJx3roWMLrnK9OHFbP6',0,0,0,'2024-07-01 05:06:49',0,1,'2024-07-01 05:06:50','2024-07-01 05:06:50',NULL),(2,'Phanith Phoem','Phanith','Phoem','phanith1826@gmail.com',NULL,NULL,'$2y$10$Pe/g3IOs6mGM4YECiDr34.yKOLizbgdtsu49bRODOcejAHXOJOj9W',0,0,0,'2024-07-05 08:33:56',22.5,2,'2024-07-05 08:33:56','2024-07-19 06:40:11',''),(3,'Camgotech Cambodia','Camgotech','Cambodia','camgotech@gmail.com',NULL,'/user-profile/logo.31259d5b.png','$2y$10$Pe/g3IOs6mGM4YECiDr34.yKOLizbgdtsu49bRODOcejAHXOJOj9W',0,0,0,'2024-07-16 06:42:18',0,2,'2024-07-16 06:42:18','2024-07-16 06:42:18','Organization'),(4,'Chan Sok','Chan','Sok','phanith0656@gmail.com',NULL,NULL,'$2y$10$t/dJqsjMUTIMAFM6DvThWuujM.ART7d/kcbbV8LR.CrVziZG3FOAq',0,0,0,'2024-07-20 00:48:28',160,2,'2024-07-20 00:48:28','2024-07-20 05:53:48',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

-- Dump completed on 2024-07-21 11:52:11
