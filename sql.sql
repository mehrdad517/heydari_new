-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table heydaritayeb.analytic
CREATE TABLE IF NOT EXISTS `analytic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table heydaritayeb.analytic: ~11 rows (approximately)
/*!40000 ALTER TABLE `analytic` DISABLE KEYS */;
INSERT INTO `analytic` (`id`, `created_at`) VALUES
	(1, '2020-01-20'),
	(2, '2020-01-20'),
	(3, '2020-01-20'),
	(4, '2020-01-20'),
	(5, '2020-01-20'),
	(6, '2020-01-20'),
	(7, '2020-01-20'),
	(8, '2020-01-20'),
	(9, '2020-01-20'),
	(10, '2020-01-20'),
	(11, '2020-01-20'),
	(12, '2020-01-20'),
	(13, '2020-01-20'),
	(14, '2020-01-20'),
	(15, '2020-01-20'),
	(16, '2020-01-20'),
	(17, '2020-01-20'),
	(18, '2020-01-20'),
	(19, '2020-01-20'),
	(20, '2020-01-20'),
	(21, '2020-01-20'),
	(22, '2020-01-20'),
	(23, '2020-01-20'),
	(24, '2020-01-20'),
	(25, '2020-01-20'),
	(26, '2020-01-20'),
	(27, '2020-01-20'),
	(28, '2020-01-20'),
	(29, '2020-01-20'),
	(30, '2020-01-20'),
	(31, '2020-01-20'),
	(32, '2020-01-20'),
	(33, '2020-01-20'),
	(34, '2020-01-20'),
	(35, '2020-01-20'),
	(36, '2020-01-20'),
	(37, '2020-01-20'),
	(38, '2020-01-20'),
	(39, '2020-01-20');
/*!40000 ALTER TABLE `analytic` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_categories
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `content_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.blog_categories: 3 rows
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` (`content_id`, `category_id`) VALUES
	(68, 1),
	(68, 2),
	(68, 15);
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_category
CREATE TABLE IF NOT EXISTS `blog_category` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.blog_category: 3 rows
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` (`value`, `label`, `slug`, `meta_title`, `meta_description`, `content`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'اخبار', NULL, NULL, NULL, NULL, 1, 1, 2, NULL, '2020-01-12 12:28:03', '2020-01-12 12:28:03'),
	(2, 'اهداف و برنامه ها', NULL, NULL, NULL, NULL, 1, 3, 4, NULL, '2020-01-12 12:28:13', '2020-01-12 12:28:13'),
	(15, 'جلسات و نشست ها', NULL, NULL, NULL, NULL, 1, 5, 10, NULL, '2020-01-19 10:01:36', '2020-01-19 10:01:36');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_content
CREATE TABLE IF NOT EXISTS `blog_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `visitor` bigint(20) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `FK_blog_content_users` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.blog_content: 1 rows
/*!40000 ALTER TABLE `blog_content` DISABLE KEYS */;
INSERT INTO `blog_content` (`id`, `slug`, `created_by`, `title`, `meta_title`, `meta_description`, `content`, `status`, `visitor`, `created_at`, `updated_at`) VALUES
	(68, 'راه-اندازی-سایت-دکتر-حیدری-طیب', 1, 'راه اندازی سایت دکتر حیدری طیب', 'راه اندازی سایت دکتر حیدری طیب', 'راه اندازی سایت دکتر حیدری طیب', '<p>ورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند</p>', 1, 0, '2020-01-12 12:30:30', '2020-01-12 12:30:30');
/*!40000 ALTER TABLE `blog_content` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.blog_tags
CREATE TABLE IF NOT EXISTS `blog_tags` (
  `content_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.blog_tags: 0 rows
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;

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
  `maintenance_mode` tinyint(1) DEFAULT 0,
  `admin_panel` tinyint(1) DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain: 1 rows
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` (`key`, `name`, `meta_title`, `meta_description`, `introduce`, `maintenance_mode`, `admin_panel`, `status`, `created_at`, `updated_at`) VALUES
	('localhost:3000', '21212121', 'dfdfd', 'تینساسباسی', 'لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه', 0, 1, 1, '2019-12-07 10:11:41', '2020-01-12 12:37:06');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_communication_channel
CREATE TABLE IF NOT EXISTS `domain_communication_channel` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `communication_channel_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`communication_channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_communication_channel: 0 rows
/*!40000 ALTER TABLE `domain_communication_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_communication_channel` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_social_media
CREATE TABLE IF NOT EXISTS `domain_social_media` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `social_media_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`social_media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_social_media: 3 rows
/*!40000 ALTER TABLE `domain_social_media` DISABLE KEYS */;
INSERT INTO `domain_social_media` (`domain_key`, `social_media_id`, `value`) VALUES
	('localhost:3000', 1, 'شسیشیشیش'),
	('localhost:3000', 3, 'شسیشیشسی'),
	('localhost:3000', 4, 'شیشسیشسیشسی');
/*!40000 ALTER TABLE `domain_social_media` ENABLE KEYS */;

-- Dumping structure for procedure heydaritayeb.fetch_permissions_with_access
DELIMITER //
CREATE PROCEDURE `fetch_permissions_with_access`(
	IN `role_parameter` VARCHAR(50),
	IN `parent_parameter` VARCHAR(50)
)
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
  `fileable_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `mime_type` enum('image','video') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'image',
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `collection` tinyint(1) NOT NULL DEFAULT 1,
  `order` tinyint(2) NOT NULL DEFAULT 1,
  `size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fileable_id` (`fileable_id`),
  KEY `fileable_type` (`fileable_type`),
  KEY `FK_file_users` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.file: 8 rows
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`id`, `fileable_id`, `fileable_type`, `created_by`, `mime_type`, `directory`, `file`, `collection`, `order`, `size`, `link`, `created_at`, `updated_at`) VALUES
	(276, 10, 'App\\Gallery', 1, 'image', 'gallery', 'Z5Tjo95jfhbfNpVcnM5TKRyWWtCNHdc08X7SZx6B.jpeg', 1, 1, '[500,300,200,100,50]', NULL, '2020-01-12 17:14:09', '2020-01-12 17:14:09'),
	(277, 10, 'App\\Gallery', 1, 'image', 'gallery', 'GfsB1mMwiAntTIwjLay60v894TlNlPlXm5WxZ6rx.jpeg', 1, 2, '[500,300,200,100,50]', NULL, '2020-01-12 17:14:10', '2020-01-12 17:14:10'),
	(278, 10, 'App\\Gallery', 1, 'image', 'gallery', 'ciSvDBN7z9w3cS7ux9s3IlfNzeejxGgioVK1WKRB.jpeg', 1, 3, '[500,300,200,100,50]', NULL, '2020-01-12 17:14:11', '2020-01-12 17:14:11'),
	(279, 10, 'App\\Gallery', 1, 'image', 'gallery', 'ognbx7uXUG4lbZLNQUQ5DoBtESPKSCoSmKw7otxI.png', 1, 4, '[500,300,200,100,50]', NULL, '2020-01-12 17:14:12', '2020-01-12 17:14:12'),
	(280, 10, 'App\\Gallery', 1, 'image', 'gallery', 'KIUB7Iv5cZvKY2lu01ZWTnAhWQ9nbdOMHDbHuEJx.jpeg', 1, 5, '[500,300,200,100,50]', NULL, '2020-01-12 17:14:14', '2020-01-12 17:14:14'),
	(281, 68, 'App\\BlogContent', 1, 'image', 'content', '8QZ0SteGyULKaXoz128FZnNfBP7jYSzSIjRSvQ4v.jpeg', 1, 1, '[500,300,200,100,50]', NULL, '2020-01-12 18:18:26', '2020-01-12 18:18:26'),
	(282, 68, 'App\\BlogContent', 1, 'image', 'content', 'ei5rRBkKW3CmcK2BL8dxs4Kbmmfm4nTX5tmzpCxR.jpeg', 0, 2, '[500,300,200,100,50]', NULL, '2020-01-12 18:18:27', '2020-01-12 18:18:27'),
	(283, 68, 'App\\BlogContent', 1, 'image', 'content', '2I9YZobuSx9FeagyzVZnLP1EA6akP0Mm3lepmqyZ.jpeg', 0, 3, '[500,300,200,100,50]', NULL, '2020-01-12 18:18:27', '2020-01-12 18:18:27');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_slider` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_gallery_users` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.gallery: 3 rows
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id`, `created_by`, `title`, `status`, `is_slider`, `created_at`, `updated_at`) VALUES
	(8, 4, 'دیدار با رهبر انقلاب', 1, 1, '2020-01-12 14:55:51', '2020-01-12 12:33:19'),
	(9, 1, 'برند جدید تستی', 1, 0, '2020-01-12 14:00:34', '2020-01-12 17:31:35'),
	(10, 1, 'اسلایدر جدیدx', 1, 1, '2020-01-12 14:00:51', '2020-01-12 14:00:51');
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
('users', (select count(id) from users)),
('deactive user', (select count(id) from users where status = 0)),
('member of the site', (select count(id) from users where role_key = 'guest')),
('system users', (select count(id) from users where role_key <> 'guest')),
('tickets', (SELECT COUNT(id) FROM ticket)),
('waiting tickets', (SELECT COUNT(id) FROM ticket WHERE status = 0))
;


SELECT * FROM map_reports;
END//
DELIMITER ;

-- Dumping structure for table heydaritayeb.member
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`),
  KEY `created_by` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.member: 179 rows
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `region_id`, `user_id`, `name`, `family`, `mobile`, `code`, `address`, `gender`, `created_at`, `updated_at`) VALUES
	(15, 899, 4, 'ابو احسن', 'بهرامی', '09187376017', '333333333332', 'کرمانشاه دادگستری', 'male', '2018-01-15 18:09:53', '2020-01-19 11:19:47'),
	(17, 899, 4, 'زهرا', 'جلیلی', '09183366017', '5555555555', 'کرمانشاه دادگستری', 'male', '2018-01-15 18:12:55', '2020-01-19 11:19:47'),
	(18, 899, 4, 'زهره', 'بهرامی', '09187776017', '555555555', 'کرمانشاه دادگستری', 'female', '2018-01-15 18:14:44', '2020-01-19 11:19:47'),
	(19, 895, 4, 'هانیه', 'بهرامی', '09184706617', '44444444', 'کرمانشاه فردوسی', 'female', '2018-01-15 18:28:45', '2020-01-19 11:19:47'),
	(20, 895, 4, 'رسول', 'محمدی', '09353034789', '555554', 'کرمانشاه فردوسی', 'male', '2018-01-15 18:30:24', '2020-01-19 11:19:47'),
	(21, 895, 4, 'سودابه', 'زندی', '09363336666', '45248', 'کرمانشاه فردوسی', 'female', '2018-01-15 18:49:39', '2020-01-19 11:19:47'),
	(22, 889, 4, 'کبری', 'سیاه کمری', '09363363079', '1', 'کرمانشاه دولت اباد', 'female', '2018-01-15 18:59:08', '2020-01-19 11:19:47'),
	(23, 889, 4, 'جواد', 'جلیلی', '09187351326', '2', 'کرمانشاه دولت اباد', 'male', '2018-01-15 19:01:34', '2020-01-19 11:19:47'),
	(24, 889, 4, 'اقبال', 'جلیلی', '09025981847', '3', 'کرمانشاه دولت اباد', 'male', '2018-01-15 19:03:30', '2020-01-19 11:19:47'),
	(25, 893, 4, 'جواد', 'بهرامی نسب', '09188312217', '4', 'کرمانشاه کیهان شهر', 'male', '2018-01-15 19:06:28', '2020-01-19 11:19:47'),
	(26, 893, 4, 'شکیبا', 'بهرامی نسب', '09028312217', '5', 'کرمانشاه کیهان شهر', 'female', '2018-01-15 19:07:59', '2020-01-19 11:19:47'),
	(27, 893, 4, 'شهناز', 'قبادی', '09183312217', '6', 'کرمانشاه کیهانشهر', 'male', '2018-01-15 19:10:13', '2020-01-19 11:19:47'),
	(28, 899, 4, 'زاهد', 'شاهویسی', '09184701309', '9', 'کرمانشاه دادگستری', 'male', '2018-01-15 19:14:59', '2020-01-19 11:19:47'),
	(29, 888, 4, 'سعید', 'رشیدی', '09183318234', '10', 'کرمانشاه برق', 'male', '2018-01-15 19:21:38', '2020-01-19 11:19:47'),
	(30, 899, 4, 'مهدی', 'زیوری', '09363675024', '11', 'کرمانشاه مسکن', 'male', '2018-01-15 19:23:37', '2020-01-19 11:19:47'),
	(31, 903, 4, 'سید سجاد', 'حسینی', '09350870177', '14', 'کرمانشاه زیباشهر', 'male', '2018-01-15 19:28:43', '2020-01-19 11:19:47'),
	(32, 901, 4, 'معین', 'گنجی', '09187280503', '15', 'کرمانشاه ظفر', 'male', '2018-01-15 19:31:34', '2020-01-19 11:19:47'),
	(33, 889, 4, 'حامد', 'اریس', '09108162513', '18', 'کرمانشاه گلستان', 'male', '2018-01-15 19:37:26', '2020-01-19 11:19:47'),
	(34, 901, 4, 'محسن', 'حیدری', '09187555503', '32', 'کرمانشاه مسکن', 'male', '2018-01-15 20:12:01', '2020-01-19 11:19:47'),
	(35, 901, 4, 'سجاد', 'کرجی', '09354755741', '78', 'مسکن', 'male', '2018-01-15 20:13:58', '2020-01-19 11:19:47'),
	(36, 893, 4, 'جمال', 'جلیلی', '09183397383', '54', 'کرمانشاه میدان بار', 'male', '2018-01-15 20:16:29', '2020-01-19 11:19:47'),
	(37, 903, 4, 'امیر محمد', 'بهزادی', '09199185783', '۶۱', 'کرمانشاه کسری', 'male', '2018-02-03 22:11:22', '2020-01-19 11:19:47'),
	(38, 888, 4, 'حامد', 'مرادی', '09380394008', '۶۲', NULL, 'male', '2018-02-03 22:15:10', '2020-01-19 11:19:47'),
	(39, 899, 4, 'احسان', 'نعمت زاده', '09903593997', NULL, 'الهیه', 'male', '2018-02-06 09:36:43', '2020-01-19 11:19:47'),
	(40, 899, 4, 'مظاهر', 'نعمت زاده', '09126605634', NULL, 'الهیه', 'male', '2018-02-06 09:37:51', '2020-01-19 11:19:47'),
	(41, 899, 4, 'هادی', 'نعمت زاده', '09189196726', NULL, 'الهیه', 'male', '2018-02-06 09:38:58', '2020-01-19 11:19:47'),
	(42, 897, 4, 'آرش', 'حمیدی', '09303637573', NULL, 'مسکن', 'male', '2018-02-06 09:41:11', '2020-01-19 11:19:47'),
	(43, 895, 4, 'احسان', 'عباسی', '09188324700', NULL, 'مصدق', 'male', '2018-02-06 09:42:25', '2020-01-19 11:19:47'),
	(44, 899, 4, 'احسان', 'عظیمی', '09183388651', NULL, 'دادگستری', 'male', '2018-02-06 09:43:26', '2020-01-19 11:19:47'),
	(45, 903, 4, 'آرش', 'صبوری', '09039500374', NULL, 'متخصصین', 'male', '2018-02-06 09:46:11', '2020-01-19 11:19:47'),
	(46, 888, 4, 'آرمان', 'سان احمدی', '09187393577', NULL, 'فرهنگیان فاز یک', 'male', '2018-02-06 09:47:50', '2020-01-19 11:19:47'),
	(47, 888, 4, 'آرمان', 'نسمی پور', '09356115339', NULL, 'گلستان', 'male', '2018-02-06 09:49:23', '2020-01-19 11:19:47'),
	(48, 888, 4, 'اشکان', 'نسیمی پور', '09906820248', NULL, 'گلستان', 'male', '2018-02-06 09:50:21', '2020-01-19 11:19:47'),
	(49, 897, 4, 'اشکان', 'محمدی', '09032729841', NULL, 'مسکن', 'male', '2018-02-06 09:51:42', '2020-01-19 11:19:47'),
	(50, 893, 4, 'اصغر', 'سهرابی', '09034275357', NULL, 'رشیدی', 'male', '2018-02-06 09:53:30', '2020-01-19 11:19:47'),
	(51, 903, 4, 'افسانه', 'راد', '09187556137', NULL, 'متخصصین', 'female', '2018-02-06 09:54:49', '2020-01-19 11:19:47'),
	(52, 899, 4, 'افسانه', 'شریفی', '09186890782', NULL, 'الهیه', 'female', '2018-02-06 09:55:59', '2020-01-19 11:19:47'),
	(53, 899, 4, 'افشین', 'شکری', '09189949352', NULL, 'الهیه', 'male', '2018-02-06 09:56:57', '2020-01-19 11:19:47'),
	(54, 899, 4, 'ایت الله', 'رزمجو', '09183371047', NULL, 'داداگستری', 'male', '2018-02-06 09:57:51', '2020-01-19 11:19:47'),
	(55, 895, 4, 'رضا', 'محرابی', '09191774336', NULL, 'فردوسی', 'male', '2018-02-06 09:58:49', '2020-01-19 11:19:47'),
	(56, 888, 4, 'پژمان', 'بهرامی', '09185581661', NULL, 'فرهنگیان فاز یک', 'male', '2018-02-06 09:59:44', '2020-01-19 11:19:47'),
	(57, 899, 4, 'شراره', 'الفتی', '09388613232', NULL, 'دادگستری', 'female', '2018-02-06 10:00:40', '2020-01-19 11:19:47'),
	(58, 903, 4, 'امید', 'اورنگ', '09183567988', NULL, 'نقلیه', 'male', '2018-02-06 10:02:00', '2020-01-19 11:19:47'),
	(59, 899, 4, 'امید', 'حسنوند', '09300730948', NULL, 'دادگستری', 'male', '2018-02-06 10:03:25', '2020-01-19 11:19:47'),
	(60, 899, 4, 'امید', 'کریمی', '09181281680', NULL, 'الهیه', 'male', '2018-02-06 10:04:38', '2020-01-19 11:19:47'),
	(61, 895, 4, 'امیر', 'اسعدتبار', '09182906127', NULL, 'تاج گذاری', 'male', '2018-02-06 10:06:31', '2020-01-19 11:19:47'),
	(62, 903, 4, 'امیر حسین', 'ایوانی', '09371687175', NULL, 'پردیس', 'male', '2018-02-06 10:07:24', '2020-01-19 11:19:47'),
	(63, 897, 4, 'امیر', 'عظیمی', '09187232643', NULL, 'مسکن', 'male', '2018-02-06 10:08:23', '2020-01-19 11:19:47'),
	(64, 888, 4, 'امیر حسین', 'منصودی', '09189939355', NULL, 'برق', 'male', '2018-02-06 10:32:34', '2020-01-19 11:19:47'),
	(65, 899, 4, 'امیر', 'لاهوتی', '09327516032', NULL, 'الهیه', 'male', '2018-02-06 10:34:06', '2020-01-19 11:19:47'),
	(66, 903, 4, 'امین', 'بیگ رضایی', '09336261688', NULL, 'پردیس', 'male', '2018-02-06 10:35:40', '2020-01-19 11:19:47'),
	(67, 897, 4, 'امین', 'چهره ای فر', '09185548114', NULL, 'فرهنگایان فاز۲', 'male', '2018-02-06 10:37:16', '2020-01-19 11:19:47'),
	(68, 899, 4, 'ایمان', 'باقری', '09337404441', NULL, 'الهیه', 'male', '2018-02-06 10:38:12', '2020-01-19 11:19:47'),
	(69, 899, 4, 'ایوب', 'اکبری', '09182322825', NULL, 'الهیه', 'male', '2018-02-06 10:39:14', '2020-01-19 11:19:47'),
	(70, 903, 4, 'ایوب', 'نبردی', '09187344086', NULL, 'صدرا', 'male', '2018-02-06 10:40:16', '2020-01-19 11:19:47'),
	(71, 901, 4, 'بهداد', 'گراوند', '09359691773', NULL, 'معلم', 'male', '2018-02-06 10:41:09', '2020-01-19 11:19:47'),
	(72, 899, 4, 'بهرنگ', 'مهدی ابادی', '09187339073', NULL, 'دادگستری', 'male', '2018-02-06 10:42:42', '2020-01-19 11:19:47'),
	(73, 888, 4, 'بهداد', 'بحری', '09371804229', NULL, 'فرهنگیان فاز یک', 'male', '2018-02-06 10:43:46', '2020-01-19 11:19:47'),
	(74, 899, 4, 'پژمان', 'کاظمی', '09183373583', NULL, 'دادگستری', 'male', '2018-02-06 10:45:05', '2020-01-19 11:19:47'),
	(75, 899, 4, 'پوریا', 'باوندپور', '09185697092', NULL, 'الهیه', 'male', '2018-02-06 11:05:10', '2020-01-19 11:19:47'),
	(76, 888, 4, 'بیژن', 'پهلوانی', '09181302697', NULL, 'برق', 'male', '2018-02-06 11:06:47', '2020-01-19 11:19:47'),
	(77, 903, 4, 'پیام', 'کرمجانی', '09189957406', NULL, 'پردیس', 'male', '2018-02-06 11:08:04', '2020-01-19 11:19:47'),
	(78, 889, 4, 'جبار', 'علیزاده', '09185649958', NULL, 'دولت اباد', 'male', '2018-02-06 11:09:05', '2020-01-19 11:19:47'),
	(79, 889, 4, 'جلیل', 'احمدی', '09187171760', NULL, 'دولت اباد', 'male', '2018-02-06 11:10:14', '2020-01-19 11:19:47'),
	(80, 899, 4, 'محمد جواد', 'یوسف زاده', '09360250057', NULL, 'دادگستری', 'male', '2018-02-06 11:12:25', '2020-01-19 11:19:47'),
	(81, 888, 4, 'محمد', 'تلیه ای', '09187352558', NULL, 'مرکزی', 'male', '2018-02-06 11:13:30', '2020-01-19 11:19:47'),
	(82, 899, 4, 'حامد', 'مقدسی', '09353397608', NULL, 'الهیه', 'male', '2018-02-07 09:24:56', '2020-01-19 11:19:47'),
	(83, 888, 4, 'حمید', 'نجیمی', '09185885745', NULL, 'سنگر', 'male', '2018-02-07 09:26:49', '2020-01-19 11:19:47'),
	(84, 899, 4, 'حمید رضا', 'انفرادی', '09187370298', NULL, 'الهیه', 'male', '2018-02-07 09:29:19', '2020-01-19 11:19:47'),
	(85, 897, 4, 'سردار پاسدار حاج علی', 'فشی  بازنشسته سپاه', '09183861323', NULL, 'خیابان مسکن', 'male', '2018-02-07 19:04:47', '2020-01-19 11:19:47'),
	(86, 897, 4, 'سردار پاسدار حاج علی', 'فشی  بازنشسته سپاه', '09183861323', NULL, 'خیابان مسکن', 'male', '2018-02-07 19:22:02', '2020-01-19 11:19:47'),
	(87, 897, 4, 'دکتر عزت‌الله', 'امیری', '09181305144', NULL, 'خیابان مسکن ، مطب', 'male', '2018-02-07 19:28:12', '2020-01-19 11:19:47'),
	(88, 897, 4, 'دکتر محمد رضا', 'رضایی', '09188319957', NULL, 'خیابان مسکن ، مطب دندانپزشکی', 'male', '2018-02-07 19:31:36', '2020-01-19 11:19:47'),
	(89, 888, 4, 'دکتر کامبیز', 'حسن زاده ،وکیل', '09128620901', NULL, 'خیابان بیست و دو بهمن', 'male', '2018-02-07 19:36:07', '2020-01-19 11:19:47'),
	(90, 888, 4, 'حاج مولاداد', 'رشیدی ، فرماندار اسبق کنگاور و جوانرود', '09188564386', NULL, 'خیابان ،حافظیه', 'male', '2018-02-07 19:40:38', '2020-01-19 11:19:47'),
	(91, 899, 4, 'سرهنگ حاج سید جواد', 'موسوی اجاق', '09183898890', NULL, 'خیابان، الهیه', 'male', '2018-02-08 15:18:51', '2020-01-19 11:19:47'),
	(92, 897, 4, 'حاج عطاالله', 'امیری', '09353584441', NULL, 'خیابان،مسکن', 'male', '2018-02-08 15:23:15', '2020-01-19 11:19:47'),
	(93, 888, 4, 'حاج مصطفی', 'نیک وفا', '09188334551', NULL, 'بلوار زن', 'male', '2018-02-08 15:59:18', '2020-01-19 11:19:47'),
	(94, 897, 4, 'دکتر کامران', 'مرادی', '09334533627', NULL, 'خیابان،مسکن', 'male', '2018-02-08 16:01:55', '2020-01-19 11:19:47'),
	(95, 897, 4, 'حمید', 'پرندین', '09188877640', NULL, 'فرهنگیان،فاز2', 'male', '2018-02-08 16:07:08', '2020-01-19 11:19:47'),
	(96, 903, 4, 'رسول', 'پانیاز', '09185735066', NULL, 'شهرک،پردیس', 'male', '2018-02-08 16:10:19', '2020-01-19 11:19:47'),
	(97, 897, 4, 'حاج داریوش', 'فتاحی', '09189188136', NULL, 'خیابان،مسکن', 'male', '2018-02-08 16:14:05', '2020-01-19 11:19:47'),
	(98, 888, 4, 'بهرام', 'نجفی', '09188874821', NULL, 'بهزیستی', 'male', '2018-02-08 16:17:18', '2020-01-19 11:19:47'),
	(99, 893, 4, 'حاج یدالله', 'پورمحمدی', '09188879769', NULL, 'خیابان ، شریعتی', 'male', '2018-02-08 16:21:48', '2020-01-19 11:19:47'),
	(100, 893, 4, 'بهروز', 'محمودی', '09187259964', NULL, 'اداره برق کرمانشاه', 'male', '2018-02-08 17:03:14', '2020-01-19 11:19:47'),
	(101, 888, 4, 'مهندس مجید', 'حیدری', '09183334014', NULL, 'صداوسیما', 'male', '2018-02-08 17:05:47', '2020-01-19 11:19:47'),
	(102, 888, 4, 'جزا', 'محمودی', '09187542522', NULL, 'بیست و دو بهمن', 'male', '2018-02-08 17:08:06', '2020-01-19 11:19:47'),
	(104, 901, 4, 'حسین', 'جوهری', '09185674226', NULL, 'شهرک،کرناچی', 'male', '2018-02-08 18:18:10', '2020-01-19 11:19:47'),
	(105, 888, 4, 'امیر', 'جوهری', '09189306026', NULL, 'بیست و دو بهمن', 'male', '2018-02-08 18:20:30', '2020-01-19 11:19:47'),
	(106, 888, 4, 'حسین', 'نوری. ،مدیر تاسیسات صداوسیما', '09189281411', NULL, 'صداوسیمای  کرمانشاه', 'male', '2018-02-08 18:23:21', '2020-01-19 11:19:47'),
	(107, 897, 4, 'حمید', 'فولادی', '09188327350', NULL, 'خیابان ، مسکن', 'male', '2018-02-08 18:25:48', '2020-01-19 11:19:47'),
	(108, 897, 4, 'حاج خسرو', 'نوربخشیان', '09188853079', NULL, 'فرهنگیان فاز2', 'male', '2018-02-08 18:29:28', '2020-01-19 11:19:47'),
	(109, 893, 4, 'دانش', 'مهدویان', '09189337523', NULL, 'میدان آزادی', 'male', '2018-02-08 18:34:01', '2020-01-19 11:19:47'),
	(110, 897, 4, 'سجاد', 'حاجیان', '09332069310', NULL, 'خیابان ، مسکن', 'male', '2018-02-08 18:36:04', '2020-01-19 11:19:47'),
	(111, 889, 4, 'کیوان', 'شریفی', '09187198153', NULL, 'فرهنگیان،فاز 1', 'male', '2018-02-08 18:39:33', '2020-01-19 11:19:47'),
	(112, 889, 4, 'سعید', 'ناصری', '09185713410', NULL, 'میدان،ارشاد', 'male', '2018-02-08 18:43:44', '2020-01-19 11:19:47'),
	(113, 897, 4, 'سعید', 'اکبری', '09010959913', NULL, 'خیابان ، مسکن', 'male', '2018-02-08 18:46:21', '2020-01-19 11:19:47'),
	(114, 897, 4, 'سعید', 'صادقی', '09188396449', NULL, 'خیابان ، مسکن', 'male', '2018-02-08 18:48:16', '2020-01-19 11:19:47'),
	(115, 888, 4, 'سهراب', 'عزیزی', '09188399252', NULL, 'صداوسیما', 'male', '2018-02-08 18:56:40', '2020-01-19 11:19:47'),
	(116, 893, 4, 'سیامک', 'رعنایی', '09103770549', NULL, 'خیابان،رشیدی', 'male', '2018-02-09 09:25:00', '2020-01-19 11:19:47'),
	(117, 893, 4, 'سید رضا', 'باقری', '09358779781', NULL, 'خیابان ، رشیدی', 'male', '2018-02-09 09:26:51', '2020-01-19 11:19:47'),
	(118, 888, 4, 'عباس', 'نجفی', '09183322182', NULL, 'صداوسیما', 'male', '2018-02-09 09:35:01', '2020-01-19 11:19:47'),
	(119, 897, 4, 'علی', 'ابراهیمی', '09101557846', NULL, 'خیابان ، مسکن', 'male', '2018-02-09 09:37:59', '2020-01-19 11:19:47'),
	(120, 897, 4, 'علی', 'مرادی', '09186792090', NULL, 'خیابان ، مسکن', 'male', '2018-02-09 09:39:31', '2020-01-19 11:19:47'),
	(121, 888, 4, 'غلام', 'صادقی', '09189461303', NULL, 'بیست و دو بهمن', 'male', '2018-02-09 09:42:21', '2020-01-19 11:19:47'),
	(122, 903, 4, 'قباد', 'کفاشیان', '09189343798', NULL, 'خیابان ، کسری', 'male', '2018-02-09 09:45:17', '2020-01-19 11:19:47'),
	(123, 903, 4, 'کاوه', 'کاکاخانی', '09363445213', NULL, 'خیابان ، کسری', 'male', '2018-02-09 09:47:27', '2020-01-19 11:19:47'),
	(124, 897, 4, 'ایمان', 'کرمی', '09186191869', NULL, 'خیابان ، مسکن', 'male', '2018-02-09 09:49:03', '2020-01-19 11:19:47'),
	(125, 895, 4, 'نریمان', 'عطایی', '09183399296', NULL, 'خیابان ، شریعتی', 'male', '2018-02-09 09:56:43', '2020-01-19 11:19:47'),
	(126, 888, 4, 'وحید', 'رجبی', '09181331216', NULL, 'بلوار،زن', 'male', '2018-02-09 10:00:07', '2020-01-19 11:19:47'),
	(127, 888, 4, 'مهسا', 'حسنوند', '09386517943', NULL, 'بیست و دو بهمن', 'female', '2018-02-09 10:03:11', '2020-01-19 11:19:47'),
	(128, 888, 4, 'مرضیه', 'اکبری', '09187975591', NULL, 'بیست و دو بهمن', 'female', '2018-02-09 10:06:37', '2020-01-19 11:19:47'),
	(129, 901, 4, 'زهرا', 'پروین', '09189033079', NULL, 'شهرک ، معلم', 'female', '2018-02-09 10:10:36', '2020-01-19 11:19:47'),
	(130, 901, 4, 'انسیه', 'پروین', '09187761942', NULL, 'شهرک ، معلم،', 'female', '2018-02-09 10:12:28', '2020-01-19 11:19:47'),
	(131, 893, 4, 'سجاد', 'ملکی', '09188363208', NULL, 'خیابان مدرس بالاتر از پرده سرای غلامی (سنقری)', 'male', '2018-02-12 10:39:36', '2020-01-19 11:19:47'),
	(132, 893, 4, 'علی اکبر', 'صبوری', '09182890041', NULL, 'خیابان مدرس ساعت فروشی (سنقری)', 'male', '2018-02-12 10:42:24', '2020-01-19 11:19:47'),
	(133, 893, 4, 'عبدالحسین', 'غلامی', '09181320930', NULL, 'خیابان مدرس بالاتر از سه راه نواب پرده سرای غلامی', 'male', '2018-02-12 10:46:29', '2020-01-19 11:19:47'),
	(134, 893, 4, 'اسماعیل', 'بهرام آبادی', '09188551967', NULL, 'خیابان مدرس بالاتر از سه راه نواب پوشاک', 'male', '2018-02-12 11:17:20', '2020-01-19 11:19:47'),
	(135, 893, 4, 'فتح اله', 'کرمی', '09181555540', NULL, 'سه راه نواب باقلوا فروشی کرمی', 'male', '2018-02-12 11:20:30', '2020-01-19 11:19:47'),
	(136, 893, 4, 'شهرام', 'کرمی', '09185819099', NULL, 'سه راه نواب باقلوا فروشی کرمی', 'male', '2018-02-12 11:24:16', '2020-01-19 11:19:47'),
	(137, 893, 4, 'حجت', 'کرمی', '09181555545', NULL, 'سه راه نواب باقلوا فروشی کرمی', 'male', '2018-02-12 11:26:35', '2020-01-19 11:19:47'),
	(138, 893, 4, 'شهرام', 'احمدی', '09183362722', NULL, 'خیابان مدرس پاساژ ولی عصر طبقه هم کف فروشگاه شهنام', 'male', '2018-02-12 11:31:30', '2020-01-19 11:19:47'),
	(139, 893, 4, 'محمد متین', 'احمدی', '09215697591', NULL, 'خیابان مدرس پاساژ ولی عصر طبقه هم کف فروشگاه شهنام', 'male', '2018-02-12 11:33:36', '2020-01-19 11:19:47'),
	(140, 893, 4, 'محمد مبین', 'احمدی', '09909735576', NULL, 'خیابان مدرس پاساژ ولی عصر طبقه هم کف فروشگاه شهنام', 'male', '2018-02-12 11:35:45', '2020-01-19 11:19:47'),
	(141, 893, 4, 'تیمور', 'همتی', '09183391512', NULL, 'خیابان مدرس سه راه نواب هتل جهان سابق تولیدی بهنام', 'male', '2018-02-12 11:41:55', '2020-01-19 11:19:47'),
	(142, 893, 4, 'حجت اله', 'هاشمی', '09188553657', NULL, 'خیابان مدرس هتل جهان سابق خیاطی', 'male', '2018-02-12 11:43:51', '2020-01-19 11:19:47'),
	(143, 893, 4, 'شیلان', 'نصرتی', '09186844725', NULL, 'خیابان مدرس سه راه نواب فروشگاه ساعت پریان', 'male', '2018-02-12 11:46:27', '2020-01-19 11:19:47'),
	(144, 893, 4, 'ساسان', 'نصرتی', '09187339172', NULL, 'خیابان مدرس سه راه نواب فروشگاه ساعت پریان', 'male', '2018-02-12 11:48:17', '2020-01-19 11:19:47'),
	(145, 889, 4, 'اشکان', 'احمدی', '09183361045', NULL, 'جوانشیر رئیس بانک صادرات شعبه جوانشیر', 'male', '2018-02-12 11:51:59', '2020-01-19 11:19:47'),
	(146, 899, 4, 'علی', 'رضایی', '09188585505', NULL, 'الهیه', 'male', '2018-02-16 10:05:31', '2020-01-19 11:19:47'),
	(147, 903, 4, 'میلاد', 'ویسی', '09217871428', NULL, 'پردیس', 'male', '2018-02-16 10:20:12', '2020-01-19 11:19:47'),
	(148, 901, 4, 'اسد', 'اکبری', '09185700315', NULL, 'باغ ابریشم', 'male', '2018-02-28 06:46:58', '2020-01-19 11:19:47'),
	(149, 901, 4, 'حسین', 'اکبری', '09187400642', NULL, 'هیت حضرت ابوالفضل ع باغ ابریشم', 'male', '2018-02-28 06:52:06', '2020-01-19 11:19:47'),
	(150, 901, 4, 'سلمان', 'افکاری', '09187261731', NULL, 'باغ ابریشم', 'male', '2018-02-28 06:54:14', '2020-01-19 11:19:47'),
	(151, 901, 4, 'کروش', 'اکبری', '09119120913', NULL, 'باغ ابریشم', 'male', '2018-02-28 06:56:15', '2020-01-19 11:19:47'),
	(152, 901, 4, 'مصطفی', 'عظیمی', '09185538979', NULL, 'باغ ابریشم', 'male', '2018-02-28 06:58:28', '2020-01-19 11:19:47'),
	(153, 901, 4, 'بهمن', 'فتحی', '09187264663', NULL, 'باغ ابریشم', 'male', '2018-02-28 06:59:31', '2020-01-19 11:19:47'),
	(154, 901, 4, 'جعفر', 'اکبری', '09193316300', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:00:24', '2020-01-19 11:19:47'),
	(155, 901, 4, 'جواد', 'اکبری', '09188319145', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:01:08', '2020-01-19 11:19:47'),
	(156, 901, 4, 'دانیال', 'عباسی', '09128618440', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:02:07', '2020-01-19 11:19:47'),
	(157, 901, 4, 'سید مظفر', 'موسوی اجاق', '09183875390', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:03:34', '2020-01-19 11:19:47'),
	(158, 901, 4, 'جمشید', 'نظری', '09186800464', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:04:58', '2020-01-19 11:19:47'),
	(159, 901, 4, 'صفرخان', 'رضایی', '09183332574', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:05:48', '2020-01-19 11:19:47'),
	(160, 901, 4, 'فرامرز', 'اکبری', '09183335574', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:07:04', '2020-01-19 11:19:47'),
	(161, 901, 4, 'فریبرز', 'اکبری', '09188316709', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:08:14', '2020-01-19 11:19:47'),
	(162, 901, 4, 'کلانتر', 'مرادی', '09125490025', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:09:35', '2020-01-19 11:19:47'),
	(163, 901, 4, 'کمال', 'یزدانی', '09187214220', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:11:02', '2020-01-19 11:19:47'),
	(164, 901, 4, 'داریوش', 'مارابی', '09189302029', NULL, 'باغ ابریشم کارمند شهرداری', 'male', '2018-02-28 07:12:13', '2020-01-19 11:19:47'),
	(165, 901, 4, 'میلاد', 'مالکی', '09354959285', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:13:03', '2020-01-19 11:19:47'),
	(166, 901, 4, 'بهادر', 'منوچهری', '09183572811', NULL, 'تعاون', 'male', '2018-02-28 07:14:23', '2020-01-19 11:19:47'),
	(167, 901, 4, 'نصرالله', 'کرمی', '09189178834', NULL, 'شهرک معلم سرهنگ سپاه', 'male', '2018-02-28 07:15:29', '2020-01-19 11:19:47'),
	(168, 901, 4, 'سیاوش', 'کرمی', '09187559582', NULL, 'حکمت اباد', 'male', '2018-02-28 07:16:31', '2020-01-19 11:19:47'),
	(169, 901, 4, 'یوسف', 'زیندینی', '09188311832', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:17:36', '2020-01-19 11:19:47'),
	(170, 901, 4, 'افشار', 'محبی', '09188314045', NULL, 'طاقبستان', 'male', '2018-02-28 07:18:45', '2020-01-19 11:19:47'),
	(171, 901, 4, 'عبدالله', 'صدیقی', '09183336900', NULL, 'طاقبستان', 'male', '2018-02-28 07:20:24', '2020-01-19 11:19:47'),
	(172, 901, 4, 'فرهاد', 'صفری', '09104671038', NULL, 'شهرک معلم', 'male', '2018-02-28 07:21:17', '2020-01-19 11:19:47'),
	(173, 901, 4, 'امیر', 'قنبری', '09185641466', NULL, 'طاقبستان', 'male', '2018-02-28 07:22:22', '2020-01-19 11:19:47'),
	(174, 884, 4, 'شمس الله', 'یوسفی', '09366400910', NULL, 'درمانگاه کوزران', 'male', '2018-02-28 07:23:48', '2020-01-19 11:19:47'),
	(175, 889, 4, 'داریوش', 'میرازیی', '09188325508', NULL, 'میدان جلیلی رییس بانک ملی', 'male', '2018-02-28 07:25:13', '2020-01-19 11:19:47'),
	(176, 901, 4, 'تورج', 'اکبری', '09187334109', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:26:14', '2020-01-19 11:19:47'),
	(177, 901, 4, 'داریوش', 'میرزایی', '09188325508', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:27:25', '2020-01-19 11:19:47'),
	(178, 901, 4, 'سید رسول', 'اسماعیلی', '09188337434', NULL, 'سرخه شیره', 'male', '2018-02-28 07:30:03', '2020-01-19 11:19:47'),
	(179, 888, 4, 'عادل', 'ملکی', '09183311897', NULL, 'گلستان', 'male', '2018-02-28 07:31:27', '2020-01-19 11:19:47'),
	(180, 897, 4, 'یوسف', 'امیری', '09188304423', NULL, 'شهرک شهرداری', 'male', '2018-02-28 07:34:46', '2020-01-19 11:19:47'),
	(181, 899, 4, 'امیر', 'کهریزی', '09188314163', NULL, 'غلعه کهنه', 'male', '2018-02-28 07:36:27', '2020-01-19 11:19:47'),
	(182, 901, 4, 'حمید', 'صدیقی', '09183330224', NULL, 'طاقبستان', 'male', '2018-02-28 07:38:01', '2020-01-19 11:19:47'),
	(183, 901, 4, 'محمد علی', 'محمدی', '09188318816', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:39:46', '2020-01-19 11:19:47'),
	(184, 882, 4, 'علی پاشا', 'اکبری', '09188318826', NULL, 'روستای ملاورد', 'male', '2018-02-28 07:42:11', '2020-01-19 11:19:47'),
	(185, 895, 4, 'حسن', 'عزیزی', '09189180991', NULL, 'رفعتیه', 'male', '2018-02-28 07:44:28', '2020-01-19 11:19:47'),
	(186, 901, 4, 'علی', 'اقایی', '09188577289', NULL, 'طاقبستان', 'male', '2018-02-28 07:46:07', '2020-01-19 11:19:47'),
	(187, 901, 4, 'بهزاد', 'مرادی', '09901418265', NULL, 'طاقبستان', 'male', '2018-02-28 07:47:38', '2020-01-19 11:19:47'),
	(188, 901, 4, 'علی اشرف', 'حسینی', '09183328693', NULL, 'چهار راه رودکی', 'male', '2018-02-28 07:48:54', '2020-01-19 11:19:47'),
	(189, 901, 4, 'سیاوش', 'کرمی', '09187559583', NULL, 'حکمت اباد', 'male', '2018-02-28 07:50:16', '2020-01-19 11:19:47'),
	(190, 901, 4, 'علی جان', 'اسدی', '09183370754', NULL, 'طاقبستان', 'male', '2018-02-28 07:51:32', '2020-01-19 11:19:47'),
	(191, 897, 4, 'سید جعفر', 'یغوب زاده', '09188318925', NULL, 'مسکن', 'male', '2018-02-28 07:52:45', '2020-01-19 11:19:47'),
	(192, 889, 4, 'منوچهر', 'امیری', '09183854282', NULL, 'وکیل اقا', 'male', '2018-02-28 07:54:23', '2020-01-19 11:19:47'),
	(193, 901, 4, 'فردین', 'باجلانی', '09183552134', NULL, 'باغ ابریشم', 'male', '2018-02-28 07:56:15', '2020-01-19 11:19:47'),
	(194, 889, 4, 'سیروس', 'ذوالفقاری', '09183558976', NULL, 'بیمارستان امام خمینی', 'male', '2018-02-28 07:57:40', '2020-01-19 11:19:47'),
	(195, 889, 4, 'هلی', 'دلاوری', '09183886341', NULL, 'دیزل اباد', 'male', '2018-11-13 18:20:03', '2020-01-19 11:53:13');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.menu_hyperlink
CREATE TABLE IF NOT EXISTS `menu_hyperlink` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `_lft` int(10) unsigned NOT NULL DEFAULT 0,
  `_rgt` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `external_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`value`),
  KEY `_lft` (`_lft`),
  KEY `_rgt` (`_rgt`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.menu_hyperlink: 4 rows
/*!40000 ALTER TABLE `menu_hyperlink` DISABLE KEYS */;
INSERT INTO `menu_hyperlink` (`value`, `label`, `status`, `_lft`, `_rgt`, `parent_id`, `external_link`, `created_at`, `updated_at`) VALUES
	(1, 'گوشی موبایل', 1, 1, 4, NULL, '0', '2020-01-20 07:13:55', '2020-01-20 07:13:55'),
	(2, 'لوازم آرایشی', 1, 2, 3, 1, '0', '2020-01-20 07:14:00', '2020-01-20 07:14:00'),
	(3, 'موبایل', 1, 5, 8, NULL, 'سشیشسیشسی', '2020-01-20 07:14:09', '2020-01-20 07:26:47'),
	(4, 'مطالب آموزشی', 1, 6, 7, 3, '0', '2020-01-20 07:14:14', '2020-01-20 07:14:14');
/*!40000 ALTER TABLE `menu_hyperlink` ENABLE KEYS */;

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

-- Dumping data for table heydaritayeb.oauth_access_tokens: ~26 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('05bd7cdba1aadc79477be19659b09bc8186b7ff69839cb222282ad67a97ae2e1bb27f71f33f032b8', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:27:48', '2020-01-12 12:27:48', '2021-01-12 12:27:48'),
	('103fb38e9b6f845c0d636cc0618ad5bf7e34588e4d2e586f659d36cfb75bc042fc12f3f0bf422029', 1, 10, 'Token Name', '[]', 1, '2020-01-19 08:18:56', '2020-01-19 08:18:56', '2021-01-19 08:18:56'),
	('1211165c1fa747c169d09ca4a743bbe724d084e9ffa255b1697c3d0ff8b1ce473e3ac23328cec73e', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:23:17', '2020-01-10 21:23:17', '2021-01-10 21:23:17'),
	('2e527601dfcea81d2aff5ba3d6629207c4844a4d0c679cd1b0c15171a48caa68011481a186577934', 1, 10, 'Token Name', '[]', 0, '2020-01-19 17:04:12', '2020-01-19 17:04:12', '2021-01-19 17:04:12'),
	('4398acebbbe2a61a066a91ff3aac209db98ec15a2651ef004fb82bcae6774ca15ad7397a7f7074af', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:57:21', '2020-01-10 20:57:21', '2021-01-10 20:57:21'),
	('447ca8a148cbcd89f73b56af570f4032381bd0798f6117eeaa66f2539658aae986d23368bcd09aaf', 1, 10, 'Token Name', '[]', 0, '2020-01-20 07:08:50', '2020-01-20 07:08:50', '2021-01-20 07:08:50'),
	('452b8c8b968be523beebf608dcfbb165e6c50fec5ffb04cd8476e0632b28cd87518eb3b8bd61e937', 1, 10, 'Token Name', '[]', 0, '2020-01-19 08:16:41', '2020-01-19 08:16:41', '2021-01-19 08:16:41'),
	('51c2077686083bebfd66d514ccf29ad36849fb4dcf5d940338e5ae28fa48ea23284826489e3a2b79', 1, 10, 'Token Name', '[]', 0, '2020-01-19 08:17:07', '2020-01-19 08:17:07', '2021-01-19 08:17:07'),
	('6705fe9373ffc9f4bb45582aea39df8a0377c334f367e39ce99f9fdd802990d5e55bdb98db305d71', 1, 10, 'Token Name', '[]', 0, '2020-01-19 08:18:14', '2020-01-19 08:18:14', '2021-01-19 08:18:14'),
	('74cefcee829916e22180b39e075578f2d066df6c096e181522afbb04125da013a360f9bce56797d6', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:18:44', '2020-01-10 21:18:44', '2021-01-10 21:18:44'),
	('869dbe39beb0a031baab64f8b9c5a800ee14478fc5986b81065a78344eb6d3c0eafca824da2b1929', 1, 10, 'Token Name', '[]', 1, '2020-01-20 06:38:35', '2020-01-20 06:38:35', '2021-01-20 06:38:35'),
	('8ff9ac322fcce8defc15b1c63cfa2b330931cc0c693f7e03303cd0c8cc4419b05b77f94c6452b4bf', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:29', '2020-01-10 20:52:29', '2021-01-10 20:52:29'),
	('9137bce7a1a1fc9730bb677d941d804257ebd5f6afbd9b8cbe324a6ccee6c14d2182f43deb507204', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:57', '2020-01-10 20:52:57', '2021-01-10 20:52:57'),
	('93d7fbcc51976072e95b6260b492599776932da19d25977502b4ab16eecec9688f4387c4564edaa8', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:24:50', '2020-01-10 21:24:50', '2021-01-10 21:24:50'),
	('9a77872b7bd089cfb185330c85b07fe9349c0dae1ce2ea5726264044c195357ed6bbda64efe9c450', 4, 5, 'Token Name', '[]', 0, '2020-01-10 21:27:24', '2020-01-10 21:27:24', '2021-01-10 21:27:24'),
	('a12ce315e97fdacb0bf6ec19b2a7c750d7a56bc7fcf31da2c7fafd49c8dc43622e205bd4b15c0009', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:59:37', '2020-01-10 20:59:37', '2021-01-10 20:59:37'),
	('aba2e574272797c4da320b9f0334ff0b0bac1bf753453e643f88c8099dcea9b8b8da5d30fa8d12d4', 1, 10, 'Token Name', '[]', 1, '2020-01-20 07:11:21', '2020-01-20 07:11:21', '2021-01-20 07:11:21'),
	('b304430a67f29eaa90644360ca8413246904b993cf5153371481a3e28a16a5902153e7a5a01cdae2', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:26:40', '2020-01-12 12:26:40', '2021-01-12 12:26:40'),
	('c7804df2be6fbfde3c436a3504f21f3710c7fb7f847af80409d934a66ff045587d4de21473d9ed17', 1, 8, 'Token Name', '[]', 0, '2020-01-12 17:12:01', '2020-01-12 17:12:01', '2021-01-12 17:12:01'),
	('c81822fda07a6fead6f66fb4e02ec71903ef63e48bdbb6bc0db838104e63cd8c5618438f7f3b9cb3', 1, 10, 'Token Name', '[]', 1, '2020-01-19 09:25:58', '2020-01-19 09:25:58', '2021-01-19 09:25:58'),
	('d03c5390cb07311d88bf76146339a5ef25fe8e21d40fb0f3c2f5253e77026046d022bcf8d8e0317b', 1, 10, 'Token Name', '[]', 0, '2020-01-19 08:18:38', '2020-01-19 08:18:38', '2021-01-19 08:18:38'),
	('eb6ae52248f50c6d56254b5c2b9215ccbd9fae0a1c1a0f6aae90575bd4244b009672d486e55edf71', 1, 10, 'Token Name', '[]', 0, '2020-01-20 07:08:45', '2020-01-20 07:08:45', '2021-01-20 07:08:45'),
	('ef09d6fb4b4a6e2a97857f538874f63d11015f1bccaffa1a9ed46e4ab66446fcc3939c76e3dc1d37', 1, 10, 'Token Name', '[]', 1, '2020-01-20 07:09:15', '2020-01-20 07:09:15', '2021-01-20 07:09:15'),
	('ef1d237fafb302f0e8858c7c5211d250dfd5f2f7407c1ac2066cfa5fe62d95697fc25dbbac3d807c', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:18', '2020-01-10 20:52:18', '2021-01-10 20:52:18'),
	('f04804d0881b29528310e654ed3a7a3060a778754bee4d693ee6f6047f98b551b11933258a87efb4', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:26:58', '2020-01-12 12:26:58', '2021-01-12 12:26:58'),
	('fcac8db49ee2bb29fbcecb03e2c2a0f6db65bb7b0af4d9fd21e94aa6c525f71dd663fcfd464462ca', 1, 10, 'Token Name', '[]', 1, '2020-01-19 08:40:51', '2020-01-19 08:40:51', '2021-01-19 08:40:51');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_clients: ~10 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(2, NULL, 'Laravel Personal Access Client', '3ifOpdDKIvzzcRfIHJakMclRiOhAzj9B4zb98WCb', 'http://localhost', 1, 0, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(3, NULL, 'Laravel Password Grant Client', '0pbp2WmsP5VkpcKmrlx2xhfDu5snRwpxVQNzutOD', 'http://localhost', 0, 1, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(4, 1, 'mehrdad', 'AOBTYNn7I5JAmCrmX8ys9cV9VvV1GPE9PoMoE5Cq', 'http://localhost:8000/auth/callback', 0, 0, 0, '2020-01-10 20:51:49', '2020-01-10 20:51:49'),
	(5, NULL, 'Laravel Personal Access Client', 'ytgkftCVk9Kc88V85kfqkgM4QQpBz8Gg9omJOnPy', 'http://localhost', 1, 0, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(6, NULL, 'Laravel Password Grant Client', 'aMI8bRo3Mx1kIiKqeMRSH0iue5XSKHIzc8jG8okn', 'http://localhost', 0, 1, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(7, 1, 'mehrdad', '9eWC1LzMsqmbc5GVxGdr1W5E30TvRT13kNfQeFnW', 'http://localhost:8000/auth/callback', 0, 0, 0, '2020-01-12 12:23:35', '2020-01-12 12:23:35'),
	(8, NULL, 'Laravel Personal Access Client', '2mFuM7uJMJddcTPLWqbsnbwCiznQR7ty5qdtPBfJ', 'http://localhost', 1, 0, 0, '2020-01-12 12:23:46', '2020-01-12 12:23:46'),
	(9, NULL, 'Laravel Password Grant Client', 'bcTX8WZFLJf2Wr6zZDDFWLiMj0H6hI7yctQiUWXN', 'http://localhost', 0, 1, 0, '2020-01-12 12:23:46', '2020-01-12 12:23:46'),
	(10, NULL, 'Laravel Personal Access Client', '8ETkuWv1o9KM3UW0Q30T2TymBMo5AMriWdVhm3jO', 'http://localhost', 1, 0, 0, '2020-01-19 08:16:34', '2020-01-19 08:16:34'),
	(11, NULL, 'Laravel Password Grant Client', 'dMkd6Bwrsl4zzqVHOb7T1jIpPbzBv3qDQbrCab9a', 'http://localhost', 0, 1, 0, '2020-01-19 08:16:34', '2020-01-19 08:16:34');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_personal_access_clients: ~3 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(2, 5, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(3, 8, '2020-01-12 12:23:46', '2020-01-12 12:23:46'),
	(4, 10, '2020-01-19 08:16:34', '2020-01-19 08:16:34');
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

-- Dumping structure for table heydaritayeb.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` enum('GET','POST','PUT','DELETE') COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.permission: ~60 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`key`, `title`, `url`, `method`, `parent`, `created_at`, `updated_at`) VALUES
	('attachment_delete', 'permissions.attachment delete', '/api/backend/attachment', 'DELETE', 'attachment', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('attachment_post', 'permissions.attachment post', '/api/backend/attachment', 'POST', 'attachment', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_category_index', 'مدیریت', '/api/backend/blog/categories', 'GET', 'blog_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_category_show', 'نمایش', '/api/backend/blog/categories/{id}', 'GET', 'blog_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_category_store', 'ذخیره سازی', '/api/backend/blog/categories', 'POST', 'blog_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_category_update', 'به روز رسانی', '/api/backend/blog/categories/{id}', 'PUT', 'blog_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_content_index', 'مدیریت', '/api/backend/blog/contents', 'GET', 'blog_content', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_content_show', 'نمایش', '/api/backend/blog/contents/{id}', 'GET', 'blog_content', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_content_store', 'ذخیره سازی', '/api/backend/blog/contents', 'POST', 'blog_content', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('blog_content_update', 'به روز رسانی', '/api/backend/blog/contents/{id}', 'PUT', 'blog_content', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('communication_channels_get', 'permissions.communication channels get', '/api/backend/communicationChannels', 'GET', 'communication_channels', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('domain_read', 'permissions.read', '/api/backend/setting', 'GET', 'domain', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('domain_read_sticky', 'permissions.read sticky', '/api/backend/setting/sticky-setting', 'GET', 'domain', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('domain_update', 'به روز رسانی', '/api/backend/setting', 'PUT', 'domain', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('domain_update_sticky', 'permissions.update sticky', '/api/backend/setting/sticky-setting', 'PUT', 'domain', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('filter_tags_get', 'permissions.filter tags get', '/api/backend/filter/tags', 'GET', 'filter', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('filter_users_accessible_get', 'permissions.filter users accessible get', '/api/backend/filter/users/accessible', 'GET', 'filter', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('filter_users_get', 'permissions.filter users get', '/api/backend/filter/users', 'GET', 'filter', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('gallery_index', 'مدیریت', '/api/backend/galleries', 'GET', 'gallery', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('gallery_show', 'نمایش', '/api/backend/galleries/{id}', 'GET', 'gallery', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('gallery_store', 'ذخیره سازی', '/api/backend/galleries', 'POST', 'gallery', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('gallery_update', 'به روز رسانی', '/api/backend/galleries/{id}', 'PUT', 'gallery', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('hyperlink_index', 'مدیریت', '/api/backend/menu/hyperlinks', 'GET', 'hyperlink', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('hyperlink_show', 'نمایش', '/api/backend/menu/hyperlinks/{id}', 'GET', 'hyperlink', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('hyperlink_store', 'ذخیره سازی', '/api/backend/menu/hyperlinks', 'POST', 'hyperlink', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('hyperlink_update', 'به روز رسانی', '/api/backend/menu/hyperlinks/{id}', 'PUT', 'hyperlink', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('member_index', 'مدیریت', '/api/backend/members', 'GET', 'member', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('member_show', 'نمایش', '/api/backend/members/{id}', 'GET', 'member', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('member_store', 'ذخیره سازی', '/api/backend/members', 'POST', 'member', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('member_update', 'به روز رسانی', '/api/backend/members/{id}', 'PUT', 'member', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('menu_index', 'مدیریت', '/api/backend/menu', 'GET', 'menu', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('menu_show', 'نمایش', '/api/backend/menu/{id}', 'GET', 'menu', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('menu_store', 'ذخیره سازی', '/api/backend/menu', 'POST', 'menu', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('menu_update', 'به روز رسانی', '/api/backend/menu/{id}', 'PUT', 'menu', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('permission_index', 'مدیریت', '/api/backend/users/permissions', 'GET', 'permission', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('region_index', 'مدیریت', '/api/backend/regions', 'GET', 'region', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('region_show', 'نمایش', '/api/backend/regions/{id}', 'GET', 'region', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('region_store', 'ذخیره سازی', '/api/backend/regions', 'POST', 'region', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('region_update', 'به روز رسانی', '/api/backend/regions/{id}', 'PUT', 'region', '2020-01-20 06:38:08', '2020-01-20 06:38:08'),
	('report_map_reports', 'permissions.map reports', '/api/backend/reports/map-reports', 'GET', 'report', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('role_index', 'مدیریت', '/api/backend/users/roles', 'GET', 'role', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('role_permissions', 'سطوح دسترسی', '/api/backend/users/roles/{role}/permissions', 'GET', 'role', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('role_set_permission', 'ست کردن سطح دسترسی', '/api/backend/users/roles/{role}/permissions', 'PUT', 'role', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('role_store', 'ذخیره سازی', '/api/backend/users/roles', 'POST', 'role', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('social_medias_get', 'permissions.social medias get', '/api/backend/socialMedias', 'GET', 'social_medias', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_category_index', 'مدیریت', '/api/backend/tickets/categories', 'GET', 'ticket_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_category_show', 'نمایش', '/api/backend/tickets/categories/{id}', 'GET', 'ticket_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_category_store', 'ذخیره سازی', '/api/backend/tickets/categories', 'POST', 'ticket_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_category_update', 'به روز رسانی', '/api/backend/tickets/categories/{id}', 'PUT', 'ticket_category', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_conversations', 'permissions.conversations', '/api/backend/tickets/{id}/conversations', 'GET', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_delete_conversation', 'permissions.delete conversation', '/api/backend/tickets/{ticket}/conversations/{id}', 'DELETE', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_index', 'مدیریت', '/api/backend/tickets', 'GET', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_store', 'ذخیره سازی', '/api/backend/tickets', 'POST', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_store_conversations', 'permissions.store conversations', '/api/backend/tickets/{id}/conversations', 'POST', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('ticket_update', 'به روز رسانی', '/api/backend/tickets/{id}', 'PUT', 'ticket', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('user_change_password', 'تغییر رمز', '/api/backend/users/{id}/change-password', 'PUT', 'user', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('user_index', 'مدیریت', '/api/backend/users', 'GET', 'user', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('user_show', 'نمایش', '/api/backend/users/{id}', 'GET', 'user', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('user_store', 'ذخیره سازی', '/api/backend/users', 'POST', 'user', '2020-01-20 06:38:09', '2020-01-20 06:38:09'),
	('user_update', 'به روز رسانی', '/api/backend/users/{id}', 'PUT', 'user', '2020-01-20 06:38:09', '2020-01-20 06:38:09');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `permission_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_key`,`permission_key`),
  KEY `FK_permission_role_permission` (`permission_key`),
  CONSTRAINT `FK_permission_role_permission` FOREIGN KEY (`permission_key`) REFERENCES `permission` (`key`) ON UPDATE CASCADE,
  CONSTRAINT `FK_permission_role_role` FOREIGN KEY (`role_key`) REFERENCES `role` (`key`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.permission_role: ~120 rows (approximately)
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
	('programmer', 'filter_tags_get'),
	('programmer', 'filter_users_accessible_get'),
	('programmer', 'filter_users_get'),
	('programmer', 'gallery_index'),
	('programmer', 'gallery_show'),
	('programmer', 'gallery_store'),
	('programmer', 'gallery_update'),
	('programmer', 'hyperlink_index'),
	('programmer', 'hyperlink_show'),
	('programmer', 'hyperlink_store'),
	('programmer', 'hyperlink_update'),
	('programmer', 'member_index'),
	('programmer', 'member_show'),
	('programmer', 'member_store'),
	('programmer', 'member_update'),
	('programmer', 'menu_index'),
	('programmer', 'menu_show'),
	('programmer', 'menu_store'),
	('programmer', 'menu_update'),
	('programmer', 'permission_index'),
	('programmer', 'region_index'),
	('programmer', 'region_show'),
	('programmer', 'region_store'),
	('programmer', 'region_update'),
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
	('super_admin', 'filter_tags_get'),
	('super_admin', 'filter_users_accessible_get'),
	('super_admin', 'filter_users_get'),
	('super_admin', 'gallery_index'),
	('super_admin', 'gallery_show'),
	('super_admin', 'gallery_store'),
	('super_admin', 'gallery_update'),
	('super_admin', 'hyperlink_index'),
	('super_admin', 'hyperlink_show'),
	('super_admin', 'hyperlink_store'),
	('super_admin', 'hyperlink_update'),
	('super_admin', 'member_index'),
	('super_admin', 'member_show'),
	('super_admin', 'member_store'),
	('super_admin', 'member_update'),
	('super_admin', 'menu_index'),
	('super_admin', 'menu_show'),
	('super_admin', 'menu_store'),
	('super_admin', 'menu_update'),
	('super_admin', 'permission_index'),
	('super_admin', 'region_index'),
	('super_admin', 'region_show'),
	('super_admin', 'region_store'),
	('super_admin', 'region_update'),
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

-- Dumping structure for table heydaritayeb.region
CREATE TABLE IF NOT EXISTS `region` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `_lft` int(11) NOT NULL,
  `_rgt` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`value`),
  KEY `parent_id` (`parent_id`),
  KEY `lft` (`_lft`),
  KEY `rgt` (`_rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=929 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.region: 23 rows
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`value`, `label`, `parent_id`, `_lft`, `_rgt`, `status`, `created_at`, `updated_at`) VALUES
	(22, 'كرمانشاه', 0, 1, 38, 1, NULL, '2020-01-19 12:15:46'),
	(881, 'بخش مرکزی', 22, 2, 31, 1, NULL, '2020-01-19 12:15:46'),
	(882, 'بخش فیروز آباد', 22, 32, 33, 1, NULL, '2020-01-19 12:15:46'),
	(883, 'بخش ماهی دشت', 22, 34, 35, 1, NULL, '2020-01-19 12:15:46'),
	(884, 'بخش کوزران', 22, 36, 37, 1, NULL, '2020-01-19 08:45:59'),
	(888, 'منطقه یک', 881, 3, 4, 1, NULL, '2020-01-19 12:15:46'),
	(889, 'منطقه دو', 881, 5, 6, 1, NULL, '2020-01-19 12:15:46'),
	(893, 'منطقه سه', 881, 7, 8, 1, NULL, '2020-01-19 12:15:46'),
	(901, 'منطقه هفت', 881, 15, 16, 1, NULL, '2020-01-19 12:15:46'),
	(895, 'منطقه چهار', 881, 9, 10, 1, NULL, '2020-01-19 12:15:46'),
	(924, 'بیلوار', 881, 23, 30, 1, NULL, '2020-01-19 12:15:46'),
	(897, 'منطقه پنج', 881, 11, 12, 1, NULL, '2020-01-19 12:15:46'),
	(899, 'منطقه شش', 881, 13, 14, 1, NULL, '2020-01-19 12:15:46'),
	(903, 'منطقه هشت', 881, 17, 18, 1, NULL, '2020-01-19 12:15:46'),
	(923, 'سایر مناطق', 921, 42, 43, 1, NULL, '2020-01-19 12:15:46'),
	(922, 'تهران', 921, 40, 41, 1, NULL, '2020-01-19 12:15:46'),
	(919, 'سراب نیلوفر', 881, 19, 20, 1, NULL, '2020-01-19 12:15:46'),
	(920, 'دو رود فرامان', 881, 21, 22, 1, NULL, '2020-01-19 12:15:46'),
	(921, 'خارج از استان', NULL, 39, 46, 1, NULL, '2020-01-19 12:15:46'),
	(925, 'سیار', 921, 44, 45, 1, NULL, '2020-01-19 12:15:46'),
	(926, 'مرکزی بیلوار', 924, 24, 25, 1, NULL, '2020-01-19 12:15:46'),
	(927, 'میاندربند', 924, 26, 27, 1, NULL, '2020-01-19 12:15:46'),
	(928, 'پایروند', 924, 28, 29, 1, NULL, '2020-01-19 12:15:46');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;

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

-- Dumping data for table heydaritayeb.role: ~7 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`key`, `title`, `full_access`, `crud`, `created_at`, `updated_at`) VALUES
	('admin', 'ادمین', 1, 1, '2019-11-29 13:56:16', '2019-11-29 13:56:16'),
	('content_manager', 'مدیر محتوا', 0, 1, '2019-11-29 13:56:59', '2019-11-29 13:57:24'),
	('guest', 'مهمان', 0, 0, '2019-12-10 11:39:15', '2019-12-10 11:39:15'),
	('node', 'سرشاخه', 0, 0, '2020-01-19 14:38:24', '2020-01-19 14:38:24'),
	('operator', 'اپراتور', 0, 0, '2019-11-29 13:56:30', '2019-11-29 13:56:30'),
	('programmer', 'تیم برنامه نویس', 1, 1, '2019-11-29 13:55:41', '2019-11-29 13:55:41'),
	('super_admin', 'سوپر ادمین', 1, 1, '2019-11-29 13:55:52', '2019-11-29 13:55:52');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.social_media
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.social_media: 4 rows
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` (`id`, `title`, `icon`) VALUES
	(1, 'اینستاگرام', 'flaticon-025-instagram'),
	(2, 'کانال تلگرام', 'flaticon-029-telegram'),
	(3, 'فیس بوک', 'flaticon-021-facebook'),
	(4, 'توئیتر', 'flaticon-043-twitter');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.tag: 0 rows
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ticket_users` (`created_by`),
  KEY `FK_ticket_ticket_category` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.ticket: 2 rows
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` (`id`, `created_by`, `category_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
	(62, 4, 1, 'شسیششیشیش', 1, NULL, '2020-01-12 17:48:04'),
	(63, 9, 1, 'cpu', 1, '2020-01-12 21:46:10', '2020-01-13 01:19:29');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket_category
CREATE TABLE IF NOT EXISTS `ticket_category` (
  `value` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.ticket_category: 2 rows
/*!40000 ALTER TABLE `ticket_category` DISABLE KEYS */;
INSERT INTO `ticket_category` (`value`, `label`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'بدون دسته', 1, 1, 2, NULL, '2020-01-12 17:47:03', '2020-01-12 17:47:04'),
	(17, 'لینک دوستان', 1, 3, 4, NULL, '2020-01-19 21:04:11', '2020-01-19 21:04:11');
/*!40000 ALTER TABLE `ticket_category` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.ticket_conversation
CREATE TABLE IF NOT EXISTS `ticket_conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ticket_conversation_users` (`created_by`),
  KEY `FK_ticket_conversation_ticket` (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.ticket_conversation: 2 rows
/*!40000 ALTER TABLE `ticket_conversation` DISABLE KEYS */;
INSERT INTO `ticket_conversation` (`id`, `ticket_id`, `created_by`, `content`, `created_at`, `updated_at`) VALUES
	(1, 62, 1, 'شسیسش', '2020-01-12 17:48:01', '2020-01-12 17:48:20'),
	(132, 63, 1, 'بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهن', '2020-01-12 21:49:29', '2020-01-12 21:49:29');
/*!40000 ALTER TABLE `ticket_conversation` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `validation_code` int(5) DEFAULT NULL,
  `verify_account` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_domain` (`mobile`,`domain`),
  KEY `role_key` (`role_key`),
  CONSTRAINT `FK_users_role` FOREIGN KEY (`role_key`) REFERENCES `role` (`key`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `mobile`, `domain`, `role_key`, `name`, `status`, `validation_code`, `verify_account`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '09398624739', 'localhost:3000', 'programmer', 'رضا رحمتی', 1, 62609, 1, '$2y$10$/25eEOtjCMheLkl48YXmAevdSwO0hU9ZQmimEaZu4030fOhyj/sMi', '$2y$10$4ivE8ukfxubtQnqmi76dlO2aVWGgRqJReicMC..qMConyNRXUvoK.', '2019-11-30 23:43:25', '2020-01-12 12:26:11'),
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
