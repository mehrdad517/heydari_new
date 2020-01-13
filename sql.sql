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

-- Dumping structure for table heydaritayeb.blog_categories
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `content_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table heydaritayeb.blog_categories: ~30 rows (approximately)
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` (`content_id`, `category_id`) VALUES
	(69, 1),
	(69, 2),
	(70, 1),
	(70, 2),
	(71, 1),
	(71, 2),
	(72, 1),
	(72, 2),
	(73, 1),
	(73, 2),
	(74, 1),
	(74, 2),
	(75, 1),
	(75, 2),
	(76, 1),
	(76, 2),
	(77, 1),
	(77, 2),
	(78, 1),
	(78, 2),
	(79, 1),
	(79, 2),
	(80, 1),
	(80, 2),
	(81, 1),
	(81, 2),
	(82, 1),
	(82, 2),
	(83, 1),
	(83, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.blog_category: ~2 rows (approximately)
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` (`value`, `label`, `slug`, `meta_title`, `meta_description`, `content`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'اخبار', NULL, NULL, NULL, NULL, 1, 1, 2, NULL, '2020-01-13 11:14:29', '2020-01-13 11:14:29'),
	(2, 'اهداف', NULL, NULL, NULL, NULL, 1, 3, 4, NULL, '2020-01-13 11:14:29', '2020-01-13 11:14:29');
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
  KEY `FK_blog_content_users` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.blog_content: ~15 rows (approximately)
/*!40000 ALTER TABLE `blog_content` DISABLE KEYS */;
INSERT INTO `blog_content` (`id`, `slug`, `created_by`, `title`, `meta_title`, `meta_description`, `content`, `status`, `visitor`, `created_at`, `updated_at`) VALUES
	(69, 'libero-cupiditate-numquam-aut-voluptatibus', 2, 'به شرط آن که بفهمی نفهمی،.', 'اغلب اوقات بی‌کارند..', 'و یا می‌ترسیدم. آن شب.', 'Necessitatibus ut ut impedit voluptate. Animi libero neque ipsum fuga dolores omnis. Natus asperiores quos dignissimos doloremque est corrupti et quam. Natus natus ex asperiores nemo voluptatem. Beatae soluta vitae qui dolores aliquid ut qui. Esse ut in sed architecto ut quis. Occaecati iste est recusandae similique voluptas dolores. Veritatis fugit deserunt deleniti similique tenetur voluptatem. Quibusdam enim accusamus est at tenetur. Sed sapiente numquam quia nobis eum sit a. Eum ut iusto repudiandae dicta id quam fugiat. Illo officiis eveniet delectus totam error earum animi culpa. Quam ipsum rerum ex maxime libero. Dolores vel incidunt cumque provident. Soluta assumenda modi similique dolorem enim. Optio aspernatur enim eos ratione. Omnis magnam quis quae amet dolorem harum. Sunt modi sed voluptatum eligendi voluptas numquam et. Labore dicta est eligendi commodi minima voluptas. Corporis quia vel ab ea aspernatur cum. Labore animi aut quo vel labore error tenetur.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(70, 'voluptatem-beatae-distinctio-aliquam-odio-ab-nam-exercitationem', 2, 'بپرسم. یک هفته‌ی تمام.', 'نفری از اولیای مدرسه.', 'نگاه چپ بکنم. احساس کردم.', 'Asperiores ipsum quasi pariatur voluptatem voluptatem mollitia sint. Vel dicta mollitia corrupti aut. Ut debitis laborum dolorem iusto qui aperiam quasi. Recusandae repudiandae quod voluptatum aliquam labore facere et. Repellendus blanditiis aperiam dolorem sequi minima. Consequatur veritatis tempore ea placeat ut. Earum qui maxime neque error tenetur ut dolore. Minima illo unde reprehenderit quia. Quia voluptatem et doloribus cumque est maiores. Cum assumenda qui molestiae rerum fuga quis ipsam. Est perspiciatis debitis voluptatem at a dolor velit laboriosam. Recusandae molestias consequatur molestiae vel. Id maiores at error nihil non nemo quasi. Soluta quia soluta eveniet iure incidunt. Architecto quas magnam in ut. Corrupti laborum consequatur iure odio molestiae expedita. Ut laborum itaque sed occaecati necessitatibus quia beatae est. Consequatur porro autem deleniti autem quasi voluptatibus. Earum laboriosam blanditiis adipisci aperiam doloremque voluptas.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(71, 'cupiditate-vero-soluta-nostrum-sunt', 2, 'هر کدام‌شان هجده ساعت درس.', 'با این حرف‌ها کاری نداشت..', 'کرد. رفتم تو و داشتند بارش.', 'Voluptatum non voluptatem eligendi. Quia dolor nihil qui fugit quo atque. Quia voluptates non mollitia ea perspiciatis quod. Harum non odit reiciendis provident. Iste dolorem modi facere praesentium ea. Ipsa molestiae aperiam dolor tenetur. Qui occaecati iure et ullam quisquam. Molestiae quidem esse iure ipsam rerum quis praesentium. Rerum ducimus delectus saepe distinctio a sunt. Ipsa quia ipsum qui repellendus laudantium sint. Illo rerum quasi quo accusamus error non asperiores. Et est corrupti consequatur hic. Consectetur voluptatem fugit voluptate dolor. Quia placeat iure repellendus magnam enim aut. Sit odio fugit voluptatem delectus est reiciendis molestias harum. At dolorem nulla consectetur velit. Non vero optio perferendis saepe et rem rem. Optio dolores placeat voluptatem odio. Deserunt voluptas ducimus amet qui ut rem. Esse harum et qui est. Illo veniam non natus ducimus ipsam ad.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(72, 'qui-consectetur-sit-ut-ea-sunt-est-fugit', 2, 'معرف شخصیت آدم است. اواخر.', 'شد. یارو با چشم‌هایش نفس.', 'بود، لطافتی بدهد و.', 'Aut dolore voluptatem doloribus et eos dolores. Rerum saepe possimus quos quia quas quia. Vero perspiciatis praesentium atque est. Voluptatem repellat deleniti doloremque dicta earum. Nihil laboriosam quia et esse eos eos dolor. Molestiae harum tempore repellendus unde rerum dolore. Neque tempora corrupti qui ut explicabo et quae. Ab rerum voluptate adipisci occaecati ullam. Excepturi id nihil accusantium iusto. Ut corrupti sit ipsa. Natus dolores accusantium autem. Corporis debitis est enim quas eos cumque dolores. Earum quos minima in vero deserunt laudantium animi. Omnis sint aliquam eveniet et non. Ratione quod sit non doloribus dolores consequatur. Occaecati porro vitae quos. Dignissimos voluptatem eaque quas magnam. Debitis impedit cupiditate praesentium. Officia amet nihil in enim placeat rerum repudiandae itaque. Dolorem voluptatem soluta aperiam. Enim architecto aperiam nisi id. Sit sint non consequatur autem voluptas sint architecto quod.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(73, 'consequuntur-quod-placeat-dolor-rerum-consectetur-voluptates-nesciunt', 2, 'را با خودش تو آورده بود، به.', 'برایشان گفتم که خیلی هم.', 'معلم دیگر از راه که.', 'Animi quo ducimus facilis. Fugiat ut quia non officia quia libero. Fugit ut accusantium voluptatem consequatur quaerat in. Similique ut nobis et voluptas eum ipsam deleniti. Ad dolores occaecati consequatur eum rem. Aliquam et modi et. Unde inventore quia quae dolore doloremque facere. Laudantium unde eos iste rerum occaecati. Ea aut voluptate aut quia quia consequuntur. Autem totam quae ea assumenda. Qui voluptatem est impedit temporibus quidem iusto nemo quia. Qui non esse libero. Inventore omnis suscipit tempore eum sapiente. Libero dolorem officiis ratione. Omnis quia dolorem hic. Eos repellendus consequuntur officiis unde. Maxime quisquam est numquam rem sapiente aut nulla nulla. Eos voluptatem aut ullam non dolores aut. Voluptatem quas delectus maiores mollitia accusantium aut vel. Nesciunt omnis cum molestiae reprehenderit. Quidem enim maxime facilis occaecati iusto.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(74, 'aspernatur-in-molestiae-iste-distinctio', 2, 'که دست ور دارند آقا. و از.', 'بوده و باز یک گردن‌کلفتی.', 'راه مدرسه‌ی ما بیفتد..', 'Voluptatem accusantium porro atque. Facilis ipsam odit iure deserunt fugiat. Magni rerum qui maxime non tenetur maiores. Ab error est corrupti consectetur perspiciatis sed. Qui excepturi non voluptas ab esse quia modi. Dolor nulla sed eaque qui minus. Dolores ea dolorum asperiores occaecati molestias. Nulla et aut dolor assumenda laborum qui architecto. Quo aspernatur rerum quo aspernatur quae eos tempora. Inventore illum id sed doloribus non molestiae et. Omnis in sed delectus est tempore vitae occaecati earum. Et quia laborum sit illo optio. Qui maiores et nam libero neque odit aut. Ut qui consectetur voluptatem consequuntur inventore ipsam. Suscipit est repellat rerum excepturi consequuntur. Quam sint voluptas amet aut vel. Eius qui assumenda dolorum voluptatem nam. Aperiam quis saepe quia vel. Laboriosam tenetur aut necessitatibus sit consectetur nihil est.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(75, 'ut-est-libero-laborum-quidem', 2, 'مفصل به امضای مدیر مدرسه.', 'حرف حسابم اینه که می‌دم.', 'آمد و همان کنار در ایستاد..', 'Consectetur aut tenetur aut iusto ut. Beatae et et aliquid sint. Natus est ad saepe cum. Aut minus quis quia sed mollitia inventore dolores excepturi. Ut aut debitis consectetur pariatur quis. Natus eveniet ex architecto non nihil est. Laborum ipsum odit sit consequatur aliquid et. Qui voluptate facere quis magni labore rerum aliquid quisquam. Atque est rem illum assumenda occaecati enim non. Sit non ut deleniti maiores. Alias delectus autem corrupti ut. Sint nam nobis sint voluptas. Dignissimos quod modi distinctio similique quia vero aut assumenda. Iure aut ducimus vel autem ea. Eius ullam repudiandae sed qui similique. Ut aut architecto in praesentium et. Aspernatur omnis aut ut ut et explicabo. Sed est in esse et sequi fugiat. Officia doloremque quae cum asperiores voluptatibus. Qui nam qui id sit et enim numquam. Blanditiis tempora eos eveniet distinctio quae. Et eveniet ad inventore animi repudiandae. Accusantium enim praesentium ipsum nisi nisi quasi voluptatibus.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(76, 'minima-doloribus-id-quasi-qui-et-cupiditate-et-beatae', 2, 'خیلی زیاد بود. فردا صبح.', 'کسی همین آیه را صادر کرد..', 'از مادر ناظم پرسیدم و.', 'Cum est qui dignissimos temporibus voluptatem numquam. Esse earum veritatis ut. Et doloremque aspernatur numquam itaque porro reiciendis. Hic aperiam qui eius libero corrupti. Est recusandae molestias explicabo velit. Voluptas nesciunt et blanditiis error. Asperiores quibusdam modi quo sit. Dignissimos dolorum id deserunt corporis est qui et ducimus. Vero consequatur consequatur culpa repudiandae expedita. Nisi voluptatem est reiciendis molestias praesentium at. Autem reprehenderit laudantium velit libero. Ea quo fuga adipisci nostrum. Quibusdam est sunt accusantium aut dicta. Velit eum saepe voluptatem eius porro aspernatur. Officia est incidunt molestiae aut amet reiciendis. Est et mollitia dolor eos nobis vero. Consequatur sapiente molestiae at non earum repudiandae iure iste. Ad id fuga itaque non.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(77, 'expedita-voluptatem-in-molestiae-praesentium-debitis-aperiam-quo', 2, 'وصول شد. منتها به جای خود و.', 'بود. مسلماً او هم نظرش این.', 'باید همین جورها تخم دوزرده.', 'Ducimus ut at delectus magni neque non tempora. Debitis ratione rerum dolores pariatur. Quam architecto hic autem quasi consequatur voluptates consequuntur. Unde vitae nemo numquam incidunt quas. Quia dolor sint debitis saepe. Beatae laudantium dolore debitis sequi. Saepe id ea rerum ut corrupti reiciendis cum. Eum iusto libero nihil debitis aut praesentium ut. Beatae quia totam occaecati est ea. Blanditiis officia dolor officiis quo rerum. Maiores veniam perspiciatis commodi aut officia ipsa earum. Nostrum magni assumenda iste iste. Hic et repellendus autem quam cupiditate. Vero quod illo illum incidunt officia laudantium aspernatur. Expedita recusandae sed ut illum. Qui totam incidunt fugiat consequatur. Beatae fuga facere molestiae in. Placeat inventore voluptas iusto. Cumque non eos necessitatibus omnis. Quo nobis omnis mollitia delectus. Qui consequatur quidem dolorem deleniti et consequuntur. Impedit laboriosam aut veniam.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(78, 'qui-sit-molestias-iure-deleniti-autem-neque-eos', 2, 'راحت بود. از این دروغ‌ها و.', 'می‌کند. گرچه چوب‌های ناظم.', 'به کارها وارد شدم. فردای.', 'Consequatur dignissimos quia rem dolor dolor quis fugiat. Blanditiis aut aperiam consequuntur dolorem placeat. Natus porro saepe itaque fuga. Ut dolores occaecati aut natus neque eligendi illum. Excepturi est illum consequuntur maxime eos fugit exercitationem. Earum ullam laudantium consequuntur magnam et nemo. Id unde consequatur temporibus incidunt deleniti. Tenetur cupiditate laborum dolorum. Omnis temporibus in consequatur eligendi quia voluptatem velit. Velit illum et non ducimus ex. Nihil voluptas in et natus. Reiciendis ea animi nemo perferendis et modi sequi et. Enim et exercitationem et cumque qui ipsa. Rem nihil aut et aut sit fuga. Magni blanditiis alias fuga odit corporis voluptas. Illo qui soluta nesciunt quidem aut. Recusandae commodi fugit quia maiores veniam. Repudiandae ut ea dignissimos nihil qui omnis sed provident. Ut debitis impedit corrupti quidem id incidunt. Et dolorem sint quia eos cum id. Et nostrum et ut unde et ex dolore.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(79, 'veniam-illum-magnam-eum', 2, 'کشید. و من یک هفته‌ی تمام.', 'چهارم. چهار تا آقا. - زحمت.', 'خرده می‌دویدی تا دو روز.', 'Non quis ratione quod aut est qui. Consequatur earum animi beatae sint est ipsam. Dolor consequatur praesentium voluptas quis error. Nam ex reprehenderit adipisci quibusdam omnis laudantium adipisci corporis. Et perspiciatis voluptatibus totam qui quaerat. Itaque est earum deserunt et et cumque necessitatibus. In blanditiis laborum nobis nihil hic. Et dolor vel explicabo. Qui consectetur nulla ea rerum aut totam nisi culpa. Aspernatur debitis sunt ut. Et aut earum harum. Ex repudiandae ipsum sunt aut dolor. Facere magni pariatur ut laudantium velit. Inventore maiores nesciunt blanditiis corporis quaerat magni inventore velit. Sint sapiente et quo quam molestiae minima quam. Quod facilis architecto deserunt nam praesentium neque. Non laboriosam non perspiciatis voluptas. Soluta dolorem eum ut. Eaque nesciunt repellendus expedita autem praesentium. Beatae sed incidunt ipsum recusandae sunt. Aliquam qui eius quidem occaecati quia.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(80, 'laborum-vel-neque-in', 2, 'آخرین معلم هم آمد. آمدم توی.', 'و حتی راه بروند. این بود که.', 'چنان از خودم بدم آمده بود و.', 'Et et accusantium sapiente molestiae tempora. Molestiae et harum dolor quo vero aut. Molestias voluptatem accusamus facilis quo optio. Harum consequatur magnam id commodi optio. Hic sapiente dolorem suscipit fugit et aspernatur. Assumenda unde eos officia aut nemo in. Necessitatibus magnam vel enim error neque consequatur. Dolorem quisquam asperiores non repudiandae. Non assumenda modi saepe est debitis. Praesentium consequatur suscipit et aut. Dolores corrupti adipisci non. Dolores voluptatum autem quod quia quidem velit quibusdam quia. Accusamus fuga at blanditiis asperiores doloribus ut. Repudiandae recusandae temporibus rerum molestias iusto rem odit. Earum corporis fugit modi in eos ratione repudiandae. Facere voluptatum voluptates mollitia veritatis rerum culpa id cum. Commodi non delectus eaque natus. Explicabo et nam hic sit tempora quidem eligendi. Provident aut aut dolorem cumque sint est quidem. Reiciendis quidem aut aut consequuntur necessitatibus maxime.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(81, 'molestias-asperiores-vel-inventore-delectus-pariatur-perspiciatis-sunt', 2, 'و بچه‌ها با هم اداره.', 'را هووی خودشان می‌دانند و.', 'یک خرده می‌دویدی تا دو سه.', 'Et veritatis consequatur qui voluptatem suscipit. Molestiae dolor aperiam consequatur est corporis possimus odio. Autem occaecati et dignissimos beatae et dolores maiores. Molestias ut rerum nemo non illum repellendus. Eos quos consequuntur et saepe numquam nesciunt sed. Laborum corrupti modi id error assumenda. Repellat impedit accusamus quos eos nemo aut. Quo cumque id facere beatae occaecati quo expedita. Minima molestiae a quam odit ipsam eaque est. Dicta quam aut libero eos nihil aut laborum hic. Voluptas impedit nesciunt aut quis libero. Sunt cum et ex. Et minima debitis quae distinctio repudiandae et reprehenderit. Dolores praesentium deserunt eos qui aperiam et voluptas. At labore perferendis neque. A vel quo porro ipsum accusamus. Quos quis modi omnis iure ducimus quo. Qui necessitatibus et facere atque eligendi. Quae quis blanditiis saepe culpa perferendis omnis et. Tempore magnam ut harum aliquam iure. Ut officia quibusdam exercitationem voluptas magni.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(82, 'totam-odit-in-est-exercitationem-ad-sequi', 2, 'محلی صحبت می‌کردند از.', 'نیستم. آخه من شنیده بودم.', 'صورتش برده بود. روی هم رفته.', 'Officia sit dolore ab voluptatem voluptatibus. Ut porro molestiae blanditiis error quia. Sed ea ipsum ea nam. Quia id totam atque asperiores nam libero. Sint sed animi quis repellendus qui nemo. Aliquam recusandae aut facilis itaque dolorem nesciunt ad. Exercitationem minus error nam molestiae minus nulla fuga eveniet. Perferendis animi assumenda vitae minima adipisci est sit. Reprehenderit possimus recusandae vitae minima. Et repudiandae cupiditate quia saepe ut explicabo. Aliquid aut ut praesentium doloribus voluptate facilis. Architecto dolorum nostrum dolores ut et. Id officia sint nihil consequatur. Nisi alias occaecati velit eos magnam tenetur. Ut molestiae dolor quibusdam unde dolore sapiente. Est quisquam quae tempora hic. Qui est consequatur laborum voluptas nam. Eum vel cumque tenetur aut. Voluptas at aliquid non consequuntur sed ea nihil accusantium.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40'),
	(83, 'nemo-veniam-fugit-sequi', 2, 'کرد و من و پدر همان بچه‌ی.', 'غرض‌شان این بود که لابد خل.', 'شد. سی صد و خرده‌ای تومان.', 'Sapiente porro voluptatem corrupti officia sed tempora. Natus quasi commodi assumenda quasi eligendi delectus. Voluptatem qui excepturi ducimus dolor consequatur. Quia praesentium omnis neque qui omnis autem. Aut voluptatem impedit recusandae nemo nesciunt fuga. Et minus aut provident. Quo quia velit molestiae quo facere. Alias amet blanditiis debitis facere nostrum. Similique id et excepturi doloribus ut totam. Animi temporibus rem impedit quasi numquam consequatur. Quod odio accusamus omnis occaecati earum soluta. Quidem cum expedita dicta est. Iure vero atque neque. Nihil sunt at ex reprehenderit omnis magnam. Ut voluptate voluptatem quis quae. Quo quidem temporibus accusantium sed. Sint repellat quia facilis tenetur sed sed sunt. Omnis rerum velit natus quasi dolorum quas. Odio numquam vero qui sit laudantium. Vel quibusdam et qui fugit molestias assumenda dolores. Sed iusto minus velit assumenda quas et aut in. Soluta ut autem ut fugiat dolore minus.', 1, 0, '2020-01-13 11:21:40', '2020-01-13 11:21:40');
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
  `maintenance_mode` tinyint(1) DEFAULT 0,
  `admin_panel` tinyint(1) DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain: ~0 rows (approximately)
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` (`key`, `name`, `meta_title`, `meta_description`, `introduce`, `maintenance_mode`, `admin_panel`, `status`, `created_at`, `updated_at`) VALUES
	('localhost:3000', 'وب سایت انتخاباتی دکتر حیدری طیب', 'وب سایت انتخاباتی دکتر حیدری طیب', 'وب سایت انتخاباتی دکتر حیدری طیب', 'لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.لورم ایپسوم یا طرح‌نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی‌معنی در صنعت چاپ، صفحه‌آرایی و طراحی گرافیک گفته می‌شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه‌آرایی، نخست از متن‌های آزمایشی و بی‌معنی استفاده می‌کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می‌رسد و قلم‌ها و اندازه‌بندی‌ها چگونه در نظر گرفته شده‌است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می‌باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه‌آرایی می‌کنند تا مرحله طراحی و صفحه‌بندی را به پایان برند.', 0, 1, 1, '2019-12-07 10:11:41', '2020-01-13 11:10:18');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_communication_channel
CREATE TABLE IF NOT EXISTS `domain_communication_channel` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `communication_channel_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`communication_channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_communication_channel: ~0 rows (approximately)
/*!40000 ALTER TABLE `domain_communication_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_communication_channel` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.domain_social_media
CREATE TABLE IF NOT EXISTS `domain_social_media` (
  `domain_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `social_media_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`domain_key`,`social_media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table heydaritayeb.domain_social_media: ~4 rows (approximately)
/*!40000 ALTER TABLE `domain_social_media` DISABLE KEYS */;
INSERT INTO `domain_social_media` (`domain_key`, `social_media_id`, `value`) VALUES
	('localhost:3000', 1, 'https://instagram.com'),
	('localhost:3000', 2, 'https://telegram.me'),
	('localhost:3000', 3, 'https://facebook.com'),
	('localhost:3000', 4, 'https://twiter.com');
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
  KEY `FK_file_users` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

-- Dumping data for table heydaritayeb.file: ~10 rows (approximately)
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`id`, `fileable_id`, `fileable_type`, `created_by`, `mime_type`, `directory`, `file`, `collection`, `order`, `size`, `link`, `created_at`, `updated_at`) VALUES
	(292, 12, 'App\\Gallery', 1, 'image', 'gallery', '8Ur7jkgB28uTyGX3RqBfeQivEVnUqwx5fmsv0oib.jpeg', 1, 6, '[500,300,200,100,50]', NULL, '2020-01-13 11:34:35', '2020-01-13 11:34:35'),
	(293, 12, 'App\\Gallery', 1, 'image', 'gallery', 'Cp3IonNKBIpnq5A5r21MHWmmLv5aFd2GyhtAh4ZA.jpeg', 1, 7, '[500,300,200,100,50]', NULL, '2020-01-13 11:34:35', '2020-01-13 11:34:35'),
	(294, 12, 'App\\Gallery', 1, 'image', 'gallery', 'CSIviUZDO1QnrluxxNJmiElzTAbd8pYmUdUSA7ae.jpeg', 1, 8, '[500,300,200,100,50]', NULL, '2020-01-13 11:34:36', '2020-01-13 11:34:36'),
	(295, 12, 'App\\Gallery', 1, 'image', 'gallery', 'IbgX45QG2v1Yhs9vPdMEtqB1TwYkBPr69W0CvKHg.jpeg', 1, 9, '[500,300,200,100,50]', NULL, '2020-01-13 11:34:36', '2020-01-13 11:34:36'),
	(296, 69, 'App\\BlogContent', 1, 'image', 'content', 'MxbMu28Re36KzudEWy7ScOLcmTFTB45gSY06fuWT.jpeg', 0, 1, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:13', '2020-01-13 11:44:13'),
	(297, 69, 'App\\BlogContent', 1, 'image', 'content', 'jZmS0yWPKCxZz3X3y0KgR6KqXSluPgazJUH5NUhO.jpeg', 1, 2, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:13', '2020-01-13 11:44:13'),
	(298, 69, 'App\\BlogContent', 1, 'image', 'content', 'QCIjdotClFhUHpM9u0kAim6IYLKa3ldl1JbzBfRz.jpeg', 1, 3, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:13', '2020-01-13 11:44:13'),
	(299, 69, 'App\\BlogContent', 1, 'image', 'content', '9FMLqabpzq6ouGI8YhFIATvNCSg3tB2pXrUlQeh6.jpeg', 0, 4, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:14', '2020-01-13 11:44:14'),
	(300, 69, 'App\\BlogContent', 1, 'image', 'content', 'A1MCqKtjMF43QUww8Kgx1AiB44XfnAef6jphZXK6.jpeg', 1, 5, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:14', '2020-01-13 11:44:14'),
	(301, 69, 'App\\BlogContent', 1, 'image', 'content', '27vPl88KcVLELCZhbBJv38nlNLLIxu23y44yz8N7.jpeg', 1, 6, '[500,300,200,100,50]', NULL, '2020-01-13 11:44:15', '2020-01-13 11:44:15');
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
  KEY `FK_gallery_users` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.gallery: ~1 rows (approximately)
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id`, `created_by`, `title`, `status`, `is_slider`, `created_at`, `updated_at`) VALUES
	(12, 1, 'اسلایدر', 1, 1, '2020-01-13 11:31:10', '2020-01-13 11:31:10');
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

-- Dumping data for table heydaritayeb.oauth_access_tokens: ~14 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('05bd7cdba1aadc79477be19659b09bc8186b7ff69839cb222282ad67a97ae2e1bb27f71f33f032b8', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:27:48', '2020-01-12 12:27:48', '2021-01-12 12:27:48'),
	('1211165c1fa747c169d09ca4a743bbe724d084e9ffa255b1697c3d0ff8b1ce473e3ac23328cec73e', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:23:17', '2020-01-10 21:23:17', '2021-01-10 21:23:17'),
	('3af9f56bd5ffc2f697c0785a13ba821fc066ba05c21d582888a752bce08bbb6826e3a9c636b56d5b', 1, 8, 'Token Name', '[]', 0, '2020-01-13 11:05:47', '2020-01-13 11:05:47', '2021-01-13 11:05:47'),
	('4398acebbbe2a61a066a91ff3aac209db98ec15a2651ef004fb82bcae6774ca15ad7397a7f7074af', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:57:21', '2020-01-10 20:57:21', '2021-01-10 20:57:21'),
	('74cefcee829916e22180b39e075578f2d066df6c096e181522afbb04125da013a360f9bce56797d6', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:18:44', '2020-01-10 21:18:44', '2021-01-10 21:18:44'),
	('8ff9ac322fcce8defc15b1c63cfa2b330931cc0c693f7e03303cd0c8cc4419b05b77f94c6452b4bf', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:29', '2020-01-10 20:52:29', '2021-01-10 20:52:29'),
	('9137bce7a1a1fc9730bb677d941d804257ebd5f6afbd9b8cbe324a6ccee6c14d2182f43deb507204', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:57', '2020-01-10 20:52:57', '2021-01-10 20:52:57'),
	('93d7fbcc51976072e95b6260b492599776932da19d25977502b4ab16eecec9688f4387c4564edaa8', 1, 5, 'Token Name', '[]', 1, '2020-01-10 21:24:50', '2020-01-10 21:24:50', '2021-01-10 21:24:50'),
	('9a77872b7bd089cfb185330c85b07fe9349c0dae1ce2ea5726264044c195357ed6bbda64efe9c450', 4, 5, 'Token Name', '[]', 0, '2020-01-10 21:27:24', '2020-01-10 21:27:24', '2021-01-10 21:27:24'),
	('a12ce315e97fdacb0bf6ec19b2a7c750d7a56bc7fcf31da2c7fafd49c8dc43622e205bd4b15c0009', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:59:37', '2020-01-10 20:59:37', '2021-01-10 20:59:37'),
	('b304430a67f29eaa90644360ca8413246904b993cf5153371481a3e28a16a5902153e7a5a01cdae2', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:26:40', '2020-01-12 12:26:40', '2021-01-12 12:26:40'),
	('c7804df2be6fbfde3c436a3504f21f3710c7fb7f847af80409d934a66ff045587d4de21473d9ed17', 1, 8, 'Token Name', '[]', 0, '2020-01-12 17:12:01', '2020-01-12 17:12:01', '2021-01-12 17:12:01'),
	('ef1d237fafb302f0e8858c7c5211d250dfd5f2f7407c1ac2066cfa5fe62d95697fc25dbbac3d807c', 2, 5, 'Token Name', '[]', 0, '2020-01-10 20:52:18', '2020-01-10 20:52:18', '2021-01-10 20:52:18'),
	('f04804d0881b29528310e654ed3a7a3060a778754bee4d693ee6f6047f98b551b11933258a87efb4', 1, 8, 'Token Name', '[]', 0, '2020-01-12 12:26:58', '2020-01-12 12:26:58', '2021-01-12 12:26:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_clients: ~8 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(2, NULL, 'Laravel Personal Access Client', '3ifOpdDKIvzzcRfIHJakMclRiOhAzj9B4zb98WCb', 'http://localhost', 1, 0, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(3, NULL, 'Laravel Password Grant Client', '0pbp2WmsP5VkpcKmrlx2xhfDu5snRwpxVQNzutOD', 'http://localhost', 0, 1, 0, '2019-11-30 22:41:34', '2019-11-30 22:41:34'),
	(4, 1, 'mehrdad', 'AOBTYNn7I5JAmCrmX8ys9cV9VvV1GPE9PoMoE5Cq', 'http://localhost:8000/auth/callback', 0, 0, 0, '2020-01-10 20:51:49', '2020-01-10 20:51:49'),
	(5, NULL, 'Laravel Personal Access Client', 'ytgkftCVk9Kc88V85kfqkgM4QQpBz8Gg9omJOnPy', 'http://localhost', 1, 0, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(6, NULL, 'Laravel Password Grant Client', 'aMI8bRo3Mx1kIiKqeMRSH0iue5XSKHIzc8jG8okn', 'http://localhost', 0, 1, 0, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(7, 1, 'mehrdad', '9eWC1LzMsqmbc5GVxGdr1W5E30TvRT13kNfQeFnW', 'http://localhost:8000/auth/callback', 0, 0, 0, '2020-01-12 12:23:35', '2020-01-12 12:23:35'),
	(8, NULL, 'Laravel Personal Access Client', '2mFuM7uJMJddcTPLWqbsnbwCiznQR7ty5qdtPBfJ', 'http://localhost', 1, 0, 0, '2020-01-12 12:23:46', '2020-01-12 12:23:46'),
	(9, NULL, 'Laravel Password Grant Client', 'bcTX8WZFLJf2Wr6zZDDFWLiMj0H6hI7yctQiUWXN', 'http://localhost', 0, 1, 0, '2020-01-12 12:23:46', '2020-01-12 12:23:46');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table heydaritayeb.oauth_personal_access_clients: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(2, 5, '2020-01-10 20:51:58', '2020-01-10 20:51:58'),
	(3, 8, '2020-01-12 12:23:46', '2020-01-12 12:23:46');
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
  PRIMARY KEY (`role_key`,`permission_key`)
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
  `icon` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.social_media: ~4 rows (approximately)
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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_ticket_users` (`created_by`),
  KEY `FK_ticket_ticket_category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.ticket: ~1 rows (approximately)
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` (`id`, `created_by`, `category_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
	(64, 10, 1, 'برنامه های شما برای مجلس یازدهم چیست ؟', 1, '2020-01-13 11:57:44', '2020-01-13 15:28:10');
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
INSERT INTO `ticket_category` (`value`, `label`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'بدون دسته', 1, 1, 2, NULL, '2020-01-12 17:47:03', '2020-01-12 17:47:04');
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
  KEY `FK_ticket_conversation_ticket` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.ticket_conversation: ~1 rows (approximately)
/*!40000 ALTER TABLE `ticket_conversation` DISABLE KEYS */;
INSERT INTO `ticket_conversation` (`id`, `ticket_id`, `created_by`, `content`, `created_at`, `updated_at`) VALUES
	(133, 64, 1, 'باحضورنماینده مردم بیرجند در مجلس شورای اسلامی، معاون فرهنگی و اجتماعی و جمعی از مسئولین شب گذشته جلسه پرسش و پاسخ دانشجویی در محل تالار ولایت برگزار گردید. در ابتدای جلسه نمایندگان تشکل‌های دانشجویی سوالات خود را در زمینه مشکلات صنفی، آموزشی و.... مطرح نمودند. مرتضوی، نماینده شورای صنفی دانشجویان به ابلاغ آیین نامه جدید آموزشی و مشکلات پیش آمده برای دانشجویان ورودی 97 اشاره کرد. وی در ادامه به بیان مشکلات صنفی دانشجویان پرداخت و خواستار پیگیری موارد طرح شده کرد. زنده بودی نماینده انجمن اسلامی دانشجویان مستقل، در خصوص راه آهن، استانی شدن انتخابات و مشکلات دانشجویی در دانشگاه‌ها به طرح سوال پرداخت.', '2020-01-13 11:58:10', '2020-01-13 11:58:10');
/*!40000 ALTER TABLE `ticket_conversation` ENABLE KEYS */;

-- Dumping structure for table heydaritayeb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `role_key` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `domain` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `validation_code` int(5) DEFAULT NULL,
  `verify_account` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  KEY `role_key` (`role_key`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- Dumping data for table heydaritayeb.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `mobile`, `role_key`, `domain`, `name`, `status`, `validation_code`, `verify_account`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '09361036469', 'programmer', 'localhost:3000', 'رضا رحمتی', 1, 62609, 1, '$2y$10$/25eEOtjCMheLkl48YXmAevdSwO0hU9ZQmimEaZu4030fOhyj/sMi', '$2y$10$4ivE8ukfxubtQnqmi76dlO2aVWGgRqJReicMC..qMConyNRXUvoK.', '2019-11-30 23:43:25', '2020-01-13 14:40:07'),
	(2, '09360784026', 'super_admin', 'localhost:3000', 'حسین بهرامی', 1, NULL, 0, '$2y$10$eJWUCqRd5jb7hJ7sX55YNOpZzPGxT50VET63V.WI8NpwdVId36Z06', NULL, '2020-01-10 21:27:00', '2020-01-13 14:49:08'),
	(10, '09330938099', 'guest', NULL, 'امین وطن پرست', 1, NULL, 0, '$2y$10$N0c3unaz8Td.12w19zKbjeB30Y.osU4/UV8Dmoz6U/JqHbU/vyYFG', NULL, '2020-01-13 11:57:44', '2020-01-13 11:57:44');
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
