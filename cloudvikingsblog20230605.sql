-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: cloudvikingsblog
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `followeduser` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `follows_user_id_foreign` (`user_id`),
  KEY `follows_followeduser_foreign` (`followeduser`),
  CONSTRAINT `follows_followeduser_foreign` FOREIGN KEY (`followeduser`) REFERENCES `users` (`id`),
  CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,2,5,'2023-06-04 19:10:06','2023-06-04 19:10:06'),(3,5,4,'2023-06-04 19:15:51','2023-06-04 19:15:51'),(7,5,3,'2023-06-04 21:05:08','2023-06-04 21:05:08'),(8,5,2,'2023-06-04 21:05:26','2023-06-04 21:05:26'),(9,1,5,'2023-06-04 21:49:58','2023-06-04 21:49:58'),(10,1,3,'2023-06-04 21:50:09','2023-06-04 21:50:09'),(11,1,4,'2023-06-04 21:50:16','2023-06-04 21:50:16'),(12,1,2,'2023-06-04 21:50:24','2023-06-04 21:50:24'),(13,2,4,'2023-06-04 21:50:55','2023-06-04 21:50:55'),(14,2,1,'2023-06-04 21:51:04','2023-06-04 21:51:04'),(15,2,3,'2023-06-04 21:51:12','2023-06-04 21:51:12'),(16,3,1,'2023-06-04 21:51:38','2023-06-04 21:51:38'),(17,3,2,'2023-06-04 21:51:46','2023-06-04 21:51:46'),(18,3,4,'2023-06-04 21:52:27','2023-06-04 21:52:27');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_03_23_195458_create_posts_table',1),(6,'2023_03_24_202023_add_isadmin_to_users_table',1),(7,'2023_03_24_212317_create_follows_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'2023-06-03 17:01:48','2023-06-03 17:01:48','Sonnet 29','When, in disgrace with fortune and men’s eyes,\r\nI all alone beweep my outcast state,\r\nAnd trouble deaf heaven with my bootless cries,\r\nAnd look upon myself and curse my fate,\r\nWishing me like to one more rich in hope,\r\nFeatured like him, like him with friends possessed,\r\nDesiring this man’s art and that man’s scope,\r\nWith what I most enjoy contented least;\r\nYet in these thoughts myself almost despising,\r\nHaply I think on thee, and then my state,\r\n(Like to the lark at break of day arising\r\nFrom sullen earth) sings hymns at heaven’s gate;\r\n       For thy sweet love remembered such wealth brings\r\n       That then I scorn to change my state with kings.',1),(2,'2023-06-03 17:04:26','2023-06-03 17:04:26','Golden Keys','A bunch of golden keys is mine\r\nTo make each day with gladness shine.\r\n\r\n\"Good morning!\" that\'s the golden key\r\nThat unlocks every door for me.\r\n\r\nWhen evening comes, \"Good night!\" I say,\r\nAnd close the door of each glad day.\r\n\r\nWhen at the table \"If you please\"\r\nI take from off my bunch of keys.\r\n\r\nWhen friends give anything to me,\r\nI\'ll use the little \"Thank you\" key.\r\n\r\n\"Excuse me,\" \"Beg your pardon,\" too,\r\nWhen by mistake some harm I do.\r\n\r\nOr if unkindly harm I\'ve given,\r\nWith \"Forgive me\" key I\'ll be forgiven.\r\n\r\nOn a golden ring these keys I\'ll bind,\r\nThis is its motto: \"Be ye kind.\"\r\n\r\nI\'ll often use each golden key,\r\nAnd so a happy child I\'ll be.',1),(3,'2023-06-03 17:06:18','2023-06-03 17:06:18','Soft Kitty','Soft kitty, warm kitty\r\nLittle ball of fur.\r\nHappy kitty, sleepy kitty\r\nPurr! Purr! Purr!',2),(4,'2023-06-03 17:08:00','2023-06-03 17:08:00','The Tall Man From Cornwall','There was a tall man from Cornwall,\r\nWhose length exceeded his bed.\r\nMy body fits on it/But barely upon it,\r\nThere\'s no room for my big Cornish head.',2),(5,'2023-06-03 17:10:09','2023-06-03 17:10:09','Jibber Jabber','Oh my God! You\'re gonna jibber jabber about jibber jabber!',3),(7,'2023-06-03 21:39:59','2023-06-03 21:39:59','Beauty!','Beauty like Penny',4),(8,'2023-06-03 21:41:06','2023-06-03 21:41:06','Needy Baby!  Greedy Baby!','That\'s what Beverly said!',4),(9,'2023-06-04 18:16:36','2023-06-04 18:16:36','You\'re Playing DnD!','You\'re Playing DnD! You\'re Playing DnD!\r\nThe whole apartment is playing DnD! Hah!',5),(10,'2023-06-04 18:52:24','2023-06-04 18:52:24','Why Are You Calling In This Ungodly Hour?','Why Are You Calling In This Ungodly Hour?',5),(11,'2023-06-04 23:50:18','2023-06-04 23:50:18','Do Not Go Gentle Into That Good Night','Do not go gentle into that good night,\r\nOld age should burn and rave at close of day;\r\nRage, rage against the dying of the light.\r\n\r\nThough wise men at their end know dark is right,\r\nBecause their words had forked no lightning they\r\nDo not go gentle into that good night.\r\n\r\nGood men, the last wave by, crying how bright\r\nTheir frail deeds might have danced in a green bay,\r\nRage, rage against the dying of the light.\r\n\r\nWild men who caught and sang the sun in flight,\r\nAnd learn, too late, they grieved it on its way,\r\nDo not go gentle into that good night.\r\n\r\nGrave men, near death, who see with blinding sight\r\nBlind eyes could blaze like meteors and be gay,\r\nRage, rage against the dying of the light.\r\n\r\nAnd you, my father, there on the sad height,\r\nCurse, bless, me now with your fierce tears, I pray.\r\nDo not go gentle into that good night.\r\nRage, rage against the dying of the light.',1),(12,'2023-06-04 23:55:47','2023-06-04 23:55:47','While My Guitar Gently Weeps','I look at you all, see the love there that\'s sleeping\r\nWhile my guitar gently weeps\r\nI look at the floor, and I see it needs sweeping\r\nStill my guitar gently weeps\r\n\r\nI don\'t know why nobody told you\r\nHow to unfold your love\r\nI don\'t know how someone controlled you\r\nThey bought and sold you\r\n\r\nI look at the world, and I notice it\'s turning\r\nWhile my guitar gently weeps\r\nWith every mistake, we must surely be learning\r\nStill my guitar gently weeps\r\n\r\nI don\'t know how you were diverted\r\nYou were perverted too\r\nI don\'t know how you were inverted\r\nNo one alerted you\r\n\r\nI look at you all, see the love there that\'s sleeping\r\nWhile my guitar gently weeps\r\n(I look) Look at you all\r\nStill my guitar gently weeps',1),(13,'2023-06-04 23:56:48','2023-06-04 23:56:48','O Captain! My Captain!','O Captain! my Captain! our fearful trip is done,\r\nThe ship has weather’d every rack, the prize we sought is won,\r\nThe port is near, the bells I hear, the people all exulting,\r\nWhile follow eyes the steady keel, the vessel grim and daring;\r\n                         But O heart! heart! heart!\r\n                            O the bleeding drops of red,\r\n                               Where on the deck my Captain lies,\r\n                                  Fallen cold and dead.\r\n\r\nO Captain! my Captain! rise up and hear the bells;\r\nRise up—for you the flag is flung—for you the bugle trills,\r\nFor you bouquets and ribbon’d wreaths—for you the shores a-crowding,\r\nFor you they call, the swaying mass, their eager faces turning;\r\n                         Here Captain! dear father!\r\n                            This arm beneath your head!\r\n                               It is some dream that on the deck,\r\n                                 You’ve fallen cold and dead.\r\n\r\nMy Captain does not answer, his lips are pale and still,\r\nMy father does not feel my arm, he has no pulse nor will,\r\nThe ship is anchor’d safe and sound, its voyage closed and done,\r\nFrom fearful trip the victor ship comes in with object won;\r\n                         Exult O shores, and ring O bells!\r\n                            But I with mournful tread,\r\n                               Walk the deck my Captain lies,\r\n                                  Fallen cold and dead.',1),(14,'2023-06-04 23:58:24','2023-06-04 23:59:13','So you got canned...','Dealing with job loss can be challenging, but here are some steps you can take to navigate the situation:\r\n\r\nRemain Calm\r\nIt\'s natural to feel a range of emotions when you hear about the possibility of being laid off.  Try to stay calm and composed to make rational decisions.\r\n\r\nUnderstand the Situation\r\nSeek clarification about the details of your potential layoff.  Talk to your supervisor or HR representative to get a clear understanding of the reasons behind the decision and any support or severance packages being offered.\r\n\r\nAssess Your Finances\r\nTake stock of your financial situation and evaluate how long you can sustain yourself without a regular income.  Create a budget and identify areas where you can cut expenses temporarily.\r\n\r\nReview Your Benefits\r\nUnderstand the benefits you may be entitled to after being laid off, such as severance pay, health insurance coverage, or unemployment benefits.  Familiarize yourself with the specific policies and requirements in your country or state.\r\n\r\nNetwork and Seek Support\r\nReach out to your professional network, colleagues, and friends to let them know about your situation.  They may be able to provide job leads, offer support, or recommend resources to help you during this time.\r\n\r\nUpdate Your Resume and Skills\r\nUse this opportunity to update your resume, highlighting your accomplishments and skills.  Consider attending workshops or courses to enhance your skills or gain new ones that can make you more marketable in your job search.\r\n\r\nJob Search and Explore Opportunities\r\nStart exploring new job opportunities by leveraging online job portals, networking events, or contacting recruitment agencies.  Polish your online presence, such as LinkedIn profile, to attract potential employers.\r\n\r\nTake Care of Yourself\r\nLosing a job can be emotionally challenging.  Take care of your physical and mental well-being.  Maintain a routine, exercise regularly, seek support from friends and family, and consider engaging in activities that you enjoy to reduce stress.\r\n\r\nConsider Career Change or Freelancing\r\nEvaluate whether this is an opportunity to pursue a different career path or explore freelancing or entrepreneurship.  This could be a chance to reinvent yourself professionally.\r\n\r\nLearn from the Experience\r\nReflect on the reasons behind the layoff and what you can learn from it.  Use this experience to grow personally and professionally, and consider how you can avoid similar situations in the future.\r\n\r\nRemember, while getting laid off can be disheartening, it can also be a new beginning and an opportunity for personal and professional growth.  Stay positive, remain resilient, and focus on the possibilities ahead. ?',1),(15,'2023-06-05 00:00:47','2023-06-05 00:00:47','All Men Are Interdependent','All men are interdependent. Every nation is an heir of a vast treasure of ideas and labor to which both the living and the dead of all nations have contributed.... We are everlasting debtors to known and unknown men and women....',1),(16,'2023-06-05 00:01:34','2023-06-05 00:01:34','Love Is Patient','Love is patient, love is kind. It does not envy, it does not boast, it is not proud. It does not dishonour others, it is not self-seeking, it is not easily angered, and it keeps no record of wrongs.',1),(17,'2023-06-05 00:05:10','2023-06-05 00:05:10','Fullmetal Heart','Sacrifices are necessary; you can\'t gain anything without losing something first. Although, if you can endure that pain and walk away from it, you\'ll find that you now have a heart strong enough to overcome any obstacle. Yeah... a heart made fullmetal.',1),(18,'2023-06-05 00:06:54','2023-06-05 00:06:54','Like A Fool','We take a chance from time to time\r\nAnd put our necks out on the line\r\nAnd you have broken every promise that we made\r\nAnd I have loved you anyway\r\nTook a fine time to leave me hangin\' out to dry\r\nUnderstand now I\'m greivin\' so don\'t you waste my time\r\n\'Cause you have taken all the wind out from my sails\r\nAnd I have loved you just the same\r\nWe finally find this then you\'re gone\r\nBeen chasin\' rainbows all along\r\nAnd you have cursed me when there\'s no one left to blame\r\nAnd I have loved you just the same\r\nAnd you have broken every single fuckin\' rule\r\nAnd I have loved you like a fool',1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maki','1-647d92f2d2891.jpg','maki@example.com',NULL,'$2y$10$nW.x0TsDus5QxmDRWD5GJu0BCz4zU9Z/NnuKSfpZGs5ZBFFdXDL9.',NULL,'2023-06-03 17:01:10','2023-06-04 23:46:58',1),(2,'sheldon','2-647d9308eb45f.jpg','sheldon@example.com',NULL,'$2y$10$opM6KzKt0CgU6/VNuIhd5..bIlZuoAkn.kSYlLsA3F2lRmfDMXuFu',NULL,'2023-06-03 17:05:23','2023-06-04 23:47:20',0),(3,'penny','3-647d931f56354.jpg','penny@example.com',NULL,'$2y$10$xMcCJwhXVob2S8Cr57jOZu1SX7kw.bJ5ZD.1m0rGlYl9t2tFHKmHC',NULL,'2023-06-03 17:09:04','2023-06-04 23:47:43',0),(4,'leonard','4-647d933319372.jpg','leonard@example.com',NULL,'$2y$10$xAz5UDF3w1sITQVlsJsw1.3nj6ehE58Jc48GkvRLH4XOXGKer5tEq',NULL,'2023-06-03 21:39:25','2023-06-04 23:48:03',0),(5,'howard',NULL,'howard@example.com',NULL,'$2y$10$OcAZO8/h5Xc59sAn.SDa7OiQIgfK0RYSpVcv1hLTDCYD//iq3S9PW',NULL,'2023-06-04 18:07:25','2023-06-04 18:07:25',0);
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

-- Dump completed on 2023-06-05 18:40:04
