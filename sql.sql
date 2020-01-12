-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table heydaritayeb.attachment
CREATE TABLE IF NOT EXISTS `attachment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attachmentable_id` bigint(20) unsigned NOT NULL,
  `attachmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachmentable_id` (`attachmentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.attachment: ~0 rows (approximately)
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_categories
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `content_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`category_id`),
  KEY `FK_blog_categories_blog_category` (`category_id`),
  CONSTRAINT `FK_blog_categories_blog_category` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`value`) ON UPDATE CASCADE,
  CONSTRAINT `FK_blog_categories_blog_content` FOREIGN KEY (`content_id`) REFERENCES `blog_content` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table heydaritayeb.blog_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_category
CREATE TABLE IF NOT EXISTS `blog_category` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `content` text COLLATE utf8_persian_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`value`),
  UNIQUE KEY `slug` (`slug`),
  KEY `_lft` (`_lft`),
  KEY `_rgt` (`_rgt`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.blog_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_content
CREATE TABLE IF NOT EXISTS `blog_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `visitor` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `FK_blog_content_users` (`created_by`),
  CONSTRAINT `FK_blog_content_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.blog_content: ~0 rows (approximately)
/*!40000 ALTER TABLE `blog_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_content` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_tags
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `content_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table heydaritayeb.blog_tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL,
  `content` text COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.brand: ~0 rows (approximately)
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.communication_channel
CREATE TABLE IF NOT EXISTS `communication_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.communication_channel: ~7 rows (approximately)
/*!40000 ALTER TABLE `communication_channel` DISABLE KEYS */;
INSERT INTO `communication_channel` (`id`, `title`) VALUES
	(1, 'فکس'),
	(2, 'موبایل'),
	(3, 'ایمیل info'),
	(4, 'تلگرام'),
	(5, 'واتس اپ'),
	(6, 'شماره تماس'),
	(7, 'ایمیل پشتیبانی');
/*!40000 ALTER TABLE `communication_channel` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain
CREATE TABLE IF NOT EXISTS `domain` (
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `android` tinyint(1) DEFAULT 0,
  `ios` tinyint(1) DEFAULT 0,
  `maintenance_mode` tinyint(1) DEFAULT 0,
  `register` tinyint(1) DEFAULT 1,
  `basket` tinyint(1) DEFAULT 1,
  `user_dashboard` tinyint(1) DEFAULT 1,
  `admin_panel` tinyint(1) DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain: ~0 rows (approximately)
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` (`key`, `name`, `meta_title`, `meta_description`, `introduce`, `android`, `ios`, `maintenance_mode`, `register`, `basket`, `user_dashboard`, `admin_panel`, `status`, `created_at`, `updated_at`) VALUES
	('localhost:3000', '21212121', 'dfdfd', 'تینساسباسی', 'نسیاتنسابسکنیمب', 0, 0, 0, 1, 1, 1, 1, 1, '2019-12-07 10:11:41', '2019-12-18 12:08:41');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_communication_channel
CREATE TABLE IF NOT EXISTS `domain_communication_channel` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `communication_channel_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`communication_channel_id`),
  KEY `FK_communication_channel_domain_communication_channel` (`communication_channel_id`),
  CONSTRAINT `FK_communication_channel_domain_communication_channel` FOREIGN KEY (`communication_channel_id`) REFERENCES `communication_channel` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_communication_channel_domain_domain` FOREIGN KEY (`domain_key`) REFERENCES `domain` (`key`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_communication_channel: ~0 rows (approximately)
/*!40000 ALTER TABLE `domain_communication_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_communication_channel` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_social_media
CREATE TABLE IF NOT EXISTS `domain_social_media` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `social_media_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`social_media_id`),
  KEY `FK_social_media_domain_social_media` (`social_media_id`),
  CONSTRAINT `FK_social_media_domain_domain` FOREIGN KEY (`domain_key`) REFERENCES `domain` (`key`) ON UPDATE CASCADE,
  CONSTRAINT `FK_social_media_domain_social_media` FOREIGN KEY (`social_media_id`) REFERENCES `social_media` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_social_media: ~0 rows (approximately)
/*!40000 ALTER TABLE `domain_social_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_social_media` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for procedure heydaritayeb.fetch_permissions_with_access
DELIMITER //
CREATE PROCEDURE `fetch_permissions_with_access`(IN `role_parameter` VARCHAR(50), IN `parent_parameter` VARCHAR(50))
    SQL SECURITY INVOKER
BEGIN
	SELECT  permission.*,
	IF(ISNULL(role_key), false, true) AS access
	FROM permission 
	left JOIN permission_role ON permission_role.permission_key = permission.`key` AND  permission_role.role_key = role_parameter
	WHERE parent = parent_parameter
	order by permission.created_at ASC;
END//
DELIMITER ;

-- Dumping structure for table heydaritayeb.file
CREATE TABLE IF NOT EXISTS `file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fileable_id` bigint(20) NOT NULL,
  `fileable_type` varchar(50) NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `mime_type` enum('image','video') NOT NULL DEFAULT 'image',
  `directory` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `collection` tinyint(1) NOT NULL DEFAULT 1,
  `order` tinyint(2) NOT NULL DEFAULT 1,
  `size` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fileable_id` (`fileable_id`),
  KEY `fileable_type` (`fileable_type`),
  KEY `FK_file_users` (`created_by`),
  CONSTRAINT `FK_file_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;

-- Dumping data for table heydaritayeb.file: ~0 rows (approximately)
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_slider` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_gallery_users` (`created_by`),
  CONSTRAINT `FK_gallery_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- Dumping structure for procedure heydaritayeb.map_reports
DELIMITER //
CREATE PROCEDURE `map_reports`()
    NO SQL
BEGIN
DROP TABLE IF EXISTS map_reports;
CREATE TEMPORARY TABLE IF NOT EXISTS map_reports(
    title VARCHAR(100) NULL,
    counter INT NULL
) 
COLLATE='utf8_persian_ci'
ENGINE = MEMORY ;

TRUNCATE map_reports;

INSERT INTO map_reports (title, counter) VALUES
('تعداد کاربران', (select count(id) from users)),
('کاربران غیرفعال', (select count(id) from users where status = 0)),
('عضو سایت', (select count(id) from users where role_key = 'guest')),
('کابران سیستمی', (select count(id) from users where role_key <> 'guest')),
('تیکت ها', (SELECT COUNT(id) FROM ticket)),
('تیکت در انتظار', (SELECT COUNT(id) FROM ticket WHERE status = 0))
;


SELECT * FROM map_reports;
END//
DELIMITER ;

-- Dumping structure for table heydaritayeb.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_access_tokens: ~9 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('1211165c1fa747c169d09ca4a743bbe724d084e9ffa255b1697c3d0ff8b1ce473e3ac23328cec73e', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:23:17', '2020-01-10 21:23:17', '2021-01-10 21:23:17'),
	('4398acebbbe2a61a066a91ff3aac209db98ec15a2651ef004fb82bcae6774ca15ad7397a7f7074af', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:57:21', '2020-01-10 20:57:21', '2021-01-10 20:57:21'),
	('74cefcee829916e22180b39e075578f2d066df6c096e181522afbb04125da013a360f9bce56797d6', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:18:44', '2020-01-10 21:18:44', '2021-01-10 21:18:44'),
	('8ff9ac322fcce8defc15b1c63cfa2b330931cc0c693f7e03303cd0c8cc4419b05b77f94c6452b4bf', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:29', '2020-01-10 20:52:29', '2021-01-10 20:52:29'),
	('9137bce7a1a1fc9730bb677d941d804257ebd5f6afbd9b8cbe324a6ccee6c14d2182f43deb507204', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:57', '2020-01-10 20:52:57', '2021-01-10 20:52:57'),
	('93d7fbcc51976072e95b6260b492599776932da19d25977502b4ab16eecec9688f4387c4564edaa8', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:24:50', '2020-01-10 21:24:50', '2021-01-10 21:24:50'),
	('9a77872b7bd089cfb185330c85b07fe9349c0dae1ce2ea5726264044c195357ed6bbda64efe9c450', 4, 5, 'Token Name', '[]', 0, '2020-01-10 21:27:24', '2020-01-10 21:27:24', '2021-01-10 21:27:24'),
	('a12ce315e97fdacb0bf6ec19b2a7c750d7a56bc7fcf31da2c7fafd49c8dc43622e205bd4b15c0009', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:59:37', '2020-01-10 20:59:37', '2021-01-10 20:59:37'),
	('ef1d237fafb302f0e8858c7c5211d250dfd5f2f7407c1ac2066cfa5fe62d95697fc25dbbac3d807c', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:18', '2020-01-10 20:52:18', '2021-01-10 20:52:18');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_clients: ~5 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(2, NULL, 'Laravel Personal Access Client', '3ifOpdDKIvzzcRfIHJakMclRiOhAzj9B4zb98WCb', 'http://localhost', 1, 0, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(3, NULL, 'Laravel Password Grant Client', '0pbp2WmsP5VkpcKmrlx2xhfDu5snRwpxVQNzutOD', 'http://localhost', 0, 1, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(4, 1, 'mehrdad', 'AOBTYNn7I5JAmCrmX8ys9cV9VvV1GPE9PoMoE5Cq', 'http://localhost:8000/auth/callback', 0, 0, 0, '2020-01-10 20:51:49', '2020-01-10 20:51:49'),
	(5, NULL, 'Laravel Personal Access Client', 'ytgkftCVk9Kc88V85kfqkgM4QQpBz8Gg9omJOnPy', 'http://localhost', 1, 0, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(6, NULL, 'Laravel Password Grant Client', 'aMI8bRo3Mx1kIiKqeMRSH0iue5XSKHIzc8jG8okn', 'http://localhost', 0, 1, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_personal_access_clients: ~1 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(2, 5, '2020-01-10 20:51:58', '2020-01-10 20:51:58');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `increment_id` int(11) NOT NULL,
  `discount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `post_cost` decimal(18,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `pure_price` decimal(18,2) NOT NULL,
  `total_price` decimal(18,2) NOT NULL,
  `order_status` smallint(6) NOT NULL DEFAULT 0,
  `transport_status` smallint(6) NOT NULL DEFAULT 0,
  `delivery_status` smallint(6) NOT NULL DEFAULT 0,
  `items_status` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_user` (`user_id`),
  KEY `order_status_created_at` (`order_status`,`created_at`),
  CONSTRAINT `FK_order_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11038 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.order: ~0 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.package_type
CREATE TABLE IF NOT EXISTS `package_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.package_type: ~13 rows (approximately)
/*!40000 ALTER TABLE `package_type` DISABLE KEYS */;
INSERT INTO `package_type` (`id`, `title`, `status`, `type`, `created_at`, `updated_at`) VALUES
	(7, 'عدد', 1, 1, '2020-01-01 20:47:36', '2020-01-01 20:47:36'),
	(8, 'کارتون', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(9, 'دستگاه', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(10, 'قوطی', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(11, 'کیسه', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(12, 'ست', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(13, 'جفت', 1, 1, '2020-01-01 20:47:37', '2020-01-01 20:47:37'),
	(14, 'کیلو', 1, 0, '2020-01-01 20:48:36', '2020-01-01 20:48:36'),
	(15, 'متر', 1, 0, '2020-01-01 20:48:36', '2020-01-01 20:48:36'),
	(16, 'گرم', 1, 0, '2020-01-01 20:48:36', '2020-01-01 20:48:36'),
	(17, 'مجموعه', 1, 1, '2020-01-01 20:48:36', '2020-01-01 20:48:36'),
	(18, 'لیتر', 1, 0, '2020-01-01 20:48:36', '2020-01-01 20:48:36'),
	(19, 'تن', 1, 0, '2020-01-04 22:57:23', '2020-01-04 22:57:24');
/*!40000 ALTER TABLE `package_type` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `key` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `method` enum('GET','POST','PUT','DELETE') COLLATE utf8_persian_ci NOT NULL,
  `parent` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.permission: ~45 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`key`, `title`, `url`, `method`, `parent`, `created_at`, `updated_at`) VALUES
	('attachment_delete', 'permissions.attachment delete', '/api/backend/attachment', 'DELETE', 'attachment', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('attachment_post', 'permissions.attachment post', '/api/backend/attachment', 'POST', 'attachment', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('blog_category_index', 'مدیریت', '/api/backend/blog/categories', 'GET', 'blog_category', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('blog_category_show', 'نمایش', '/api/backend/blog/categories/{id}', 'GET', 'blog_category', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('blog_category_store', 'ذخیره سازی', '/api/backend/blog/categories', 'POST', 'blog_category', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('blog_category_update', 'به روز رسانی', '/api/backend/blog/categories/{id}', 'PUT', 'blog_category', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('blog_content_index', 'مدیریت', '/api/backend/blog/contents', 'GET', 'blog_content', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('blog_content_show', 'نمایش', '/api/backend/blog/contents/{id}', 'GET', 'blog_content', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('blog_content_store', 'ذخیره سازی', '/api/backend/blog/contents', 'POST', 'blog_content', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('blog_content_update', 'به روز رسانی', '/api/backend/blog/contents/{id}', 'PUT', 'blog_content', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('communication_channels_get', 'permissions.communication channels get', '/api/backend/communicationChannels', 'GET', 'communication_channels', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('domain_read', 'permissions.read', '/api/backend/setting', 'GET', 'domain', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('domain_read_sticky', 'permissions.read sticky', '/api/backend/setting/sticky-setting', 'GET', 'domain', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('domain_update', 'به روز رسانی', '/api/backend/setting', 'PUT', 'domain', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('domain_update_sticky', 'permissions.update sticky', '/api/backend/setting/sticky-setting', 'PUT', 'domain', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('filter_price-parameter_get', 'permissions.filter price-parameter get', '/api/backend/filter/price-parameter', 'GET', 'filter', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('filter_tags_get', 'permissions.filter tags get', '/api/backend/filter/tags', 'GET', 'filter', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('filter_users_accessible_get', 'permissions.filter users accessible get', '/api/backend/filter/users/accessible', 'GET', 'filter', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('filter_users_get', 'permissions.filter users get', '/api/backend/filter/users', 'GET', 'filter', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('gallery_index', 'مدیریت', '/api/backend/galleries', 'GET', 'gallery', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('gallery_show', 'نمایش', '/api/backend/galleries/{id}', 'GET', 'gallery', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('gallery_store', 'ذخیره سازی', '/api/backend/galleries', 'POST', 'gallery', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('gallery_update', 'به روز رسانی', '/api/backend/galleries/{id}', 'PUT', 'gallery', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('permission_index', 'مدیریت', '/api/backend/users/permissions', 'GET', 'permission', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('report_map_reports', 'permissions.map reports', '/api/backend/reports/map-reports', 'GET', 'report', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('role_index', 'مدیریت', '/api/backend/users/roles', 'GET', 'role', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('role_permissions', 'سطوح دسترسی', '/api/backend/users/roles/{role}/permissions', 'GET', 'role', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('role_set_permission', 'ست کردن سطح دسترسی', '/api/backend/users/roles/{role}/permissions', 'PUT', 'role', '2020-01-10 21:16:08', '2020-01-10 21:16:08'),
	('role_store', 'ذخیره سازی', '/api/backend/users/roles', 'POST', 'role', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('social_medias_get', 'permissions.social medias get', '/api/backend/socialMedias', 'GET', 'social_medias', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('ticket_category_index', 'مدیریت', '/api/backend/tickets/categories', 'GET', 'ticket_category', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_category_show', 'نمایش', '/api/backend/tickets/categories/{id}', 'GET', 'ticket_category', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_category_store', 'ذخیره سازی', '/api/backend/tickets/categories', 'POST', 'ticket_category', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_category_update', 'به روز رسانی', '/api/backend/tickets/categories/{id}', 'PUT', 'ticket_category', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_conversations', 'permissions.conversations', '/api/backend/tickets/{id}/conversations', 'GET', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_delete_conversation', 'permissions.delete conversation', '/api/backend/tickets/{ticket}/conversations/{id}', 'DELETE', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_index', 'مدیریت', '/api/backend/tickets', 'GET', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_store', 'ذخیره سازی', '/api/backend/tickets', 'POST', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_store_conversations', 'permissions.store conversations', '/api/backend/tickets/{id}/conversations', 'POST', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('ticket_update', 'به روز رسانی', '/api/backend/tickets/{id}', 'PUT', 'ticket', '2020-01-10 21:16:10', '2020-01-10 21:16:10'),
	('user_change_password', 'تغییر رمز', '/api/backend/users/{id}/change-password', 'PUT', 'user', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('user_index', 'مدیریت', '/api/backend/users', 'GET', 'user', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('user_show', 'نمایش', '/api/backend/users/{id}', 'GET', 'user', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('user_store', 'ذخیره سازی', '/api/backend/users', 'POST', 'user', '2020-01-10 21:16:09', '2020-01-10 21:16:09'),
	('user_update', 'به روز رسانی', '/api/backend/users/{id}', 'PUT', 'user', '2020-01-10 21:16:09', '2020-01-10 21:16:09');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_key` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `permission_key` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`role_key`,`permission_key`),
  KEY `FK_permission_role_permission` (`permission_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.permission_role: ~90 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`role_key`, `permission_key`) VALUES
	('programmer', 'attachment_delete'),
	('programmer', 'attachment_post'),
	('programmer', 'blog_category_index'),
	('programmer', 'blog_category_show'),
	('programmer', 'blog_category_store'),
	('programmer', 'blog_category_update'),
	('programmer', 'blog_content_index'),
	('programmer', 'blog_content_show'),
	('programmer', 'blog_content_store'),
	('programmer', 'blog_content_update'),
	('programmer', 'communication_channels_get'),
	('programmer', 'domain_read'),
	('programmer', 'domain_read_sticky'),
	('programmer', 'domain_update'),
	('programmer', 'domain_update_sticky'),
	('programmer', 'filter_price-parameter_get'),
	('programmer', 'filter_tags_get'),
	('programmer', 'filter_users_accessible_get'),
	('programmer', 'filter_users_get'),
	('programmer', 'gallery_index'),
	('programmer', 'gallery_show'),
	('programmer', 'gallery_store'),
	('programmer', 'gallery_update'),
	('programmer', 'permission_index'),
	('programmer', 'report_map_reports'),
	('programmer', 'role_index'),
	('programmer', 'role_permissions'),
	('programmer', 'role_set_permission'),
	('programmer', 'role_store'),
	('programmer', 'social_medias_get'),
	('programmer', 'ticket_category_index'),
	('programmer', 'ticket_category_show'),
	('programmer', 'ticket_category_store'),
	('programmer', 'ticket_category_update'),
	('programmer', 'ticket_conversations'),
	('programmer', 'ticket_delete_conversation'),
	('programmer', 'ticket_index'),
	('programmer', 'ticket_store'),
	('programmer', 'ticket_store_conversations'),
	('programmer', 'ticket_update'),
	('programmer', 'user_change_password'),
	('programmer', 'user_index'),
	('programmer', 'user_show'),
	('programmer', 'user_store'),
	('programmer', 'user_update'),
	('super_admin', 'attachment_delete'),
	('super_admin', 'attachment_post'),
	('super_admin', 'blog_category_index'),
	('super_admin', 'blog_category_show'),
	('super_admin', 'blog_category_store'),
	('super_admin', 'blog_category_update'),
	('super_admin', 'blog_content_index'),
	('super_admin', 'blog_content_show'),
	('super_admin', 'blog_content_store'),
	('super_admin', 'blog_content_update'),
	('super_admin', 'communication_channels_get'),
	('super_admin', 'domain_read'),
	('super_admin', 'domain_read_sticky'),
	('super_admin', 'domain_update'),
	('super_admin', 'domain_update_sticky'),
	('super_admin', 'filter_price-parameter_get'),
	('super_admin', 'filter_tags_get'),
	('super_admin', 'filter_users_accessible_get'),
	('super_admin', 'filter_users_get'),
	('super_admin', 'gallery_index'),
	('super_admin', 'gallery_show'),
	('super_admin', 'gallery_store'),
	('super_admin', 'gallery_update'),
	('super_admin', 'permission_index'),
	('super_admin', 'report_map_reports'),
	('super_admin', 'role_index'),
	('super_admin', 'role_permissions'),
	('super_admin', 'role_set_permission'),
	('super_admin', 'role_store'),
	('super_admin', 'social_medias_get'),
	('super_admin', 'ticket_category_index'),
	('super_admin', 'ticket_category_show'),
	('super_admin', 'ticket_category_store'),
	('super_admin', 'ticket_category_update'),
	('super_admin', 'ticket_conversations'),
	('super_admin', 'ticket_delete_conversation'),
	('super_admin', 'ticket_index'),
	('super_admin', 'ticket_store'),
	('super_admin', 'ticket_store_conversations'),
	('super_admin', 'ticket_update'),
	('super_admin', 'user_change_password'),
	('super_admin', 'user_index'),
	('super_admin', 'user_show'),
	('super_admin', 'user_store'),
	('super_admin', 'user_update');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.price_parameter
CREATE TABLE IF NOT EXISTS `price_parameter` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`value`),
  KEY `_lft` (`_lft`),
  KEY `_rgt` (`_rgt`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.price_parameter: ~21 rows (approximately)
/*!40000 ALTER TABLE `price_parameter` DISABLE KEYS */;
INSERT INTO `price_parameter` (`value`, `label`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(17, 'رنگ', 1, 1, 10, NULL, '2020-01-06 00:31:33', '2020-01-09 20:21:49'),
	(18, 'جنس', 1, 11, 16, NULL, '2020-01-05 14:05:24', '2020-01-05 14:05:24'),
	(19, 'بسته بندی', 1, 17, 30, NULL, '2020-01-05 14:05:48', '2020-01-05 14:05:48'),
	(20, 'گارانتی', 1, 31, 36, NULL, '2020-01-05 14:05:56', '2020-01-05 14:05:56'),
	(21, 'حجم', 1, 37, 42, NULL, '2020-01-05 14:06:08', '2020-01-05 14:06:08'),
	(22, 'سفید', 1, 2, 7, 17, '2020-01-05 14:06:50', '2020-01-09 20:21:49'),
	(23, 'آبی', 1, 8, 9, 17, '2020-01-05 14:06:50', '2020-01-09 20:21:49'),
	(24, 'چرم', 1, 12, 13, 18, '2020-01-05 14:07:10', '2020-01-05 14:07:10'),
	(25, 'پلاستیک', 1, 14, 15, 18, '2020-01-05 14:07:10', '2020-01-05 14:07:10'),
	(26, '25 گرمی', 1, 18, 19, 19, '2020-01-05 18:39:02', '2020-01-05 18:39:02'),
	(27, '50 گرمی', 1, 20, 21, 19, '2020-01-05 18:39:02', '2020-01-05 18:39:02'),
	(28, '100 گرمی', 1, 22, 23, 19, '2020-01-05 18:39:02', '2020-01-05 18:39:02'),
	(29, '200 گرمی', 1, 24, 25, 19, '2020-01-05 18:39:02', '2020-01-05 18:39:02'),
	(30, '500 گرمی', 1, 26, 27, 19, '2020-01-05 18:39:02', '2020-01-05 18:39:02'),
	(31, '1 کیلویی', 1, 28, 29, 19, '2020-01-05 18:39:03', '2020-01-05 18:39:03'),
	(32, 'سام سرویس', 1, 32, 33, 20, '2020-01-05 18:39:32', '2020-01-05 18:39:32'),
	(33, 'گلدیران', 1, 34, 35, 20, '2020-01-05 18:39:32', '2020-01-05 18:39:32'),
	(34, '50ml', 1, 38, 39, 21, '2020-01-05 18:39:49', '2020-01-05 18:39:49'),
	(35, '100ml', 1, 40, 41, 21, '2020-01-05 18:39:49', '2020-01-05 18:39:49'),
	(36, 'یخچالی', 1, 3, 4, 22, '2020-01-09 20:21:10', '2020-01-09 20:21:10'),
	(37, 'صدفی', 1, 5, 6, 22, '2020-01-09 20:21:10', '2020-01-09 20:21:10');
/*!40000 ALTER TABLE `price_parameter` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `package_type_id` bigint(20) unsigned NOT NULL DEFAULT 14,
  `slug` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `sales_number` int(11) NOT NULL DEFAULT 0,
  `visitor` int(11) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `content` text COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_products_brand` (`brand_id`),
  KEY `FK_product_package_type` (`package_type_id`),
  KEY `FK_product_users` (`created_by`),
  CONSTRAINT `FK_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_product_package_type` FOREIGN KEY (`package_type_id`) REFERENCES `package_type` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_product_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.product: ~0 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.product_pins
CREATE TABLE IF NOT EXISTS `product_pins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_pins_product` (`product_id`),
  CONSTRAINT `FK_product_pins_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.product_pins: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_pins` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_pins` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.role
CREATE TABLE IF NOT EXISTS `role` (
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `full_access` tinyint(1) NOT NULL DEFAULT 0,
  `crud` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.role: ~6 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`key`, `title`, `full_access`, `crud`, `created_at`, `updated_at`) VALUES
	('admin', 'ادمین', 1, 1, '2019-11-29 13:56:16', '2019-11-29 13:56:16'),
	('content_manager', 'مدیر محتوا', 0, 1, '2019-11-29 13:56:59', '2019-11-29 13:57:24'),
	('guest', 'مهمان', 0, 0, '2019-12-10 11:39:15', '2019-12-10 11:39:15'),
	('operator', 'اپراتور', 0, 0, '2019-11-29 13:56:30', '2019-11-29 13:56:30'),
	('programmer', 'تیم برنامه نویس', 1, 1, '2019-11-29 13:55:41', '2019-11-29 13:55:41'),
	('super_admin', 'سوپر ادمین', 1, 1, '2019-11-29 13:55:52', '2019-11-29 13:55:52');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.social_media
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.social_media: ~10 rows (approximately)
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` (`id`, `title`) VALUES
	(1, 'اینستاگرام'),
	(2, 'کانال تلگرام'),
	(3, 'فیس بوک'),
	(4, 'توئیتر'),
	(5, 'لینکدین'),
	(6, 'گیت هاب'),
	(7, 'گوگل پلاس'),
	(8, 'یوتیوب'),
	(9, 'اپارات'),
	(10, 'ویرگول');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ticket_users` (`created_by`),
  KEY `FK_ticket_ticket_category` (`category_id`),
  CONSTRAINT `FK_ticket_ticket_category` FOREIGN KEY (`category_id`) REFERENCES `ticket_category` (`value`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ticket_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.ticket: ~0 rows (approximately)
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket_category
CREATE TABLE IF NOT EXISTS `ticket_category` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`value`),
  KEY `_lft` (`_lft`),
  KEY `_rgt` (`_rgt`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.ticket_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `ticket_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_category` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket_conversation
CREATE TABLE IF NOT EXISTS `ticket_conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `content` mediumtext COLLATE utf8_persian_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ticket_conversation_users` (`created_by`),
  KEY `FK_ticket_conversation_ticket` (`ticket_id`),
  CONSTRAINT `FK_ticket_conversation_ticket` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_ticket_conversation_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.ticket_conversation: ~0 rows (approximately)
/*!40000 ALTER TABLE `ticket_conversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_conversation` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `validation_code` int(5) DEFAULT NULL,
  `verify_account` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_domain` (`mobile`,`domain`),
  KEY `role_key` (`role_key`),
  KEY `FK_users_domain` (`domain`),
  CONSTRAINT `FK_users_domain` FOREIGN KEY (`domain`) REFERENCES `domain` (`key`) ON UPDATE CASCADE,
  CONSTRAINT `FK_users_role` FOREIGN KEY (`role_key`) REFERENCES `role` (`key`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `mobile`, `domain`, `role_key`, `name`, `status`, `validation_code`, `verify_account`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '09361036469', 'localhost:3000', 'programmer', 'رضا رحمتی', 1, 29583, 1, '$2y$10$DDPOkc3zF2hpqM8yypYe1ueExiFTupc5P43Hhk6qzkjjxxAKLr8Dq', '$2y$10$DxjvCAVDaV9RtvKpoQK/N.O99lGGuC3zo1d9.lJDV5icvFxSkHOIS', '2019-11-30 23:43:25', '2020-01-07 18:52:15'),
	(4, '09360784026', 'localhost:3000', 'super_admin', 'حسین بهرامی', 1, NULL, 0, '$2y$10$eJWUCqRd5jb7hJ7sX55YNOpZzPGxT50VET63V.WI8NpwdVId36Z06', NULL, '2020-01-10 21:27:00', '2020-01-10 21:27:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for trigger heydaritayeb.ticket_conversation_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `ticket_conversation_after_insert` AFTER INSERT ON `ticket_conversation` FOR EACH ROW BEGIN
	UPDATE ticket SET ticket.status = 1, ticket.updated_at = NOW() WHERE id = NEW.ticket_id AND NEW.created_by <> ticket.created_by;
	UPDATE ticket SET ticket.status = 0, ticket.updated_at = NOW() WHERE id = NEW.ticket_id AND NEW.created_by = ticket.created_by;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
