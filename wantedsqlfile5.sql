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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (2,'Help the Poor <br /> in Need','','Helping Them Today','','','','/banner/CamGoTech_hMG7hSnfhBBlqemafPOLTwmqFx8bgJmvMVrGEGEM.jpg','DONATE NOW',NULL,'https://demo.cdafund.org/projects/12/',0,1,1,'2024-08-02 16:47:30','2024-08-06 02:40:25'),(3,'Please Help Me','','','','','','/banner/CamGoTech_tjSLekaxLbIgXh4R89ccr02qQjNT3a1vR0fBSv9A.jpg','Help Me',NULL,'https://demo.cdafund.org/projects/15/',0,2,1,'2024-08-06 02:43:21','2024-08-06 02:43:57'),(4,'Help Me','ពួកយើងត្រូវការជំនួយពីលោកនាក់','','','','','/banner/CamGoTech_sDgHxTXkww29bDxE7XAyc8DD9ZeereeiUxguq7gC.jpg',NULL,NULL,'https://demo.cdafund.org/projects/10/',0,3,1,'2024-08-06 04:32:34','2024-08-19 04:59:49');
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
  `desc` text COLLATE utf8mb4_unicode_ci,
  `descKh` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDisplayHomePage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_categories`
--

LOCK TABLES `campaign_categories` WRITE;
/*!40000 ALTER TABLE `campaign_categories` DISABLE KEYS */;
INSERT INTO `campaign_categories` VALUES (1,'Educations','ការអប់រំ','/campaign-categories/CamGoTech_8sNzGYUMKT6LVeHT1WgyuSPtTsi7Do8jmL1wAlW5.png',1,1,'2024-07-01 05:21:57','2024-07-22 04:13:01',NULL,NULL,NULL,NULL,0),(2,'Sports','កីឡា','/campaign-categories/CamGoTech_0QsNYVDE6foG6HBMLgbx5WUx0KYU870mmj39xiFS.png',2,1,'2024-07-01 05:29:26','2024-07-22 04:12:49',NULL,NULL,NULL,NULL,0),(3,'Litigation','វិវាទ','/campaign-categories/CamGoTech_SZiq5jKj9K6sQLjGFZM4zMqapGTYbNLCRuSHZVRa.png',5,1,'2024-07-01 05:30:37','2024-07-22 04:14:31',NULL,NULL,NULL,NULL,0),(4,'Volunteer','អ្នកស្ម័គ្រចិត្ត','/campaign-categories/CamGoTech_bHy1q1i2hUYh7A2NdFpIqD17uW7HPx6zE1ijn30n.png',6,1,'2024-07-01 05:30:53','2024-07-22 04:18:34',NULL,NULL,NULL,NULL,0),(5,'Emergency','សង្គ្រោះ​បន្ទាន់','/campaign-categories/CamGoTech_m8U8dQBo6k8qA2bEdsixpypOBOptaCFx3vbMHtwI.png',4,1,'2024-07-01 05:31:20','2024-07-22 04:13:53',NULL,NULL,NULL,NULL,0),(6,'Clean Water','ទឹកស្អាត','/campaign-categories/CamGoTech_JSL8avR8wdEtFFe6HfiFzkPrmFDIM4VX6JnGydZv.png',6,1,'2024-07-01 05:31:33','2024-07-22 04:23:28',NULL,NULL,NULL,NULL,0),(7,'Medical','វេជ្ជសាស្ត្រ','/campaign-categories/CamGoTech_gyuJTdfiTiuWtSuEAkmalBW79jX18dxFsEjkyjlK.png',3,1,'2024-07-01 05:32:00','2024-07-22 04:17:42',NULL,NULL,NULL,NULL,0),(8,'Environment','បរិស្ថាន','/campaign-categories/CamGoTech_3kg8Mf1nKAY9rvpuWUz7YvMEdGBd7b7XOCWQXh0Y.png',7,1,'2024-07-17 09:49:51','2024-07-22 04:19:17',NULL,NULL,NULL,NULL,0);
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
  `campaignGallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
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
  `allowEdit` tinyint(1) DEFAULT NULL,
  `qrCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `totalWithdraw` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaigns_id_index` (`id`),
  KEY `campaigns_status_index` (`status`),
  CONSTRAINT `campaigns_chk_1` CHECK (json_valid(`campaignGallery`))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-09-07 04:23:23',0,0,0,91.21,505,22,0,0,NULL,'/qrcode/1724640628_qr_code.svg',500,5),(2,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-09-06 14:15:28',0,0,0,1.7,160,10,0,0,NULL,'/qrcode/1724732960_qr_code.svg',0,160),(3,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-09-07 04:38:52',0,0,0,50.1,103,3,0,0,NULL,'/qrcode/1724736733_qr_code.svg',103,0),(4,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-16 06:53:31',1,1,1,0,0,0,0,0,NULL,NULL,0,0),(5,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-09-07 03:56:28',0,0,0,0,0,0,0,0,NULL,'/qrcode/1724730459_qr_code.svg',1400,0),(6,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-22 06:53:21',1,1,0,0,0,0,0,0,NULL,NULL,0,0),(7,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','PENDING',1,1,'2024-07-16 06:51:12','2024-07-22 06:53:37',1,1,0,0,0,0,0,0,NULL,NULL,0,0),(8,2,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',0,1,'2024-07-16 06:51:12','2024-08-26 22:23:33',0,0,0,0,0,0,0,0,NULL,'/qrcode/1724736213_qr_code.svg',0,0),(9,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-08-26 21:32:00',0,0,0,0,0,0,0,0,NULL,'/qrcode/1724733120_qr_code.svg',0,0),(10,3,1,'Phnom Penh, Cambodia','Phnom Penh','Raise Fund for Clean & Healthy Water','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។</p><p><br></p><p>Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។ វាបានរស់រានមានជីវិតមិនត្រឹមតែប្រាំសតវត្សប៉ុណ្ណោះទេ ប៉ុន្តែវាក៏ជាការលោតផ្លោះចូលទៅក្នុងការវាយអក្សរអេឡិចត្រូនិចផងដែរ ដែលនៅតែមិនផ្លាស់ប្តូរ។ វាត្រូវបានគេពេញនិយមនៅក្នុងទសវត្សរ៍ឆ្នាំ 1960 ជាមួយនឹងការចេញផ្សាយសន្លឹក Letraset ដែលមាន Lorem Ipsum passages ហើយថ្មីៗនេះជាមួយនឹងកម្មវិធីបោះពុម្ពលើកុំព្យូទ័រដូចជា។ Lorem Ipsum គឺជាអត្ថបទមិនពិតនៃឧស្សាហកម្មបោះពុម្ព និងវាយអក្សរ។ Lorem Ipsum គឺជាអត្ថបទអត់ចេះសោះស្តង់ដាររបស់ឧស្សាហកម្មតាំងពីទសវត្សរ៍ឆ្នាំ 1500 នៅពេលដែលម៉ាស៊ីនបោះពុម្ពមិនស្គាល់មួយបានយកប្រភេទសៀវភៅមួយប្រភេទ ហើយច្របល់វាដើម្បីបង្កើតសៀវភៅគំរូ។</p>','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','មានបំរែបំរួលជាច្រើននៃវគ្គនៃ Lorem Ipsum ដែលអាចប្រើបាន ប៉ុន្តែភាគច្រើនបានទទួលរងការកែប្រែក្នុងទម្រង់ខ្លះ ដោយការលេងសើច ឬពាក្យចៃដន្យដែលមើលទៅមិនគួរឱ្យជឿសូម្បីតែបន្តិច។ ប្រសិនបើអ្នកនឹងប្រើអត្ថបទរបស់ Lorem Ipsum អ្នកត្រូវតែប្រាកដថាមិនមានអ្វីដែលគួរឱ្យអាម៉ាស់លាក់នៅកណ្តាលអត្ថបទនោះទេ។','https://www.google.com/',10000,'2024-07-16','2024-07-31','Thank you for helping us.','សូមអរគុណចំពោះការជួយពួកយើង។',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','081298467','https://www.youtube.com/watch?v=jwuJUPn7fLs','[\"/campaign/CamGoTech_eTjHEzhLhScCkpoAxR0R17JFAEOykFjbEuTSf7ic.png\", \"/campaign/CamGoTech_YN4aLveso8E6sO7eC9wy2f9WhCMqE67UVjU6NyDG.png\", \"/campaign/CamGoTech_LULWH7BMJU0Pz3JI7vdgiPbYP8fVaJkPW1KhYBkV.png\", \"/campaign/CamGoTech_X3q81YpBetGRs9oEWLVcdVm1tLEL3fNwzItC4fWg.png\", \"/campaign/CamGoTech_jtOH9eSRmuHAiK0lJew7xAnnhF13DXBkVSmSQ9qx.png\"]','/campaign/CamGoTech_Bw68iXf9qbVDnkmZtsNTK3EkUdL8kgvLqxl375zA.mp4','/campaign/CamGoTech_es5nSBuoDfyeUzL3lFCV8nVuLS9XYKlKZddbYgBG.png','/campaign/CamGoTech_YWPlu12juKODProAZyjkw8tTyoJj050bNQhYouIL.png',NULL,'/campaign/CamGoTech_oY5N9Te00NEqqjxytnpWqQu8PORJG7xJi9qHjgs2.webp','COMPLETE',1,1,'2024-07-16 06:51:12','2024-09-07 04:25:31',0,0,1,0,1,1,0,0,0,'/qrcode/1724736504_qr_code.svg',0,1),(11,3,2,'Kandal Province, Cambodia','Kandal Province','Our donation is hope for poor children','អំណោយរបស់យើងគឺជាក្តីសង្ឃឹមសម្រាប់កុមារក្រីក្រ',NULL,NULL,'There are not many of passages of lorem ipsum avail isn alteration donationa in form simply free.','មិនមានការអនុម័តជាច្រើននៃ lorem ipsum avail មិនត្រូវបានផ្លាស់ប្តូរការបរិច្ចាគជាទម្រង់ឥតគិតថ្លៃទេ។','There are not many of passages of lorem ipsum avail isn alteration donationa in form simply free.','មិនមានការអនុម័តជាច្រើននៃ lorem ipsum avail មិនត្រូវបានផ្លាស់ប្តូរការបរិច្ចាគជាទម្រង់ឥតគិតថ្លៃទេ។','https://www.google.com/',1500,'2024-07-18','2024-07-31','Thank you','អរគុណ',1,'081298467','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','123456','https://www.youtube.com/watch?v=xg7f5YO38Hg','[\"/campaign/CamGoTech_nghVYV4587Czqy0A2xtOskkEkmF2eWXyBaTiPHQ6.jpg\"]',NULL,'/campaign/CamGoTech_T56vvZ6b8iC5jFNGPzUtxU6RdYE4n61Y3MTbp17v.png','/campaign/CamGoTech_r5OyOsktkdWa5mqjI8h6LlgMHQkTShCqUBMQyVpt.png',NULL,'/campaign/CamGoTech_2c1qfAT0G8DtKHQRahwcrOfLzvFoV1xsudox95jE.webp','COMPLETE',0,1,'2024-07-17 05:40:11','2024-09-07 04:32:34',0,0,0,122.5,1400,15,0,0,0,'/qrcode/1724157240_qr_code.svg',800,600),(12,5,1,'Phnom Penh','Phnom Penh','Enlighten Lao PDR - Empowering Futures','បំភ្លឺប្រទេសឡាវ - ការពង្រឹងអនាគត','<p>Introduction Welcome to the \"Enlighten Lao PDR\" campaign! Our mission is to significantly improve the accessibility and quality of education for children across Lao People’s Democratic Republic. This campaign is fueled by a vision where every child in Lao PDR, regardless of their background or geographical location, has access to a quality education that empowers them to contribute positively to their community.</p><p><strong>The Challenge</strong></p><p>In Lao PDR, many children, especially those from rural and underserved communities, face barriers to accessing education. These barriers include lack of proper school infrastructure, insufficient learning materials, and the absence of qualified teachers. As a result, educational disparities persist, limiting future opportunities for countless youth.</p><p><strong>Our Objectives</strong></p><p>\\Enlighten Lao PDR\\ aims to harness the power of community and global generosity to:</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Build and refurbish school facilities in critical areas.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Supply schools with essential learning materials and modern educational equipment.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fund teacher training programs to ensure high-quality instruction.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Implement community educational workshops to emphasize the importance of education.</p><p><strong>How Contributions Will Be Used</strong></p><p>Every dollar collected makes a tangible difference:</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>$25,000</strong>&nbsp;for the construction and repair of classroom infrastructure.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>$20,000</strong>&nbsp;for providing learning materials such as textbooks, educational toys, and digital learning tools.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>$15,000</strong>&nbsp;for training and ongoing professional development of teachers.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>$15,000</strong>&nbsp;for educational workshops and community engagement programs.</p><p><strong>Transparency and Reporting</strong></p><p>To ensure the trust of all our supporters:</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will conduct monthly updates detailing how funds are being utilized and the progress of project milestones.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We will distribute annual reports with thorough details of expenditure and impact assessment.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Supporters will have direct communication channels with our managing teams for any inquiries about the usage of their donations.</p><p><strong>Why Now?</strong></p><p>The urgency to act is driven by a generation of children at risk of being left behind. Immediate action is essential to change the trajectory of these young lives and to build a foundational shift toward sustainable educational development in Lao PDR.</p>','<p>សេចក្តីផ្តើម សូមស្វាគមន៍មកកាន់យុទ្ធនាការ \"បំភ្លឺប្រទេសឡាវ\"! បេសកកម្មរបស់យើងគឺធ្វើឱ្យប្រសើរឡើងយ៉ាងខ្លាំងនូវលទ្ធភាពទទួលបាន និងគុណភាពនៃការអប់រំសម្រាប់កុមារនៅទូទាំងសាធារណរដ្ឋប្រជាធិបតេយ្យប្រជាមានិតឡាវ។ យុទ្ធនាការនេះត្រូវបានជំរុញដោយចក្ខុវិស័យដែលកុមារគ្រប់រូបនៅក្នុងប្រទេសឡាវ ដោយមិនគិតពីប្រវត្តិ ឬទីតាំងភូមិសាស្រ្តរបស់ពួកគេ មានលទ្ធភាពទទួលបានការអប់រំប្រកបដោយគុណភាព ដែលផ្តល់សិទ្ធិអំណាចដល់ពួកគេក្នុងការរួមចំណែកជាវិជ្ជមានដល់សហគមន៍របស់ពួកគេ។</p><p><strong>ការប្រកួតប្រជែង</strong></p><p>នៅ​ក្នុង​ប្រទេស​ឡាវ កុមារ​ជា​ច្រើន ជា​ពិសេស​អ្នក​ដែល​មក​ពី​សហគមន៍​ជន​បទ និង​សហគមន៍​ក្រីក្រ ប្រឈម​នឹង​ឧបសគ្គ​ក្នុង​ការ​ទទួល​បាន​ការ​អប់រំ។ ឧបសគ្គទាំងនេះរួមមាន កង្វះហេដ្ឋារចនាសម្ព័ន្ធសាលាត្រឹមត្រូវ សម្ភារៈសិក្សាមិនគ្រប់គ្រាន់ និងអវត្តមានគ្រូដែលមានសមត្ថភាព។ ជាលទ្ធផល វិសមភាពផ្នែកអប់រំនៅតែបន្ត កំណត់ឱកាសអនាគតសម្រាប់យុវជនរាប់មិនអស់។</p><p><strong>គោលបំណងរបស់យើង។</strong></p><p>\\Enlighten PDR\\ មានគោលបំណងដើម្បីទាញយកថាមពលនៃសហគមន៍ និងសប្បុរសធម៌ជាសកលដើម្បី៖</p><p>· សាងសង់ និងកែលម្អបរិក្ខារសាលានៅតំបន់សំខាន់ៗ។</p><p>· ផ្គត់ផ្គង់សាលារៀនជាមួយនឹងសម្ភារៈសិក្សាសំខាន់ៗ និងឧបករណ៍អប់រំទំនើប។</p><p>· ផ្តល់មូលនិធិដល់កម្មវិធីបណ្តុះបណ្តាលគ្រូ ដើម្បីធានាបាននូវការណែនាំប្រកបដោយគុណភាពខ្ពស់។</p><p>· អនុវត្តសិក្ខាសាលាអប់រំសហគមន៍ ដើម្បីបញ្ជាក់ពីសារៈសំខាន់នៃការអប់រំ។</p><p><strong>របៀបដែលការរួមចំណែកនឹងត្រូវបានប្រើប្រាស់</strong></p><p>រាល់ប្រាក់ដុល្លារដែលប្រមូលបានធ្វើឱ្យមានភាពខុសគ្នាជាក់ស្តែង៖</p><p>· <strong>$25,000</strong> សម្រាប់ការសាងសង់ និងជួសជុលហេដ្ឋារចនាសម្ព័ន្ធថ្នាក់រៀន។</p><p>· <strong>$20,000</strong> សម្រាប់ការផ្តល់សម្ភារៈសិក្សាដូចជា សៀវភៅសិក្សា ប្រដាប់ក្មេងលេងអប់រំ និងឧបករណ៍សិក្សាឌីជីថល។</p><p>· <strong>$15,000</strong> សម្រាប់ការបណ្តុះបណ្តាល និងការអភិវឌ្ឍន៍វិជ្ជាជីវៈរបស់គ្រូជាបន្តបន្ទាប់។</p><p>· <strong>$15,000</strong> សម្រាប់សិក្ខាសាលាអប់រំ និងកម្មវិធីចូលរួមសហគមន៍។</p><p><strong>តម្លាភាព និងរបាយការណ៍</strong></p><p>ដើម្បីធានាបាននូវទំនុកចិត្តពីអ្នកគាំទ្រទាំងអស់របស់យើង៖</p><p>· យើង​នឹង​ធ្វើ​ការ​ធ្វើ​ឱ្យ​ទាន់​សម័យ​ប្រចាំខែ​ដោយ​លម្អិត​អំពី​របៀប​ដែល​មូលនិធិ​ត្រូវ​បាន​គេ​ប្រើ​ប្រាស់ និង​ការ​រីក​ចម្រើន​នៃ​ការ​សម្រេច​ចិត្ត​របស់​គម្រោង។</p><p>· យើងនឹងចែកចាយរបាយការណ៍ប្រចាំឆ្នាំជាមួយនឹងព័ត៌មានលម្អិតអំពីការចំណាយ និងការវាយតម្លៃផលប៉ះពាល់។</p><p>· អ្នកគាំទ្រនឹងមានបណ្តាញទំនាក់ទំនងផ្ទាល់ជាមួយក្រុមគ្រប់គ្រងរបស់យើងសម្រាប់ការសាកសួរអំពីការប្រើប្រាស់ការបរិច្ចាគរបស់ពួកគេ។</p><p><strong>ហេតុអ្វីឥឡូវនេះ?</strong></p><p>ភាពបន្ទាន់ក្នុងការធ្វើសកម្មភាពត្រូវបានជំរុញដោយកុមារជំនាន់មួយដែលមានហានិភ័យនៃការត្រូវបានទុកចោល។ សកម្មភាពភ្លាមៗគឺចាំបាច់ណាស់ក្នុងការផ្លាស់ប្តូរគន្លងនៃជីវិតវ័យក្មេងទាំងនេះ និងដើម្បីកសាងការផ្លាស់ប្តូរជាមូលដ្ឋានឆ្ពោះទៅរកការអភិវឌ្ឍន៍ផ្នែកអប់រំប្រកបដោយនិរន្តរភាពក្នុងប្រទេសឡាវ។</p>','How Contributions Will Be Used\n\nEvery dollar collected makes a tangible difference:\n\n·     $25,000 for the construction and repair of classroom infrastructure.\n\n·     $20,000 for providing learning materials such as textbooks, educational toys, and digital learning tools.\n\n·     $15,000 for training and ongoing professional development of teachers.\n\n·     $15,000 for educational workshops and community engagement programs.','តើការរួមចំណែកនឹងត្រូវប្រើប្រាស់យ៉ាងដូចម្តេច រាល់ប្រាក់ដុល្លារដែលប្រមូលបានធ្វើឱ្យមានភាពខុសប្លែកគ្នាជាក់ស្តែង៖ · $25,000 សម្រាប់ការសាងសង់ និងជួសជុលហេដ្ឋារចនាសម្ព័ន្ធថ្នាក់រៀន។ · $20,000 សម្រាប់ការផ្តល់សម្ភារៈសិក្សាដូចជា សៀវភៅសិក្សា ប្រដាប់ក្មេងលេងអប់រំ និងឧបករណ៍សិក្សាឌីជីថល។ · $15,000 សម្រាប់ការបណ្តុះបណ្តាល និងការអភិវឌ្ឍន៍វិជ្ជាជីវៈរបស់គ្រូជាបន្តបន្ទាប់។ · $15,000 សម្រាប់សិក្ខាសាលាអប់រំ និងកម្មវិធីចូលរួមសហគមន៍។','How to Contribute\n\n1.   Donate: Every gift, no matter the size, brings us closer to our goal.\n\n2.   Share: Spread the word on social media, in community groups, and among peers to amplify the impact.\n\n3.   Partner: We invite businesses and other organizations to join as sponsors or collaborators.\n\nPerks for Contributors\n\nTo show our appreciation, we offer the following tokens of thanks:\n\n·     Donations of $100 - Receive a personalized thank you video from the students.\n\n·     Donations of $500 - Get listed on a dedicated ‘Wall of Honor’ on our online platforms and future school sites.\n\n·     Donations of $1,000 or more - Receive invitation to a virtual tour of completed projects and a meeting with key educators and students.','របៀបបរិច្ចាគ 1. បរិច្ចាគ៖ រាល់អំណោយមិនថាទំហំប៉ុនណាទេ នាំយើងខិតទៅជិតគោលដៅរបស់យើង។ 2. ចែករំលែក៖ ផ្សព្វផ្សាយពាក្យនៅលើប្រព័ន្ធផ្សព្វផ្សាយសង្គម ក្នុងក្រុមសហគមន៍ និងក្នុងចំណោមមិត្តភ័ក្តិ ដើម្បីពង្រីកផលប៉ះពាល់។ 3. ដៃគូ៖ យើងអញ្ជើញអាជីវកម្ម និងអង្គការផ្សេងទៀតឱ្យចូលរួមក្នុងនាមជាអ្នកឧបត្ថម្ភ ឬអ្នកសហការ។ អត្ថប្រយោជន៏សម្រាប់អ្នករួមចំណែក ដើម្បីបង្ហាញពីការដឹងគុណរបស់យើង យើងផ្តល់ជូននូវនិមិត្តសញ្ញានៃការដឹងគុណខាងក្រោម៖ · ការបរិច្ចាគ 100 ដុល្លារ - ទទួលបានវីដេអូអរគុណផ្ទាល់ខ្លួនពីសិស្ស។ · ការបរិច្ចាគចំនួន $500 - ទទួលបានចុះបញ្ជីនៅលើ &#39;Wall of Honor&#39; ដែលបានឧទ្ទិសនៅលើវេទិកាអនឡាញរបស់យើង និងគេហទំព័រសាលារៀននាពេលអនាគត។ · ការបរិច្ចាគ $1,000 ឬច្រើនជាងនេះ - ទទួលបានការអញ្ជើញឱ្យទៅដំណើរទេសចរណ៍និម្មិតនៃគម្រោងដែលបានបញ្ចប់ និងការប្រជុំជាមួយអ្នកអប់រំ និងសិស្សសំខាន់ៗ។','https://www.odboxventures.com/c/enlighten-lao-p',75000,'2024-07-21','2024-10-30','Thank you for your donate','សូមអរគុណចំពោះការបរិច្ចាគរបស់អ្នក។',2,'012358333','Dara Rachana','identity','011341696','Phnom Penh','Phnom Penh','sathapana','Dara Rachana','000123456','https://www.youtube.com/watch?v=aJt9lU8EmXc','[\"\\/campaign\\/CamGoTech_JfunupMJgn7gyUQC8sRX70FVPcdtx2dFGv3icWJU.jpg\"]',NULL,'/campaign/CamGoTech_PJi7IbDpeDghlQuNnAtA4wCIPxtKUrmtQg4hx8OM.jpg','/campaign/CamGoTech_heNbBxTimaMBnE60Z6qUTqV5TXy94TuXTme1obQE.jpg',NULL,'/campaign/CamGoTech_SoTy6F2v1HoRSvdwlDuKpJliaeHKy9wq5fd3OAyS.png','COMPLETE',0,1,'2024-07-21 00:52:48','2024-08-17 03:09:18',1,0,1,455.5,8677,9,0,0,1,'/qrcode/_qr_code.svg',0,0),(15,13,1,'Siem reap','siem reap','The waterfall is very beautiful','ទឹកធ្លាក់ស្អាតណាស់','<p>reger</p>','<p>ងរ</p>','trhr','េរងេងរេ','gregre','ងេរេ','https://demo.cdafund.org/',10000,'2020-03-04','2025-05-25','Thank','សូមអរគុណ',1,'08565664','dbdb','identity','3536474575','siem reap','siem reap','sathapana','fhrthh','54747474',NULL,'[\"\\/campaign\\/CamGoTech_rlQSlwqz7N0pnaFqEYNiwfqCUHlxC7sGp9x93jAd.jpg\"]','/campaign/CamGoTech_VBKadxiGyC0N5oONlE5oSd6UQgiF72q1DpMooeqp.jpg','/campaign/CamGoTech_H9kbX7Q6j8QW9oMm8ZALQbtA4r7PBrWXFwThqEV7.jpg','/campaign/CamGoTech_P7FhT9EDfr81LhCE7KgyWqeL4FAKJw5y0vQNtr1W.jpg',NULL,'/campaign/CamGoTech_Nqlv4ozEmBIGxItH0OWcFqcrjerorGQtz1erGNpJ.jpg','COMPLETE',0,1,'2024-07-24 00:38:45','2024-08-13 05:25:39',0,0,1,3410,34300,4,0,0,0,'/qrcode/The waterfall is very beautiful_qr_code.svg',0,0),(16,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2024-08-11 23:06:42','2024-08-11 23:06:42',0,0,0,0,0,0,0,0,NULL,NULL,0,0),(17,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2024-08-11 23:11:02','2024-08-11 23:11:02',0,0,0,0,0,0,0,0,NULL,NULL,0,0),(18,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2024-08-11 23:11:33','2024-08-11 23:11:33',0,0,0,0,0,0,0,0,NULL,NULL,0,0),(19,8,1,'Phnom Penh, Cambodia','Phnom Penh','Phanith Test','រៃអង្គាសប្រាក់សម្រាប់ទឹកស្អាត និងសុខភាព','<p>1</p>','<p>1</p>','1','1','1','1','1',10000,'2024-09-07','2024-09-12','1','1',1,'061727877','Phanith Phoem','identity','12345678','Phnom Penh, Cambodia','Phnom Penh','sathapana','Phanith Phoem','123456789',NULL,'[\"\\/campaign\\/CamGoTech_6BWRT1B7gpvO6zt36UfgzKeD7SdC7zD9Ab8nv7GU.jpg\"]',NULL,'/campaign/CamGoTech_GpZz8fiFoUiIMv26qshf1ZL7RqZqV6Yb18DduCQr.png','/campaign/CamGoTech_miHdmuk0bFenfivGWNIPqSGxjQgde3GGdD6sYUBu.png',NULL,'/campaign/CamGoTech_8IZTC6v3k0HfOcxZCKr4PhcmPEzwWytUTUK0ygTS.jpg','FAILED',0,1,'2024-09-07 06:51:11','2024-09-07 07:12:05',0,0,0,0,0,0,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint NOT NULL,
  `campaignId` bigint NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,8,12,'This is good for children','2024-08-23 21:59:43','2024-08-23 21:59:43'),(2,8,12,'This is good campaign','2024-08-25 05:33:19','2024-08-25 05:33:19'),(3,8,12,'This is good campaign','2024-08-25 05:33:54','2024-08-25 05:33:54'),(4,8,12,'Hello','2024-08-25 05:39:43','2024-08-25 05:39:43'),(5,8,12,'hh','2024-08-25 05:40:22','2024-08-25 05:40:22'),(6,8,12,'This me','2024-08-25 05:40:32','2024-08-25 05:40:32'),(7,8,12,'Hello world','2024-08-25 05:40:41','2024-08-25 05:40:41'),(8,8,12,'how to donate this campaign','2024-08-25 05:41:00','2024-08-25 05:41:00'),(9,8,12,'asdfsdfasdafdasdf','2024-08-25 05:52:58','2024-08-25 05:52:58'),(10,8,12,'Show more','2024-08-25 05:54:14','2024-08-25 05:54:14'),(11,8,12,'Testing','2024-08-25 05:54:57','2024-08-25 05:54:57'),(12,8,12,'Hiding','2024-08-25 05:55:13','2024-08-25 05:55:13'),(13,8,11,'Comment List','2024-08-25 05:56:28','2024-08-25 05:56:28');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,11,2,'Daily',100,5,105,'CREDIT_DEBIT_CARD','T',1,'2024-07-19 03:27:19','2024-07-18 20:27:19','2024-07-18 20:27:19'),(2,11,2,'Daily',100,5,105,'KHQR','T',1,'2024-07-19 03:32:31','2024-07-18 20:32:31','2024-07-18 20:32:31'),(3,11,2,'Daily',100,25,125,'CREDIT_DEBIT_CARD','111',1,'2024-07-19 03:34:53','2024-07-18 20:34:53','2024-07-18 20:34:53'),(4,11,2,'Yearly',100,5,105,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 04:05:01','2024-07-18 21:05:01','2024-07-18 21:05:01'),(5,11,2,'Monthly',100,25,125,'CREDIT_DEBIT_CARD','11',1,'2024-07-19 04:07:40','2024-07-18 21:07:40','2024-07-18 21:07:40'),(6,11,2,'Yearly',100,50,150,'CREDIT_DEBIT_CARD','ss',1,'2024-07-19 04:11:25','2024-07-18 21:11:25','2024-07-18 21:11:25'),(7,11,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','qwerty',1,'2024-07-19 04:24:41','2024-07-18 21:24:41','2024-07-18 21:24:41'),(8,1,2,'Yearly',100,5,105,'CREDIT_DEBIT_CARD','ss',1,'2024-07-19 04:25:28','2024-07-18 21:25:28','2024-07-18 21:25:28'),(9,1,2,'Yearly',2,0.1,2.1,'SATHAPANA_PAY','qwerty',1,'2024-07-19 04:28:33','2024-07-18 21:28:33','2024-07-18 21:28:33'),(10,1,2,'Daily',1,0.01,1.01,'CREDIT_DEBIT_CARD','1',0,'2024-07-19 04:31:23','2024-07-18 21:31:23','2024-07-18 21:31:23'),(11,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','Tip',1,'2024-07-19 04:54:13','2024-07-18 21:54:13','2024-07-18 21:54:13'),(12,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 05:02:03','2024-07-18 22:02:03','2024-07-18 22:02:03'),(13,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','s',1,'2024-07-19 05:02:26','2024-07-18 22:02:26','2024-07-18 22:02:26'),(14,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD','hello',1,'2024-07-19 06:51:25','2024-07-18 23:51:25','2024-07-18 23:51:25'),(15,1,2,'Daily',1,0.05,1.05,'CREDIT_DEBIT_CARD','q',1,'2024-07-19 06:55:21','2024-07-18 23:55:21','2024-07-18 23:55:21'),(16,1,2,'Daily',1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 07:20:23','2024-07-19 00:20:24','2024-07-19 00:20:24'),(17,1,2,'Daily',1,0,1,'KHQR',NULL,1,'2024-07-19 07:24:16','2024-07-19 00:24:16','2024-07-19 00:24:16'),(18,11,2,'Daily',99,0,99,'SATHAPANA_PAY',NULL,1,'2024-07-19 07:29:15','2024-07-19 00:29:15','2024-07-19 00:29:15'),(19,1,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 07:31:18','2024-07-19 00:31:18','2024-07-19 00:31:18'),(20,1,2,'Daily',10,0,10,'SATHAPANA_PAY',NULL,1,'2024-07-19 08:22:47','2024-07-19 01:22:47','2024-07-19 01:22:47'),(21,11,2,'Daily',100,0,100,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:34:15','2024-07-19 01:34:15','2024-07-19 01:34:15'),(22,1,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:34:59','2024-07-19 01:34:59','2024-07-19 01:34:59'),(23,1,2,'Daily',100,50,150,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 08:36:36','2024-07-19 01:36:36','2024-07-19 01:36:36'),(24,1,2,'Daily',50,0,50,'CREDIT_DEBIT_CARD','a',1,'2024-07-19 09:14:37','2024-07-19 02:14:37','2024-07-19 02:14:37'),(25,1,2,'Daily',10,0.5,10.5,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 09:15:34','2024-07-19 02:15:34','2024-07-19 02:15:34'),(26,2,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD','10',1,'2024-07-19 09:17:25','2024-07-19 02:17:25','2024-07-19 02:17:25'),(27,2,2,'Daily',20,1,21,'KHQR','Note',1,'2024-07-19 11:57:11','2024-07-19 04:57:11','2024-07-19 04:57:11'),(28,3,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 11:59:14','2024-07-19 04:59:14','2024-07-19 04:59:14'),(29,2,2,'Daily',2,0.1,2.1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:01:34','2024-07-19 05:01:34','2024-07-19 05:01:34'),(30,2,2,'Daily',2,0,2,'SATHAPANA_PAY',NULL,1,'2024-07-19 12:02:41','2024-07-19 05:02:41','2024-07-19 05:02:41'),(31,2,2,'Daily',2,0,2,'CREDIT_DEBIT_CARD','f',1,'2024-07-19 12:03:34','2024-07-19 05:03:34','2024-07-19 05:03:34'),(32,2,2,'Daily',2,0,2,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:05:47','2024-07-19 05:05:47','2024-07-19 05:05:47'),(33,2,2,'Daily',100,0,100,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:06:21','2024-07-19 05:06:21','2024-07-19 05:06:21'),(34,2,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:07:16','2024-07-19 05:07:16','2024-07-19 05:07:16'),(35,2,2,'Daily',10,0.5,10.5,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:07:59','2024-07-19 05:07:59','2024-07-19 05:07:59'),(36,2,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 12:08:36','2024-07-19 05:08:36','2024-07-19 05:08:36'),(37,1,2,'Daily',100,5,105,'CREDIT_DEBIT_CARD','Donation',1,'2024-07-19 12:28:46','2024-07-19 05:28:46','2024-07-19 05:28:46'),(38,1,2,'Daily',100,25,125,'CREDIT_DEBIT_CARD','Test',1,'2024-07-19 12:44:00','2024-07-19 05:44:00','2024-07-19 05:44:00'),(39,11,2,'Daily',10,2.5,12.5,'CREDIT_DEBIT_CARD','Donation',1,'2024-07-19 12:54:19','2024-07-19 05:54:19','2024-07-19 05:54:19'),(40,11,2,'Daily',10,0,10,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-19 13:40:11','2024-07-19 06:40:11','2024-07-19 06:40:11'),(41,3,4,'Monthly',100,50,150,'CREDIT_DEBIT_CARD','God bless you,',1,'2024-07-20 08:13:24','2024-07-20 01:13:24','2024-07-20 01:13:24'),(42,11,4,'Weekly',10,0,10,'CREDIT_DEBIT_CARD','God bless you.',1,'2024-07-20 12:53:47','2024-07-20 05:53:47','2024-07-20 05:53:47'),(43,11,5,'Daily',20,5,25,'SATHAPANA_PAY',NULL,0,'2024-07-21 11:40:32','2024-07-21 04:40:32','2024-07-21 04:40:32'),(44,11,5,'Weekly',50,0,50,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-21 11:41:08','2024-07-21 04:41:08','2024-07-21 04:41:08'),(45,1,4,'Daily',1,0.05,1.05,'CREDIT_DEBIT_CARD',NULL,0,'2024-07-21 13:21:11','2024-07-21 06:21:11','2024-07-21 06:21:11'),(46,1,4,'Daily',1,0.5,10.5,'CREDIT_DEBIT_CARD','God bless.',0,'2024-07-21 13:25:34','2024-07-21 06:25:34','2024-07-21 06:25:34'),(47,1,4,'Daily',1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-21 13:32:19','2024-07-21 06:32:19','2024-07-21 06:32:19'),(48,1,4,'Daily',2,5,205,'SATHAPANA_PAY',NULL,1,'2024-07-21 13:32:50','2024-07-21 06:32:50','2024-07-21 06:32:50'),(49,3,4,NULL,1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-21 13:36:09','2024-07-21 06:36:09','2024-07-21 06:36:09'),(50,12,NULL,'Daily',100,10,110,'KHQR',NULL,1,'2024-07-21 14:16:43','2024-07-21 07:16:43','2024-07-21 07:16:43'),(51,12,NULL,'Daily',100,0,100,'KHQR','hi',1,'2024-07-21 15:41:53','2024-07-21 08:41:53','2024-07-21 08:41:53'),(52,10,NULL,NULL,1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-21 17:40:42','2024-07-21 10:40:42','2024-07-21 10:40:42'),(53,14,NULL,NULL,100,5,105,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-22 10:38:56','2024-07-22 03:38:56','2024-07-22 03:38:56'),(54,14,5,NULL,1000,0,1000,'SATHAPANA_PAY',NULL,1,'2024-07-22 13:36:06','2024-07-22 06:36:06','2024-07-22 06:36:06'),(55,14,NULL,'Daily',100,5,105,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-22 13:37:06','2024-07-22 06:37:06','2024-07-22 06:37:06'),(56,12,9,NULL,10,0,10,'KHQR',NULL,1,'2024-07-22 13:50:50','2024-07-22 06:50:50','2024-07-22 06:50:50'),(57,14,NULL,NULL,20,2,22,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-24 02:39:50','2024-07-23 19:39:50','2024-07-23 19:39:50'),(58,15,13,NULL,100,0,100,'SATHAPANA_PAY',NULL,1,'2024-07-24 07:42:32','2024-07-24 00:42:32','2024-07-24 00:42:32'),(59,12,NULL,NULL,5,0,5,'KHQR','hi',1,'2024-07-26 03:33:48','2024-07-25 20:33:48','2024-07-25 20:33:48'),(60,12,NULL,NULL,5,0,5,'CREDIT_DEBIT_CARD','hi',1,'2024-07-26 03:34:24','2024-07-25 20:34:24','2024-07-25 20:34:24'),(61,15,NULL,NULL,50,0,50,'KHQR',NULL,1,'2024-07-28 14:37:04','2024-07-28 07:37:04','2024-07-28 07:37:04'),(62,12,NULL,NULL,1,0,1,'SATHAPANA_PAY',NULL,1,'2024-07-29 05:58:50','2024-07-28 22:58:50','2024-07-28 22:58:50'),(63,15,NULL,NULL,34100,3410,37510,'CREDIT_DEBIT_CARD','m',1,'2024-07-29 06:07:46','2024-07-28 23:07:46','2024-07-28 23:07:46'),(64,15,19,'Weekly',50,0,50,'CREDIT_DEBIT_CARD',NULL,1,'2024-07-30 08:50:09','2024-07-30 01:50:09','2024-07-30 01:50:09'),(65,12,NULL,NULL,3455,345.5,3800.5,'CREDIT_DEBIT_CARD','pl[pl',1,'2024-07-31 04:42:42','2024-07-30 21:42:42','2024-07-30 21:42:42'),(66,11,NULL,NULL,500,0,500,'CREDIT_DEBIT_CARD',NULL,1,'2024-08-02 14:36:51','2024-08-02 07:36:51','2024-08-02 07:36:51'),(67,12,5,NULL,5000,100,5000100,'CREDIT_DEBIT_CARD',NULL,1,'2024-08-03 15:09:33','2024-08-03 08:09:33','2024-08-03 08:09:33'),(68,12,8,NULL,1,0,1,'CREDIT_DEBIT_CARD',NULL,1,'2024-08-17 10:09:18','2024-08-17 03:09:18','2024-08-17 03:09:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,3,'APPROVE',11,NULL,'2024-07-20 04:54:59','2024-07-19 21:54:59','2024-07-19 21:54:59'),(2,3,'APPROVE',11,NULL,'2024-07-20 07:53:56','2024-07-20 00:53:56','2024-07-20 00:53:56'),(3,3,'APPROVE',3,NULL,'2024-07-20 08:05:51','2024-07-20 01:05:51','2024-07-20 01:05:51'),(4,3,'APPROVE',2,NULL,'2024-07-20 08:06:03','2024-07-20 01:06:03','2024-07-20 01:06:03'),(5,3,'APPROVE',1,NULL,'2024-07-20 08:06:16','2024-07-20 01:06:16','2024-07-20 01:06:16'),(6,4,'DONATION',3,41,'2024-07-20 08:13:24','2024-07-20 01:13:24','2024-07-20 01:13:24'),(7,4,'DONATION',11,42,'2024-07-20 12:53:48','2024-07-20 05:53:48','2024-07-20 05:53:48'),(8,3,'APPROVE',11,NULL,'2024-07-21 07:18:18','2024-07-21 00:18:18','2024-07-21 00:18:18'),(9,3,'APPROVE',11,NULL,'2024-07-21 07:19:07','2024-07-21 00:19:07','2024-07-21 00:19:07'),(10,5,'DONATION',11,43,'2024-07-21 11:40:32','2024-07-21 04:40:32','2024-07-21 04:40:32'),(11,5,'DONATION',11,44,'2024-07-21 11:41:08','2024-07-21 04:41:08','2024-07-21 04:41:08'),(12,3,'APPROVE',10,NULL,'2024-07-21 12:21:14','2024-07-21 05:21:14','2024-07-21 05:21:14'),(13,5,'APPROVE',12,NULL,'2024-07-21 12:27:38','2024-07-21 05:27:38','2024-07-21 05:27:38'),(14,4,'DONATION',1,45,'2024-07-21 13:21:11','2024-07-21 06:21:11','2024-07-21 06:21:11'),(15,4,'DONATION',1,46,'2024-07-21 13:25:34','2024-07-21 06:25:34','2024-07-21 06:25:34'),(16,4,'DONATION',1,47,'2024-07-21 13:32:19','2024-07-21 06:32:19','2024-07-21 06:32:19'),(17,4,'DONATION',1,48,'2024-07-21 13:32:50','2024-07-21 06:32:50','2024-07-21 06:32:50'),(18,4,'DONATION',3,49,'2024-07-21 13:36:09','2024-07-21 06:36:09','2024-07-21 06:36:09'),(19,5,'APPROVE',14,NULL,'2024-07-21 15:01:31','2024-07-21 08:01:31','2024-07-21 08:01:31'),(20,5,'DONATION',14,54,'2024-07-22 13:36:06','2024-07-22 06:36:06','2024-07-22 06:36:06'),(21,9,'DONATION',12,56,'2024-07-22 13:50:50','2024-07-22 06:50:50','2024-07-22 06:50:50'),(22,3,'APPROVE',10,NULL,'2024-07-23 07:11:57','2024-07-23 00:11:57','2024-07-23 00:11:57'),(23,3,'APPROVE',3,NULL,'2024-07-23 07:12:33','2024-07-23 00:12:33','2024-07-23 00:12:33'),(24,3,'APPROVE',2,NULL,'2024-07-23 07:12:41','2024-07-23 00:12:41','2024-07-23 00:12:41'),(25,3,'APPROVE',10,NULL,'2024-07-23 07:13:10','2024-07-23 00:13:10','2024-07-23 00:13:10'),(26,3,'APPROVE',11,NULL,'2024-07-23 07:13:51','2024-07-23 00:13:51','2024-07-23 00:13:51'),(27,5,'APPROVE',14,NULL,'2024-07-23 07:20:41','2024-07-23 00:20:41','2024-07-23 00:20:41'),(28,5,'APPROVE',14,NULL,'2024-07-23 07:20:55','2024-07-23 00:20:55','2024-07-23 00:20:55'),(29,5,'APPROVE',14,NULL,'2024-07-23 07:21:02','2024-07-23 00:21:02','2024-07-23 00:21:02'),(30,5,'APPROVE',14,NULL,'2024-07-23 07:21:11','2024-07-23 00:21:11','2024-07-23 00:21:11'),(31,13,'APPROVE',15,NULL,'2024-07-24 07:40:42','2024-07-24 00:40:42','2024-07-24 00:40:42'),(32,13,'DONATION',15,58,'2024-07-24 07:42:32','2024-07-24 00:42:32','2024-07-24 00:42:32'),(33,13,'APPROVE',15,NULL,'2024-07-24 07:47:37','2024-07-24 00:47:37','2024-07-24 00:47:37'),(34,13,'APPROVE',15,NULL,'2024-07-24 07:48:01','2024-07-24 00:48:01','2024-07-24 00:48:01'),(35,5,'APPROVE',12,NULL,'2024-07-24 08:12:12','2024-07-24 01:12:12','2024-07-24 01:12:12'),(36,3,'APPROVE',9,NULL,'2024-07-28 05:48:18','2024-07-27 22:48:18','2024-07-27 22:48:18'),(37,2,'APPROVE',5,NULL,'2024-07-28 05:48:51','2024-07-27 22:48:51','2024-07-27 22:48:51'),(38,2,'APPROVE',8,NULL,'2024-07-28 05:50:36','2024-07-27 22:50:36','2024-07-27 22:50:36'),(39,13,'APPROVE',15,NULL,'2024-07-28 10:12:00','2024-07-28 03:12:00','2024-07-28 03:12:00'),(40,5,'APPROVE',12,NULL,'2024-07-28 10:18:06','2024-07-28 03:18:06','2024-07-28 03:18:06'),(41,5,'APPROVE',12,NULL,'2024-07-28 10:26:48','2024-07-28 03:26:48','2024-07-28 03:26:48'),(42,5,'APPROVE',12,NULL,'2024-07-28 10:27:01','2024-07-28 03:27:01','2024-07-28 03:27:01'),(43,5,'APPROVE',12,NULL,'2024-07-28 11:03:10','2024-07-28 04:03:10','2024-07-28 04:03:10'),(44,13,'APPROVE',15,NULL,'2024-07-28 11:03:56','2024-07-28 04:03:56','2024-07-28 04:03:56'),(45,3,'APPROVE',11,NULL,'2024-07-28 11:05:29','2024-07-28 04:05:29','2024-07-28 04:05:29'),(46,3,'APPROVE',10,NULL,'2024-07-28 11:05:55','2024-07-28 04:05:55','2024-07-28 04:05:55'),(47,3,'APPROVE',10,NULL,'2024-07-28 11:06:19','2024-07-28 04:06:19','2024-07-28 04:06:19'),(48,3,'APPROVE',11,NULL,'2024-07-28 11:06:25','2024-07-28 04:06:25','2024-07-28 04:06:25'),(49,3,'APPROVE',10,NULL,'2024-07-28 11:08:02','2024-07-28 04:08:02','2024-07-28 04:08:02'),(50,19,'DONATION',15,64,'2024-07-30 08:50:09','2024-07-30 01:50:09','2024-07-30 01:50:09'),(51,5,'DONATION',12,67,'2024-08-03 15:09:33','2024-08-03 08:09:33','2024-08-03 08:09:33'),(52,5,'APPROVE',12,NULL,'2024-08-06 11:52:09','2024-08-06 04:52:09','2024-08-06 04:52:09'),(53,8,'DONATION',12,68,'2024-08-17 10:09:18','2024-08-17 03:09:18','2024-08-17 03:09:18'),(54,8,'APPROVE',19,NULL,'2024-09-07 14:06:35','2024-09-07 07:06:35','2024-09-07 07:06:35'),(55,8,'APPROVE',19,NULL,'2024-09-07 14:09:09','2024-09-07 07:09:09','2024-09-07 07:09:09'),(56,8,'APPROVE',19,NULL,'2024-09-07 14:11:03','2024-09-07 07:11:03','2024-09-07 07:11:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (123,'2023_10_20_020156_create_project_categories_table',1),(131,'2014_10_12_000000_create_users_table',2),(132,'2014_10_12_100000_create_password_reset_tokens_table',2),(133,'2019_08_19_000000_create_failed_jobs_table',2),(134,'2019_12_14_000001_create_personal_access_tokens_table',2),(135,'2023_10_19_072713_create_performances_table',2),(136,'2023_10_19_095945_create_news_table',2),(137,'2023_10_20_020156_create_campaign_categories_table',2),(138,'2023_10_20_040811_create_projects_table',2),(139,'2023_10_23_075315_create_testimonials_table',2),(140,'2023_10_23_091524_create_technologies_table',2),(141,'2023_10_23_102456_create_banners_table',2),(142,'2023_10_27_134236_create_site_settings_table',2),(143,'2023_11_09_015606_create_page_banners_table',2),(144,'2024_06_28_053113_create_verification_codes_table',2),(149,'2024_07_06_041520_create_campaigns_table',3),(150,'2024_07_16_163711_create_donations_table',4),(151,'2024_07_20_043922_create_feeds_table',5),(152,'2024_08_10_022327_create_user_shares_table',6),(154,'2024_08_12_115915_create_user_likes_table',7),(155,'2024_08_15_100511_create_comments_table',8),(156,'2024_08_31_024910_create_teams_table',9),(159,'2024_09_05_031507_create_withdraws_table',10);
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
INSERT INTO `news` VALUES (1,'How it all began?','alsdfjla','Angkor Kids Center was born without anything in its mouth. It is just standing on its decayed . . .','asdfljl','<p>Angkor Kids Center was born without anything in its mouth. It is just standing on its decayed and unsecured feet with only the indigenous, volunteer, and dedicated team growing up from one single person!</p>\n<p>The infamous souvenir from the genocidal regime of Khmer Rouge is destruction to both humanity and public infrastructure resources. Somrong village where a young boy Samnang was living in had also one of the most seriously suffered. With a limited remaining resources permitted Samnang to finish his primary school. Due to the historical and cultural values, Cambodia start to be more glorious to the outer world, in parallel, English has become popular, especially for the people living in the tourist designations such as temples of Angkor areas.</p>\n<p>You might know that Buddhist monasteries are the place to survive the Cambodian culture and tradition. Due to the unavailable educational infrastructure around his village, Samnang had mobilized to live with the monks for his capital development. During the three years he could continue his governmental school, the religious study, and the dreamed skill which is ENGLISH.</p>\n<p>As regulated by the pagoda, Samnang had been ordinated to be the monk. The year of 2002 after his six month ordination, Samnang abandoned his monkhood to continue his study. To practise his English, as requested by the village at his community, Samnang initiated an English class under his brother&rsquo;s house, and he got USD0.75 participatory support from the students&rsquo; families which it really permitted him to pay for his English school fee.</p>\n<p>How was the AKC being founded?</p>\n<p>In 2004, Samnang meet a German couple while he was working as a mototaxi driver, and taking them on tour around the temples of Angkor. His biography had touched the couple deeply, as a result they paid him to go to a good English school in the town center, supplied him with a basic living cost; furthermore Samnang has been paid a vocational course on Travel and Tourism in 2005-2006. After his graduation, he was offered a job in one of the most famous tour operator based in Siem Reap. To get himself familiar with the new city life atmosphere, Samnang forced to give up his teaching in 2006.</p>\n<p>Fortunately, one of the outstanding students, Ms Salet Nhey took her teachers&rsquo; role and moved the class to her house with a fundamental support from Plan Cambodia Organization. She had done the best job, consequently in 2008, she passed a scholarship of a restaurant and bar in a vocational training school similar to Samnang&rsquo;s, and in the following year she got a job working for a luxury cruise from Cambodia to Vietnam and vice versa. Again, Salet forced to leave her class, and her younger sister, Salin NHEY has been volunteered to replace. Under Salin&rsquo;s direction, the project has improved a lot from time to time.</p>\n<p>2009 was the year of initiative of founding Angkor Kids Center (AKC) as a community-based center! After three year successful job, Samnang could spare his time to help the center and named it to Angkor Kids Center as a present to his German adopted family, his own family and the whole community itself.</p>\n<p>With the German team including the couple who had give him a bright life, AKC has developed itself significantly. Apart from the primary project of the English Language Classes Project, it has also initiated an environmentally-friendly project called the AKC Green Project.</p>','',1,'/news/CamGoTech_gz9s6RFIgcqPXX26tRJSK83odQrvkHJme326uZOI.jpg','NEWS',1,1,'2024-07-31 23:09:07','2024-08-06 05:09:05'),(2,'Donation is Hope for Poor Childrens in Africa','2','Donation is Hope for Poor Childrens in Africa','2','<p class=\"news-details__text-one\">Tliq is notm hendr erit a augue insu image pellen tes que id erat quis sollicitud. Lorem ipsum dolor sit amet, consectetur adipiscing ullam blandit hendrerit faucibus suspendisse. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<p class=\"news-details__text-two\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ley of type and scrambled it to make a type specimen book.</p>\n<p class=\"news-details__text-three\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version.</p>','',1,'/news/CamGoTech_5FEgj53TMiVvKSTn9T0WYwbNSCLluisqYqC8OPY9.png','EVENT',1,1,'2024-07-31 23:40:41','2024-08-06 05:14:22'),(3,'How Does Malnutrition Affect Children?','','How Does Malnutrition Affect Children?','','<p class=\"news-details__text-one\">Tliq is notm hendr erit a augue insu image pellen tes que id erat quis sollicitud. Lorem ipsum dolor sit amet, consectetur adipiscing ullam blandit hendrerit faucibus suspendisse. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<p class=\"news-details__text-two\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ley of type and scrambled it to make a type specimen book.</p>\n<p class=\"news-details__text-three\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version.</p>','',1,'/news/CamGoTech_KThDy1krwdR2VprgGoVkK51vTVHXe1tyyWUVtyk3.jpg','NEWS',2,1,'2024-08-02 19:14:51','2024-08-06 05:12:34');
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
INSERT INTO `page_banners` VALUES (1,'/pageBanner-profile/CamGoTech_5Fntw4dWkSZbdAqmwn62PcoBSXNYT2juNdep8Ro4.jpg','CONTACT_PAGE',1,'2024-08-02 16:01:24','2024-08-21 06:07:12'),(2,'/pageBanner-profile/CamGoTech_bXhItWIfwZs2iogL7RgE6HDHYEhfyh4LxohJdafn.jpg','ABOUT_PAGE',1,'2024-08-02 16:01:59','2024-08-21 06:07:40'),(3,'/pageBanner-profile/CamGoTech_hTO67QSESgj8gqiTp80ERyBunySb1fNi8pAv0JeI.jpg','EVENT_PAGE',1,'2024-08-02 16:02:38','2024-08-21 06:08:09'),(4,'/pageBanner-profile/CamGoTech_uDEzSxpbgD2JFW89nIDttioK3qfRFZS1RJKFNMp7.jpg','NEWS_PAGE',1,'2024-08-02 16:02:53','2024-08-21 06:18:15'),(5,'/pageBanner-profile/CamGoTech_mcZCVPCNtFsYDUC3F29QPYwpfsFEAvxkOhBPRA27.jpg','FEED_PAGE',1,'2024-08-02 16:03:44','2024-08-21 06:17:18'),(6,'/pageBanner-profile/CamGoTech_66ptAczJdFtlwZOEnKm3i6gMMhiEAUeXHDA281DA.jpg','DONORS_PAGE',1,'2024-08-02 16:04:00','2024-08-21 06:16:19'),(7,'/pageBanner-profile/CamGoTech_3Egz49oLKbszmYzCXUoS1EFuA7uk63loDbu6WBjy.jpg','RAISE_FUND_PAGE',1,'2024-08-02 16:04:18','2024-08-21 06:19:46'),(8,'/pageBanner-profile/CamGoTech_eqrNf8P1REIpeFLXnZ26F0WAif5b5vjcHjRHpnN9.jpg','CAMPAIGN_PAGE',1,'2024-08-02 16:04:39','2024-08-21 06:25:17'),(9,'/pageBanner-profile/CamGoTech_B21v1l6beR6RiRVlt6Bh7SwSYZxRMFjO8emt0xvw.jpg','TERM_CONDITION',1,'2024-08-02 16:12:25','2024-08-21 06:24:52'),(10,'/pageBanner-profile/CamGoTech_0GCxhMhE9VmsioN8QbMf0bwDACxQnst094Jf9WMk.jpg','PRIVACY_POLICY',1,'2024-08-02 16:12:59','2024-08-21 06:24:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Partner 1','/partner-profile/CamGoTech_yGq7OFcGVAIuaHn1s74PrFEEan6NJ606IAxycejX.png',1,1,'2024-08-02 02:05:08','2024-08-06 04:57:18'),(2,'Partner 2','/partner-profile/CamGoTech_59ge1iUy2QQWzc18tvEPlkuTVCGCvCIRYSxvqDWK.png',2,1,'2024-08-02 19:51:09','2024-08-06 04:57:29'),(3,'Partner 3','/partner-profile/CamGoTech_V0LxdAZk2FFTjtw2XhxTTmdtp9AG1DnxxdLPxZLL.png',1,1,'2024-08-02 19:51:26','2024-08-06 04:57:48'),(4,'Partner 4','/partner-profile/CamGoTech_eGzVHZ7VaeHi61YqShZTkHUoPWnJoF5WN12gQqs4.png',4,1,'2024-08-06 04:58:04','2024-08-06 04:58:04'),(5,'Partner 5','/partner-profile/CamGoTech_GITVLErJUM72yFpayzfI4PG9xPnntx8WeMEJMpOH.png',5,1,'2024-08-06 04:58:15','2024-08-06 04:58:15');
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
INSERT INTO `performances` VALUES (2,'Goal','','Finally, set your goals and what you hope to achieve from your campaign.','','/performance/CamGoTech_jolLOkckaFphIcEjZ0xtIT79fKMxGfmqK0MNlHRV.png',3,1,'2024-08-02 19:56:48','2024-08-06 07:20:18'),(3,'Photos & Video','','Donors are more likely to connect with your campaign with story telling visuals.','','/performance/CamGoTech_wzL6ZAsODbzfDe8wMaOOjgiOzWqPOfAlLxYrBM6G.png',2,1,'2024-08-02 19:57:23','2024-08-06 07:20:03'),(4,'Your Story','','Provide your potential donors with a moving and poweful cause.','','/performance/CamGoTech_SmJDZyaF9KVuqmaZLtCVIDiTwKDCLZraDWCq9cF9.png',1,1,'2024-08-02 19:57:49','2024-08-06 07:19:25'),(5,'Basic Information','','Enter your personal information so you can verify your account to continue','','/performance/CamGoTech_58x297xB7TAwQQ6bIO7wXiio5dz5pWXDLQVZnmLL.png',4,1,'2024-08-02 19:58:11','2024-08-06 07:19:46');
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
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `site_settings_chk_1` CHECK (json_valid(`content`))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES (1,'CONTACT','{\"email1\": \"info@cdafund.org\", \"email2\": \"\", \"address\": \"No. 148, Preah Sihanouk Blvd, Chamkarmon, Phnom Penh, Cambodia.\", \"embedMap\": \"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250151.1627751833!2d104.72537693631722!3d11.579654004334014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109513dc76a6be3%3A0x9c010ee85ab525bb!2sPhnom%20Penh!5e0!3m2!1sen!2skh!4v1698767656628!5m2!1sen!2skh\", \"addressKh\": \"២\", \"pageTitle\": \"We love to hear from our <br /> happy customers\", \"thumbnail\": \"/site-setting/CamGoTech_yvflGC7dEJl0GTIAe31TcVNVsltFrxBdBhhLBAQ1.jpg\", \"pageTitleKh\": \"២\", \"facebookLink\": \"https://www.facebook.com/\", \"linkedinLink\": \"https://linkedin.com/feed/\", \"phoneNumber1\": \"+85512637686\", \"phoneNumber2\": \"+855 88 488 6422\", \"telegramLink\": \"https://web.telegram.org/\", \"instagramLink\": \"https://www.instagram.com/\", \"pageDescription\": \"There are many variations of passages of available but the majority have suffered alteration in some form, by injected humou or randomised words even slightly believable.\", \"pageDescriptionKh\": \"២\"}','2024-08-01 15:13:41','2024-08-05 13:58:06'),(2,'HOME_PAGE','{\"cardDesc1\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardDesc2\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardDesc3\": \"Lorem ipsum is simply free text available amet, consectetuer adipiscing elit. There are not many passages of ipsum.\", \"cardIcon1\": \"icon-fast-food\", \"cardIcon2\": \"icon-water\", \"cardIcon3\": \"icon-health-check\", \"ourDonors\": \"Help them whenever they are in need\", \"thumbnail\": \"/site-setting/CamGoTech_2jNX5rAUaT3Rhfwod8djXXYtY7O2MNYreQ6rhrSl.jpg\", \"bannerDesc\": \"Join the community <br /> to give education for children\", \"cardLabel1\": \"Donate\", \"cardLabel2\": \"Donate\", \"cardLabel3\": \"Donate\", \"cardTitle1\": \"Healthy Food\", \"cardTitle2\": \"Clean Water\", \"cardTitle3\": \"Medical Treatment\", \"bannerLabel\": \"Learn More\", \"cardDescKh1\": \"២\", \"cardDescKh2\": \"២\", \"cardDescKh3\": \"២\", \"cardIsShow1\": true, \"cardIsShow2\": true, \"cardIsShow3\": true, \"cardLinkTo1\": \"/projects\", \"cardLinkTo2\": \"/projects\", \"cardLinkTo3\": \"/projects\", \"ourDonorsKh\": \"Help them whenever they are in need\", \"bannerDescKh\": \"២\", \"bannerLinkTo\": \"/about\", \"cardLabelKh1\": \"២\", \"cardLabelKh2\": \"២\", \"cardLabelKh3\": \"២\", \"cardTitleKh1\": \"២\", \"cardTitleKh2\": \"២\", \"cardTitleKh3\": \"២\", \"thumbnailTwo\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"bannerLabelKh\": \"២\", \"latestProject\": \"Find the popular cause and donate them\", \"thumbnailFive\": \"/site-setting/CamGoTech_bbexmkW9WDQMfbrtq4h9MXyk6cTGGFx0hL2eyfYY.jpg\", \"thumbnailFour\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"getDailyUpdate\": \"Latest news & articles directly coming from the blog\", \"thumbnailThree\": \"/site-setting/CamGoTech_UB5P7kectEDe7LkA6GjfiQvc15bHwaSDyb9roTPS.jpg\", \"latestProjectKh\": \"២\", \"getDailyUpdateKh\": \"Latest news & articles directly coming from the blog\"}','2024-08-01 15:21:14','2024-08-02 17:41:44'),(3,'ABOUT_PAGE','{\"introTitle\":\"We believe that we can save more lifes\",\"introTitleKh\":\"1\",\"introDesc\":\"We are trusted by our clients and have a reputation for the best services in the field. Lorem ipsum is simply free text dolor sit amett consectetur adipiscing elit. It is a long established fact that a reader will be distracted by the readable content of a page.\",\"introDescKh\":\"1\",\"introHighlight\":\"Halpes is the largest global crowdfunding community in the world\",\"introHighlightKh\":\"1\",\"successfulCampaign\":\"90\",\"amazingDonors\":\"50\",\"donorTrusted\":\"98750\",\"thumbnailTwo\":\"\\/site-setting\\/CamGoTech_KS43B2TsJwnm1hp1cWM3doJWi9y8oPEiW3Nt4BYI.jpg\",\"cardTitle1\":\"VISION\",\"cardTitleKh1\":\"1\",\"cardDesc1\":\"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\",\"cardDescKh1\":\"1\",\"cardIcon1\":\"fas fa-eye\",\"cardTitle2\":\"MISSION\",\"cardTitleKh2\":\"1\",\"cardDesc2\":\"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\",\"cardDescKh2\":\"1\",\"cardIcon2\":\"fas fa-bullseye\",\"cardTitle3\":\"VALUES\",\"cardTitleKh3\":\"1\",\"cardDesc3\":\"CDA aims to provide an open platform for people to raise funds for those most at need. CDA is a not-for-profit platform that prides itself on making sure 100% of funds raised reaches its beneficiary.\",\"cardDescKh3\":\"1\",\"cardIcon3\":\"far fa-gem\",\"bannerDesc\":\"Join the community to give education for children\",\"bannerDescKh\":\"1\",\"bannerLabel\":\"Learn More\",\"bannerLabelKh\":\"1\",\"bannerLinkTo\":\"https:\\/\\/demo.cdafund.org\\/donors\\/\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_pngR6DPCIXiaideBM0af8Fg7Gj35xvzOKGaw0hNX.jpg\",\"totalDonation\":\"100K\",\"projectClosed\":\"70\",\"happyPeople\":\"1K\",\"ourVolunteer\":\"30\",\"professionalVolunteer\":\"Meet the best team behind our success story\",\"professionalVolunteerKh\":\"1\",\"ourDonors\":\"Help them whenever they are in need\",\"ourDonorsKh\":\"\",\"thumbnailFive\":\"\\/site-setting\\/CamGoTech_ooSUyGmvk5WUfv0VSerBKzwh3k06vZ503dbigdnH.jpg\"}','2024-08-02 15:54:51','2024-08-06 05:02:35'),(4,'TERM_SERVICE','{\"description\":\"<h1>Children Development Association<\\/h1>\\n<p>&nbsp;<\\/p>\\n<h4><strong>Donation-Based Crowdfunding Policy<\\/strong><\\/h4>\\n<p><strong>Introduction<\\/strong><\\/p>\\n<p>Children Development Association (the \\\"Company\\\") acknowledges the benefits and opportunities provided by donation-based crowdfunding. This document outlines our policy governing the solicitation, management, and utilization of funds obtained through donation-based crowdfunding platforms. This policy ensures that all such fundraising activities align with the company&rsquo;s values, objectives, and legal obligations, maintaining the integrity and reputation of the business.<\\/p>\\n<p><strong>Policy Statement<\\/strong><\\/p>\\n<p>The Company supports engaging in donation-based crowdfunding activities that benefit the community and advance the environmental, social, and economic perspectives aligning with our core business values and ethics. However, this needs to be approached responsibly and transparently to uphold our company\'s reputation and ensure compliance with relevant legal and fiscal responsibilities.<\\/p>\\n<p><strong>Refund Policy Elements<\\/strong><\\/p>\\n<p>Establishing a robust and transparent refund policy is critical for maintaining trust and customer satisfaction on platforms like&nbsp;<a href=\\\"http:\\/\\/www.odboxventures.com\\/\\\">www.odboxventures.com<\\/a>, where transactions involve crowdfunding for projects and initiatives. A well-crafted refund policy helps clarify the circumstances under which refunds will be issued, setting clear expectations for both donors and campaign creators.<\\/p>\\n<h3>Refund Policy Elements for a Donation-Based Crowdfunding Platform<\\/h3>\\n<p><strong>A.&nbsp;&nbsp;&nbsp;&nbsp; Scope and Eligibility:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Project Types Covered:<\\/strong>&nbsp;Specify which types of funding (donations, equity, or debt) are eligible for refunds.<\\/li>\\n<li><strong>Time Frame for Claims:<\\/strong>&nbsp;Clearly outline the time period within which refund requests must be made.<\\/li>\\n<li><strong>Conditionality:<\\/strong>&nbsp;State conditions under which refunds are applicable, such as failure to meet campaign goals, fraud, or misrepresentation.<\\/li>\\n<\\/ul>\\n<p><strong>B.&nbsp;&nbsp;&nbsp;&nbsp; Refunding Process:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Initiation Process:<\\/strong>&nbsp;Provide a simple, clear process for users to request refunds. This could involve filling out a form or sending a request via email to a designated support contact.<\\/li>\\n<li><strong>Required Documentation:<\\/strong>&nbsp;List any required documentation that must accompany a refund request, such as proof of the transaction.<\\/li>\\n<li><strong>Verification Period:<\\/strong>&nbsp;Specify how long it takes to process a refund request. Include information about any verification steps that will be performed.<\\/li>\\n<\\/ul>\\n<p><strong>C.&nbsp;&nbsp;&nbsp;&nbsp; Circumstances Under which Refunds are Issued:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Failed Projects:<\\/strong>&nbsp;Define failure (e.g., not achieving the funding goal within the set timeline).<\\/li>\\n<li><strong>Misuse of Funds:<\\/strong>&nbsp;Outline actions in case funds are not used for their stated purpose.<\\/li>\\n<li><strong>Cancellation by Creator:<\\/strong>&nbsp;Detail the policy if the campaign is cancelled by the creator before the funding period expires.<\\/li>\\n<li><strong>Legal Issues:<\\/strong>&nbsp;Mention any refunds due to legal action that impedes the project&rsquo;s development.<\\/li>\\n<\\/ul>\\n<p><strong>D.&nbsp;&nbsp;&nbsp;&nbsp; Method of Refund:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Original Mode of Payment:<\\/strong>&nbsp;Generally, refunds should be processed using the original mode of payment unless otherwise stated.<\\/li>\\n<li><strong>Processing Time:<\\/strong>&nbsp;Clearly state how long after the approval of the refund claim the funds will be returned to the donor.<\\/li>\\n<\\/ul>\\n<p><strong>E.&nbsp;&nbsp;&nbsp;&nbsp; Exceptions:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Non-refundable Fees:<\\/strong>&nbsp;Specify any fees that may not be refundable, such as processing or transaction fees.<\\/li>\\n<li><strong>Partial Refunds:<\\/strong>&nbsp;Explain scenarios where only partial refunds will be granted.<\\/li>\\n<\\/ul>\\n<p><strong>F.&nbsp;&nbsp;&nbsp;&nbsp; Dispute Resolution:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Contact Information:<\\/strong>&nbsp;Provide contact details for users to discuss refund issues.<\\/li>\\n<li><strong>Escalation Procedures:<\\/strong>&nbsp;Outline steps for dispute resolution if the refunds are contested by either party.<\\/li>\\n<li><strong>External Arbitration:<\\/strong>&nbsp;Mention if and when an external party (like a mediator or arbitrator) might be involved.<\\/li>\\n<\\/ul>\\n<p><strong>G.&nbsp;&nbsp;&nbsp;&nbsp; Changes to the Refund Policy:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Notification of Changes:<\\/strong>&nbsp;Ensure to communicate any changes to the refund policy effectively to all users.<\\/li>\\n<li><strong>Effectivity Date:<\\/strong>&nbsp;State when the new changes will take effect.<\\/li>\\n<\\/ul>\\n<p><strong>H.&nbsp;&nbsp;&nbsp;&nbsp; Policy Application:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Retrospectivity:<\\/strong>&nbsp;Clarify whether the new policy affects past transactions and how it interacts with previous versions.<\\/li>\\n<\\/ul>\\n<p><strong>I.&nbsp;&nbsp;&nbsp;&nbsp; Implementation Guidelines<\\/strong>:<\\/p>\\n<p>To effectively enforce and manage this refund policy,&nbsp;<a href=\\\"http:\\/\\/www.odboxventures.com\\/\\\">www.odboxventures.com<\\/a>&nbsp;should:<\\/p>\\n<ul>\\n<li><strong>Educate Users:<\\/strong>&nbsp;Ensure that all campaign creators and donors are fully aware of the refund policy. This could be done through FAQs, policy pages, or during the signup process.<\\/li>\\n<li><strong>Automate Processing:<\\/strong>&nbsp;Where possible, use technology to manage and streamline refund requests to reduce administrative overhead and increase response times.<\\/li>\\n<\\/ul>\\n<ul>\\n<li><strong>Monitor and Review:<\\/strong>&nbsp;Regularly review the policy and its implementation to adapt to new challenges or changes in the crowdfunding landscape.<\\/li>\\n<\\/ul>\\n<p><strong>Conclusion<\\/strong><\\/p>\\n<p>Donation-based crowdfunding can significantly benefit our projects and community initiatives provided it is managed with the utmost care, transparency, and ethical consideration. It is the responsibility of everyone at Children Development Association to uphold and abide by the principles stated in this policy.<\\/p>\",\"descriptionKh\":\"<p>\\u179b\\u200b\\u1780\\u17d2\\u1781\\u200b\\u1781\\u200b\\u178e\\u17d2\\u178c \\u1793\\u17b7\\u1784\\u200b\\u179b\\u200b\\u1780\\u17d2\\u1781\\u200b\\u1781\\u200b\\u178e\\u17d2\\u178c<\\/p>\"}','2024-08-21 05:05:31','2024-08-21 05:26:31'),(5,'PRIVACY_POLICY','{\"description\":\"<h1>Children Development Association<\\/h1>\\n<p>&nbsp;<\\/p>\\n<h4><strong>Donation-Based Crowdfunding Policy<\\/strong><\\/h4>\\n<p><strong>Introduction<\\/strong><\\/p>\\n<p>Children Development Association (the \\\"Company\\\") acknowledges the benefits and opportunities provided by donation-based crowdfunding. This document outlines our policy governing the solicitation, management, and utilization of funds obtained through donation-based crowdfunding platforms. This policy ensures that all such fundraising activities align with the company&rsquo;s values, objectives, and legal obligations, maintaining the integrity and reputation of the business.<\\/p>\\n<p><strong>Policy Statement<\\/strong><\\/p>\\n<p>The Company supports engaging in donation-based crowdfunding activities that benefit the community and advance the environmental, social, and economic perspectives aligning with our core business values and ethics. However, this needs to be approached responsibly and transparently to uphold our company\'s reputation and ensure compliance with relevant legal and fiscal responsibilities.<\\/p>\\n<p><strong>Refund Policy Elements<\\/strong><\\/p>\\n<p>Establishing a robust and transparent refund policy is critical for maintaining trust and customer satisfaction on platforms like&nbsp;<a href=\\\"http:\\/\\/www.odboxventures.com\\/\\\">www.odboxventures.com<\\/a>, where transactions involve crowdfunding for projects and initiatives. A well-crafted refund policy helps clarify the circumstances under which refunds will be issued, setting clear expectations for both donors and campaign creators.<\\/p>\\n<h3>Refund Policy Elements for a Donation-Based Crowdfunding Platform<\\/h3>\\n<p><strong>A.&nbsp;&nbsp;&nbsp;&nbsp; Scope and Eligibility:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Project Types Covered:<\\/strong>&nbsp;Specify which types of funding (donations, equity, or debt) are eligible for refunds.<\\/li>\\n<li><strong>Time Frame for Claims:<\\/strong>&nbsp;Clearly outline the time period within which refund requests must be made.<\\/li>\\n<li><strong>Conditionality:<\\/strong>&nbsp;State conditions under which refunds are applicable, such as failure to meet campaign goals, fraud, or misrepresentation.<\\/li>\\n<\\/ul>\\n<p><strong>B.&nbsp;&nbsp;&nbsp;&nbsp; Refunding Process:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Initiation Process:<\\/strong>&nbsp;Provide a simple, clear process for users to request refunds. This could involve filling out a form or sending a request via email to a designated support contact.<\\/li>\\n<li><strong>Required Documentation:<\\/strong>&nbsp;List any required documentation that must accompany a refund request, such as proof of the transaction.<\\/li>\\n<li><strong>Verification Period:<\\/strong>&nbsp;Specify how long it takes to process a refund request. Include information about any verification steps that will be performed.<\\/li>\\n<\\/ul>\\n<p><strong>C.&nbsp;&nbsp;&nbsp;&nbsp; Circumstances Under which Refunds are Issued:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Failed Projects:<\\/strong>&nbsp;Define failure (e.g., not achieving the funding goal within the set timeline).<\\/li>\\n<li><strong>Misuse of Funds:<\\/strong>&nbsp;Outline actions in case funds are not used for their stated purpose.<\\/li>\\n<li><strong>Cancellation by Creator:<\\/strong>&nbsp;Detail the policy if the campaign is cancelled by the creator before the funding period expires.<\\/li>\\n<li><strong>Legal Issues:<\\/strong>&nbsp;Mention any refunds due to legal action that impedes the project&rsquo;s development.<\\/li>\\n<\\/ul>\\n<p><strong>D.&nbsp;&nbsp;&nbsp;&nbsp; Method of Refund:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Original Mode of Payment:<\\/strong>&nbsp;Generally, refunds should be processed using the original mode of payment unless otherwise stated.<\\/li>\\n<li><strong>Processing Time:<\\/strong>&nbsp;Clearly state how long after the approval of the refund claim the funds will be returned to the donor.<\\/li>\\n<\\/ul>\\n<p><strong>E.&nbsp;&nbsp;&nbsp;&nbsp; Exceptions:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Non-refundable Fees:<\\/strong>&nbsp;Specify any fees that may not be refundable, such as processing or transaction fees.<\\/li>\\n<li><strong>Partial Refunds:<\\/strong>&nbsp;Explain scenarios where only partial refunds will be granted.<\\/li>\\n<\\/ul>\\n<p><strong>F.&nbsp;&nbsp;&nbsp;&nbsp; Dispute Resolution:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Contact Information:<\\/strong>&nbsp;Provide contact details for users to discuss refund issues.<\\/li>\\n<li><strong>Escalation Procedures:<\\/strong>&nbsp;Outline steps for dispute resolution if the refunds are contested by either party.<\\/li>\\n<li><strong>External Arbitration:<\\/strong>&nbsp;Mention if and when an external party (like a mediator or arbitrator) might be involved.<\\/li>\\n<\\/ul>\\n<p><strong>G.&nbsp;&nbsp;&nbsp;&nbsp; Changes to the Refund Policy:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Notification of Changes:<\\/strong>&nbsp;Ensure to communicate any changes to the refund policy effectively to all users.<\\/li>\\n<li><strong>Effectivity Date:<\\/strong>&nbsp;State when the new changes will take effect.<\\/li>\\n<\\/ul>\\n<p><strong>H.&nbsp;&nbsp;&nbsp;&nbsp; Policy Application:<\\/strong><\\/p>\\n<ul>\\n<li><strong>Retrospectivity:<\\/strong>&nbsp;Clarify whether the new policy affects past transactions and how it interacts with previous versions.<\\/li>\\n<\\/ul>\\n<p><strong>I.&nbsp;&nbsp;&nbsp;&nbsp; Implementation Guidelines<\\/strong>:<\\/p>\\n<p>To effectively enforce and manage this refund policy,&nbsp;<a href=\\\"http:\\/\\/www.odboxventures.com\\/\\\">www.odboxventures.com<\\/a>&nbsp;should:<\\/p>\\n<ul>\\n<li><strong>Educate Users:<\\/strong>&nbsp;Ensure that all campaign creators and donors are fully aware of the refund policy. This could be done through FAQs, policy pages, or during the signup process.<\\/li>\\n<li><strong>Automate Processing:<\\/strong>&nbsp;Where possible, use technology to manage and streamline refund requests to reduce administrative overhead and increase response times.<\\/li>\\n<\\/ul>\\n<ul>\\n<li><strong>Monitor and Review:<\\/strong>&nbsp;Regularly review the policy and its implementation to adapt to new challenges or changes in the crowdfunding landscape.<\\/li>\\n<\\/ul>\\n<p><strong>Conclusion<\\/strong><\\/p>\\n<p>Donation-based crowdfunding can significantly benefit our projects and community initiatives provided it is managed with the utmost care, transparency, and ethical consideration. It is the responsibility of everyone at Children Development Association to uphold and abide by the principles stated in this policy.<\\/p>\",\"descriptionKh\":\"<p>\\u1782\\u17c4\\u179b\\u200b\\u1780\\u17b6\\u200b\\u179a\\u200b\\u178e\\u17cd\\u200b\\u17af\\u200b\\u1780\\u200b\\u1787\\u200b\\u1793\\u200b\\u1797\\u17b6\\u200b\\u1796<\\/p>\"}','2024-08-21 05:25:48','2024-08-21 05:36:52');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameKh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `descKh` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebookLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagramLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedinLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegramLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Phanith','ផានិត','Name','ខ្ញុំឈ្មោះ','/campaign-categories/CamGoTech_pcP0KLgR2aJPHLkYcEla7v5O3xhkOC9d8OrMIBYL.jpg','','','','',1,1,'2024-08-31 02:07:13','2024-08-31 02:07:13'),(2,'T','TK','T','T','/campaign-categories/CamGoTech_oSMjw9GPLB56dKnFyl4eL29jE3msftUqjZDQ1qGp.jpg','1','1','1','1',1,1,'2024-08-31 02:43:41','2024-08-31 02:43:41');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
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
-- Table structure for table `user_likes`
--

DROP TABLE IF EXISTS `user_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint NOT NULL,
  `campaignId` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_likes`
--

LOCK TABLES `user_likes` WRITE;
/*!40000 ALTER TABLE `user_likes` DISABLE KEYS */;
INSERT INTO `user_likes` VALUES (3,8,15,'2024-08-12 05:51:18','2024-08-12 05:51:18'),(4,8,12,'2024-08-12 09:07:09','2024-08-12 09:07:09');
/*!40000 ALTER TABLE `user_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shares`
--

DROP TABLE IF EXISTS `user_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_shares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint NOT NULL,
  `campaignId` bigint NOT NULL,
  `shareWith` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shares`
--

LOCK TABLES `user_shares` WRITE;
/*!40000 ALTER TABLE `user_shares` DISABLE KEYS */;
INSERT INTO `user_shares` VALUES (1,8,15,'FACEBOOK','2024-08-11 23:13:58','2024-08-11 23:13:58'),(2,8,15,'FACEBOOK','2024-08-11 23:16:52','2024-08-11 23:16:52'),(3,8,15,'TELEGRAM','2024-08-11 23:18:32','2024-08-11 23:18:32'),(4,8,15,'TWITTER','2024-08-11 23:18:40','2024-08-11 23:18:40'),(5,8,12,'FACEBOOK','2024-08-11 23:22:18','2024-08-11 23:22:18'),(6,8,15,'TWITTER','2024-08-12 05:51:04','2024-08-12 05:51:04');
/*!40000 ALTER TABLE `user_shares` ENABLE KEYS */;
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
  `joinAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `totalDonation` double NOT NULL DEFAULT '0',
  `loginWith` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `memberType` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idType` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCardBack` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCardFront` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idNumber` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User',NULL,NULL,'admin@gmail.com',NULL,NULL,'$2y$10$.xpP7YSR/p.uZ3hHwjjZVuZnK1Vbv.svy.EJx3roWMLrnK9OHFbP6',1,1,1,'2024-08-17 08:28:41',0,1,'2024-07-01 05:06:50','2024-07-01 05:06:50','ADMIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Phanith Phoem','Phanith','Phoem','phanith1827@gmail.com',NULL,NULL,'$2y$10$zfYNT0644WicBBsG.YEbje0/pHHCBSFQ4mleao99X86mKZaTk8UIG',0,0,1,'2024-09-07 06:08:32',22.5,2,'2024-07-05 08:33:56','2024-08-06 22:20:35','MEMBER','PASSPORT',NULL,NULL,'/user-profile/300x200.png','ABA ACCOUNT','123-456-789',NULL),(3,'Camgotech Cambodia','Camgotech','Cambodia','camgotech@gmail.com',NULL,'/user-profile/logo.31259d5b.png','$2y$10$KadS5NKsE4EJMwMJZDZzeuDJuPj//zMzERtPwNJ7286jS5eWyXeEq',0,0,1,'2024-09-07 05:51:37',0,2,'2024-07-16 06:42:18','2024-08-17 01:29:07','ORGANIZATION','ID_CARD','/user-profile/300x200.png','/user-profile/300x200.png','/user-profile/300x200.png','ABA ACCOUNT','123-456-789',NULL),(4,'Chan Sok','Chan','Sok','phanith0656@gmail.com',NULL,NULL,'$2y$10$t/dJqsjMUTIMAFM6DvThWuujM.ART7d/kcbbV8LR.CrVziZG3FOAq',0,0,1,'2024-08-17 08:28:09',171.55,2,'2024-07-20 00:48:28','2024-07-21 06:36:09','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'VUTHA TEP','VUTHA','TEP',NULL,'+85569565956','/user-profile/CamGoTech_NeJhTWBx2t5OoKjaMTheFHhRWq6Wk7y62LzoAX5s.jpg','$2y$10$mynHmP02jnHa2Z96rCfaEebqnqLQLxorbyjF/sJ0Um3GaPzafkmiS',0,0,1,'2024-08-17 08:28:09',6175,1,'2024-07-21 00:14:56','2024-08-03 08:09:33','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'PHOEM Phanith','PHOEM','Phanith','phanith1826@gmail.com',NULL,'/user-profile/CamGoTech_x2U6wHOEloj1HYUOzqpEN9jEyUYcDgftplfEroDT.webp','$2y$10$.xpP7YSR/p.uZ3hHwjjZVuZnK1Vbv.svy.EJx3roWMLrnK9OHFbP6',0,0,1,'2024-09-07 06:28:07',1,3,'2024-07-22 05:35:11','2024-09-07 06:28:07','MEMBER','PASSPORT','','','/user-profile/300x200.png','ABA ACCOUNT PHANITH','851-987-624','123456789'),(9,'Seri Sok','Seri','Sok','sokseri168@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocLbvrcwE6McK6QhBVcg43lv4SKuZfnYdSghXMh61J9v4uKlBw=s96-c','$2y$10$IzmMqzbz2GqDHacu7dESoei3qxYTU9yzN23K9FV7miKEMZoj5LmE2',0,0,1,'2024-08-17 08:28:09',10,3,'2024-07-22 06:49:33','2024-07-22 06:50:50','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Vutha Tep','Vutha','Tep','tv.vutha@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocKs6xPshjZUeBwJZ1TpuwGiP0B2nb3O1GPfekVhNnIdDRWYe0Mp=s96-c','$2y$10$mH/o13Shtk/MDZHFbmvYCOHt.aP8smNFp88Rfxbz.RlrDKjsi3JQe',0,0,1,'2024-08-17 08:27:52',0,3,'2024-07-22 07:01:51','2024-08-06 02:20:02','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Katom kh','Katom','kh','katomkh1826@gmail.com',NULL,NULL,'$2y$10$79hK/i9C0G8lywwCIyAqAufidP5JE5qGZPjtmmwDqmQD2dOL2Dm7S',0,0,1,'2024-08-17 08:28:09',0,2,'2024-07-22 20:40:56','2024-07-22 20:40:56','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Sovannara SOK','Sovannara','SOK','sok.sovannara1199@gmail.com',NULL,NULL,'$2y$10$5R34Y2.xpPMvSTsTGaOpKOba5SJAgNkRpfkNd7L0qZHNZUtrI4Jxa',0,0,1,'2024-08-17 08:28:09',0,2,'2024-07-22 20:48:33','2024-07-22 20:48:33','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Pheak Bronh','Pheak','Bronh','impheak2000@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocKFh6Io7VRK46o4ST0SVBrYfPA1isGCGNgRPFAJ7RC21C39m-w=s96-c','$2y$10$1NTWACVgf89r0PrVS5UOWuDRrhUQD9u7A1bDatxeb4vKMWD.CMo0G',0,0,1,'2024-08-17 08:28:09',100,3,'2024-07-24 00:28:17','2024-07-24 00:42:32','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Ada thaka','Tha','thaka','akdathaka@gmail.com',NULL,'https://res.cloudinary.com/dufghzvge/image/upload/v1719182746/default-profile-picture-avatar-photo-placeholder-vector-illustration-default-profile-picture-avatar-photo-placeholder-vector-189495158_hyq2qt.webp','$2y$10$pcjoa9/whjpXROZKrzFR0ugnnXJF1jWVjroIPulvQGe6jQ8.b6FvG',0,0,1,'2024-08-17 08:28:09',0,2,'2024-07-28 02:33:50','2024-07-28 04:00:45','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Akda Thaka','Akda','Thaka','akdathaka@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocKXT6h2alTxAPu1jnNWhpSEvt1W3mV2ZeD37W7b5vShgP5hBA=s96-c','$2y$10$XXnW7uHdvu8SqHyrEfVziO81xCcRpKql92.Gxvip.Or2iRNYfdXyS',0,0,1,'2024-08-17 08:28:09',0,3,'2024-07-28 02:35:04','2024-07-28 02:35:04','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'GgP Pop','GgP','Pop',NULL,'+85581298467','/user-profile/CamGoTech_cQMHQiZyOCHrxlTe35G31sA9Iu098L37gB7MFnx7.jpg','$2y$10$7h2lagya0P4Y8i4L5ZyXk.cPZveRlx4N8wFdyblWmcSgD8QWq6U36',0,0,1,'2024-08-17 08:28:09',0,1,'2024-07-28 03:31:24','2024-08-06 23:25:17','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'OPG GGEA','OPG','GGEA',NULL,'+855061727871',NULL,'$2y$10$77C.0yOhiI5EZ8TlIWjkouefPxIpqfbcFTnzX5CCSJfJuPP4h44/2',0,0,1,'2024-08-17 08:28:09',0,1,'2024-07-28 03:33:47','2024-07-28 03:33:47','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Achu PL','Achu','PL','achu.pl0305@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocLSiA4njQk2_a_btI2KC1SE-I-W2CPzJXMhVXR4JrafxtFHjQ=s96-c','$2y$10$t1wGafBmeSBoyTtiEqHHl.vmbp7gw1L1TWTnGPYEI3IryYuo/Eb9G',0,0,1,'2024-08-17 08:28:09',0,3,'2024-07-28 03:56:42','2024-07-28 03:56:42','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'soung sin','soung','sin','sinsoung99@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocLkCdeCp_Xg2Wu9e0K5NuAw8UtrUK5e56ohbU59M9IgVijPX_a5=s96-c','$2y$10$aSTcKumRqWPLCPQ6C/qVAOdAi/6dJj.oLQTywKKNqZwZb1xmdsZVi',0,0,1,'2024-08-17 08:28:09',50,3,'2024-07-28 23:09:11','2024-07-30 01:50:09','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Boreth Chee','Boreth','Chee','cheeboreth716@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocL6D_0GWjdd2oQaPVPxd8vycZzANzH71B8fN1HFDnAhGICr5A=s96-c','$2y$10$/.XPZLEcda9Ozg0GbgM8He6M3uFJ3iiJZIDVVqJVge3gmaWZAWH/G',0,0,1,'2024-08-17 08:28:09',0,3,'2024-07-29 02:11:33','2024-07-29 02:11:33','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Phanith Phoem','Phanith','Phoem',NULL,'+85581298461',NULL,'$2y$10$TuzxM/9J8WXdiEqkZf8YIeHSI9sbpFYia/TJ6rIDEne9t0sipfMcG',0,0,1,'2024-08-17 00:50:51',0,1,'2024-07-30 05:27:01','2024-08-17 00:50:51','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Phanith Phoem','Phanith','Phoem',NULL,'+85581298461',NULL,'$2y$10$TOgkNB/nIzo8NKCY5.uJKueYYyXOmJHVmVo3rFFtLJaEoHhIKGkty',0,0,1,'2024-08-17 00:50:43',0,1,'2024-07-30 22:52:24','2024-08-17 00:50:43','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Vutha Camgotech','Vutha','Camgotech','camgotech@gmail.com',NULL,NULL,'$2y$10$aUbv.9cAwpQL42RJ5fpSL./290.awoRC/7xkog2ollQXVFgRXFsay',0,0,1,'2024-08-06 22:24:27',0,2,'2024-08-06 22:24:27','2024-08-06 22:24:27','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Vutha Camgotech','Vutha','Camgotech',NULL,'+85512358333',NULL,'$2y$10$lA0tkOtYyI/693QWbpnI4uH98at0sFr6Qu0dbCAva8K9EZ6HOg/L6',0,0,1,'2024-08-07 06:33:28',0,1,'2024-08-06 23:31:19','2024-08-06 23:33:28','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Dara Camgotech','Dara','Camgotech',NULL,'+855889770888','/user-profile/CamGoTech_P4U8YKfhG8yoOLsNB37fyo84eHQjyr5aaSQqF1pr.png','$2y$10$/PQgJOaXqslwg7FBkz.LQOsUIicNy9gL5O0Ap/t.8/g5fax8MWIs.',0,0,1,'2024-08-07 06:41:57',0,1,'2024-08-06 23:39:53','2024-08-06 23:41:57','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Chan Tyda','Chan','Tyda','jonh12@gmail.com',NULL,NULL,'$2y$10$bDRvwSIypJF8bOYZ9jAq1OcicG/o9eguxR/E/pd3QSXNba3rso3v2',0,0,1,'2024-08-17 01:10:10',0,2,'2024-08-17 01:10:10','2024-08-17 01:10:10','MEMBER',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Organization 1','Organization 1',NULL,NULL,'+85581298467',NULL,'$2y$10$GjqeodBXQYQf4/ff0uTRqO8cbYGb7kqfyo/D7Dp/dA.qLZ9lUkVHO',0,0,1,'2024-08-17 02:50:41',0,2,'2024-08-17 01:23:44','2024-08-17 02:50:41','ORGANIZATION',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Phanith Phoem',NULL,NULL,'phanith.admin@gmail.com','+85512435687',NULL,'$2y$10$vsk62moJAt/klWlxzPUaiOONrQzF6eQj4LEFdIMQfyiJRsD/Hlmhy',0,1,1,'2024-08-17 10:28:07',0,1,'2024-08-17 03:28:07','2024-08-17 03:28:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_codes`
--

LOCK TABLES `verification_codes` WRITE;
/*!40000 ALTER TABLE `verification_codes` DISABLE KEYS */;
INSERT INTO `verification_codes` VALUES (3,'$2y$10$MKQMdBEyyXB6ytZreoyoyOJqnwDlgTdgjifPG1mqRr8FGqYVK/.Me','tvutha007@gmail.com','2024-07-21 01:09:58','2024-07-21 00:09:58','2024-07-21 00:09:58'),(5,'$2y$10$rak5IvqO6KRi/seAtidw..mo0BgYinRYPe9MQQ828wUDfS974X4N6','cda.cheeboreth@gmail.com','2024-07-21 11:37:28','2024-07-21 10:37:28','2024-07-21 10:37:28'),(6,'$2y$10$CqRRfPWDVIS3Hpq8Nlawye.K7TOFTqZXLTn6qe2Fs3rO0qrj2nEHu','sokseri168@gmail.com','2024-07-22 07:42:25','2024-07-22 06:42:25','2024-07-22 06:42:25');
/*!40000 ALTER TABLE `verification_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraws` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `campaignId` bigint NOT NULL,
  `requestBy` bigint NOT NULL,
  `approveBy` bigint DEFAULT NULL,
  `requestAmount` double NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdrawStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestDate` timestamp NOT NULL,
  `approveDate` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-08 11:39:21
