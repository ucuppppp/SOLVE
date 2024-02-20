-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2024 at 08:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formify`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowed_domains`
--

CREATE TABLE `allowed_domains` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` bigint UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowed_domains`
--

INSERT INTO `allowed_domains` (`id`, `form_id`, `domain`) VALUES
(1, 1, 'zemlak.com'),
(2, 2, 'bailey.com'),
(3, 3, 'quitzon.com'),
(4, 4, 'balistreri.com'),
(5, 5, 'grant.com'),
(6, 6, 'lockman.org'),
(7, 7, 'ryan.org'),
(8, 8, 'heaney.com'),
(9, 9, 'ratke.biz'),
(10, 10, 'murray.com');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `response_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `response_id`, `question_id`, `value`) VALUES
(1, 1, 1, 'Nihil eius ab qui sed. Commodi voluptatem quae sunt. Rem quos sit est repellat numquam. Aut eos consequatur molestiae quisquam illo dolorem ullam.'),
(2, 2, 2, 'Illum voluptatem id cumque nemo praesentium sapiente libero ut. Dolorem consectetur maiores molestiae nobis. Doloremque sed magni non nam sit est.'),
(3, 3, 3, 'Debitis id sit est sed animi quos doloremque. Saepe omnis praesentium eos quae occaecati nostrum porro. Porro velit dolorum qui.'),
(4, 4, 4, 'Inventore velit unde natus est. Autem aut rerum aliquam autem ex ea qui neque. At sunt rem aut maiores atque rem. Adipisci dolorem veniam corrupti. Enim praesentium aut id omnis.'),
(5, 5, 5, 'Veniam eaque consequatur molestiae exercitationem illum est. Accusantium corporis et enim perferendis cupiditate. Earum nisi quas nisi. Doloribus fuga natus voluptatum voluptatem voluptatem ut quam.'),
(6, 6, 6, 'Debitis maiores occaecati odit rerum sint. Earum voluptates aliquam rerum voluptatem. Perspiciatis excepturi est qui assumenda quos quia non. Deleniti qui consequatur est.'),
(7, 7, 7, 'Sit omnis recusandae consequatur sint et optio molestiae molestias. Perferendis velit quo voluptatem temporibus laborum hic voluptatibus. Et aut quis ex omnis animi sed.'),
(8, 8, 8, 'Corporis corporis aperiam a ut ullam velit eius qui. Quaerat doloribus quia culpa quidem cumque possimus aut unde. Sed et quae iure architecto laudantium. Earum modi labore ab ut non labore.'),
(9, 9, 9, 'A non provident fuga rem voluptas officiis et. Voluptatibus sunt aliquam dolorum pariatur aperiam. Omnis officia blanditiis aspernatur libero recusandae autem id.'),
(10, 10, 10, 'Reiciendis quasi incidunt expedita doloremque repudiandae voluptas sed harum. Et dolorum fugiat quia laudantium impedit. Exercitationem fugit vel sit non. Totam molestiae hic ea ipsum officiis.');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_one_response` tinyint NOT NULL,
  `creator_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `slug`, `description`, `limit_one_response`, `creator_id`) VALUES
(1, 'Illum velit est veritatis aut laudantium.', 'velit-explicabo-aspernatur-quae-amet-ut-perspiciatis', 'Eligendi iste cumque molestiae optio et rerum. Ducimus id quis sapiente et. Dolorum molestias aliquid quia esse odio dolorem.', 1, 11),
(2, 'Ut magni ullam ipsa voluptas molestiae dolores.', 'soluta-cumque-velit-ut', 'Illo atque consectetur est autem quia quo eveniet. Assumenda sint eius sed ea.', 0, 12),
(3, 'Et quidem commodi vel eos aliquid laborum deleniti.', 'dolorem-ad-debitis-est-mollitia-laboriosam', 'Necessitatibus ut tenetur id beatae molestiae recusandae vel. Ex incidunt aut commodi perspiciatis rerum. Corrupti amet quidem placeat aliquam sint nam.', 1, 13),
(4, 'Ut ea nesciunt quia et eaque.', 'dolor-et-reiciendis-sapiente-veniam-iusto-cupiditate-pariatur', 'Ut qui harum aliquam ut rerum ut quis sit. Sed nostrum consequatur unde officia voluptas sit et.', 1, 14),
(5, 'Repellendus vero numquam aspernatur voluptatem.', 'totam-eos-voluptatum-aut-eligendi-quisquam-exercitationem', 'Nemo amet dolorum dolorem. Expedita ut harum porro nisi.', 1, 15),
(6, 'Minus repudiandae est veritatis mollitia.', 'qui-explicabo-cum-explicabo', 'Est ut cum deleniti est et iure. Vero a ratione dignissimos optio est quam. Est nemo ducimus beatae cupiditate est aut consequatur facere.', 1, 16),
(7, 'Minus doloremque sint ea.', 'consequatur-odio-cupiditate-excepturi-laudantium-non-architecto-corporis', 'Placeat illum molestias est. Nam eius quam dolor cum. Et reiciendis consectetur debitis ut quasi quidem incidunt.', 1, 17),
(8, 'Qui inventore accusamus voluptas autem vel ab quidem sapiente.', 'nihil-voluptatum-cumque-unde-qui', 'Laudantium explicabo quasi a aliquam. Accusantium enim cupiditate incidunt pariatur quia qui error ullam. Consequuntur cumque quis rerum porro perspiciatis.', 0, 18),
(9, 'Facilis velit aperiam fuga velit.', 'at-rem-ex-nulla', 'Delectus dolorem nihil dolore in in eius molestias. Aut eos eligendi maiores culpa.', 1, 19),
(10, 'Sunt minus veritatis ea.', 'reiciendis-voluptas-quisquam-eligendi-nobis-consequatur-aut', 'Omnis velit nam asperiores. Consequuntur eos beatae aut dolor molestias.', 1, 20),
(11, 'Qui possimus reprehenderit nisi.', 'est-facere-repellendus-labore', 'Ratione commodi sit quod corporis asperiores. Eveniet tempora ut debitis et nobis maxime distinctio. Ad sed eveniet aspernatur magni a alias voluptatem.', 1, 21),
(12, 'Aut saepe cum aut qui quod et.', 'et-voluptas-excepturi-in-cupiditate-corrupti-sed-ut-recusandae', 'Nemo voluptatum qui quos repellat. Pariatur corporis omnis incidunt provident. Optio unde molestias aut corrupti.', 1, 23),
(13, 'Velit quo fugit sunt illum.', 'quidem-quisquam-natus-excepturi-et-veritatis-aliquam-eaque', 'Et dolor voluptatem earum est dolorem. Blanditiis et ut praesentium deserunt.', 1, 24),
(14, 'Quisquam cum officia inventore iusto.', 'quos-architecto-omnis-facilis-eligendi-id-ut-atque', 'Voluptatem laudantium odio aspernatur ea eligendi voluptatem voluptatem. Fugiat aliquam ullam eum corrupti velit sed. A unde aut repudiandae maxime voluptas animi temporibus.', 0, 26),
(15, 'Modi veritatis ipsum repellendus dolor autem.', 'voluptatem-quasi-enim-consequuntur-error-voluptatibus-velit', 'Eos odit fuga dolor sit odit dicta excepturi. Nostrum nihil voluptate assumenda est. Rerum natus ducimus et.', 0, 27),
(16, 'Sunt excepturi in enim occaecati veniam aut.', 'dolorum-sint-nam-sapiente-assumenda-veritatis-pariatur-vel', 'Consectetur quia voluptatem est magni sed quis. Voluptatem repellendus et neque.', 1, 29),
(17, 'Rem quidem voluptatem sint.', 'molestiae-et-voluptatem-quia', 'Et quibusdam eum magnam natus magnam veritatis sit. Rerum qui consequatur voluptas ab ad autem.', 1, 30),
(18, 'At quia tempora sint expedita numquam ut.', 'dolores-nesciunt-voluptas-voluptates-ut-est-laborum-commodi-sit', 'Aut aliquid non qui adipisci. Nemo quidem autem dolor inventore iste repellat. Nobis quos cumque voluptatem et similique necessitatibus.', 1, 32),
(19, 'Eius alias omnis quae quos hic molestiae illo accusamus.', 'nihil-distinctio-quod-animi-laudantium-asperiores', 'Illum sit qui quisquam voluptas veritatis. Rerum iusto ut quia ipsam.', 1, 33),
(20, 'Dolores explicabo omnis qui officia recusandae autem ullam possimus.', 'velit-et-sit-aspernatur-deleniti-voluptates-ea', 'Dolor voluptatem iste ex aut repudiandae a qui omnis. Autem consequatur exercitationem cupiditate amet ipsam placeat. Assumenda aut sed quo voluptatum voluptas.', 0, 35),
(21, 'Iure tempore dignissimos quibusdam impedit blanditiis quaerat.', 'nihil-ut-eum-omnis-libero-aspernatur', 'Libero mollitia nam dolore maiores. Illo amet aut harum quis ea. Quia harum sint impedit in voluptatum voluptatem qui.', 0, 36),
(22, 'Ipsum distinctio quia non dolor dicta voluptatum nesciunt.', 'alias-ut-reprehenderit-tempora-explicabo-non', 'Repellat qui cumque alias vitae aut odio. Saepe veritatis provident et iure ut distinctio libero cumque.', 1, 38),
(23, 'Inventore perferendis et est sint dolore maiores.', 'error-aut-veniam-corporis-non', 'Inventore sapiente dolorem voluptas quia nulla voluptas perspiciatis voluptas. Aliquid dolor accusantium at iste similique.', 0, 39),
(24, 'Iure sint ea eveniet id magnam pariatur.', 'nostrum-itaque-neque-aperiam-non', 'Veritatis ipsum maxime assumenda temporibus ab. Ut dignissimos excepturi voluptate molestiae perferendis repudiandae.', 1, 41),
(25, 'Ut laboriosam perferendis ipsa sunt dignissimos.', 'voluptas-omnis-ratione-provident-qui-doloribus-pariatur-quam-et', 'Enim eligendi excepturi quasi. Accusantium qui voluptatem minima aperiam. Deserunt praesentium molestiae vel odio.', 1, 42),
(26, 'Excepturi ea et ab vero dolores aspernatur debitis.', 'nesciunt-et-id-consequuntur-at-debitis-eos-sit', 'Explicabo aspernatur molestiae ipsa placeat tempore at. Aperiam in dolor ipsum rem. Nam amet qui qui autem nihil fugit nostrum illo.', 1, 44),
(27, 'Et temporibus occaecati eum est nihil adipisci voluptas.', 'natus-id-laborum-iure', 'Sit consequatur enim eum fugit. Deleniti omnis facere eum aspernatur.', 0, 45),
(28, 'Voluptas amet incidunt et et veritatis quidem.', 'earum-sint-culpa-reprehenderit-ut-rerum', 'Enim dicta ut omnis nostrum debitis aut pariatur. Soluta sint suscipit aut doloremque odit dolores maxime voluptas. Esse voluptas sequi ut quis.', 1, 47),
(29, 'Perferendis tenetur eos nihil et.', 'vel-qui-aut-perspiciatis-modi-sed-aut', 'Ut laboriosam ullam hic reiciendis ut officia. Perspiciatis laudantium et quis et. Eum optio fuga velit non.', 1, 48),
(30, 'Neque occaecati id quia velit ut.', 'ut-consequuntur-officia-suscipit-quisquam', 'Esse praesentium ex maxime. Id doloribus aut quo ut. Qui reiciendis est delectus quas quis rerum.', 1, 50),
(31, 'Facilis quos est dolor libero sit nam.', 'cum-debitis-incidunt-et-asperiores-impedit-non-nulla', 'Alias cum qui natus eaque optio. Aut natus voluptas non ut quod. Harum inventore veniam earum atque.', 1, 51),
(32, 'Sapiente rerum quas reiciendis iure qui tempore.', 'pariatur-qui-ut-neque-accusantium-dolorem-doloremque', 'Consequatur ratione eaque alias dolorum molestiae reiciendis. Sint harum optio nesciunt. Tempore natus praesentium sed id.', 0, 52),
(33, 'Non velit vel illum voluptates accusamus quos velit.', 'placeat-qui-sequi-dignissimos-repellendus', 'Expedita ut quos voluptatem tempore. Voluptatem vel rerum aspernatur. Saepe explicabo odio officiis est.', 1, 53),
(34, 'Sequi ut natus aut suscipit consequatur nisi et.', 'est-sit-praesentium-voluptatem-et-rerum', 'Natus autem porro impedit. Nihil impedit sed minus cumque.', 0, 54),
(35, 'Doloribus eligendi distinctio voluptatibus quia laudantium perspiciatis aut et.', 'aliquid-veritatis-cumque-hic-et', 'Non porro sint qui est. Pariatur suscipit in ea consequatur omnis.', 1, 55),
(36, 'Repudiandae repellendus molestiae aut placeat rerum.', 'repellat-velit-debitis-suscipit-ea-iure-enim', 'Qui sapiente id harum aut eum. Consequatur aut dolorum et est voluptatibus. Quibusdam iure nemo ipsa velit animi.', 1, 56),
(37, 'Sit optio facere ut rerum sed quo ipsam.', 'qui-voluptatum-molestiae-deleniti-et-atque-dignissimos-dolor', 'Rem et ducimus est ratione provident et illo. Et aspernatur et ut quas aspernatur expedita repellendus. Veritatis ipsum exercitationem sed quis aut.', 1, 57),
(38, 'Maxime voluptatum voluptates facilis aliquid voluptas consequatur rerum.', 'dolores-explicabo-odio-blanditiis-explicabo-illum-vero', 'Et saepe veniam id id. Consectetur tempore fugiat aut qui est et dolores blanditiis. Dicta pariatur non odio modi sit mollitia.', 1, 58),
(39, 'Sit officiis qui distinctio ea atque.', 'corporis-numquam-temporibus-ab-ipsum-labore-et-et-deserunt', 'Dolorem eum qui voluptatem quis cumque explicabo eos. Omnis atque dolorem consequuntur totam dolorem. Est in et incidunt hic quisquam ut soluta.', 1, 59),
(40, 'Cumque omnis perspiciatis fugit esse aut et quod.', 'aliquid-odio-et-sint-incidunt-aspernatur-ut-assumenda', 'Sequi ut fuga laudantium animi suscipit sint. Sit commodi facilis magni. Officiis amet vel corporis sint nemo ipsum.', 0, 60),
(41, 'Eligendi qui qui omnis quia aut ex est ut.', 'sed-tempore-vel-sequi-et-at', 'Soluta id officiis ut. Tenetur impedit architecto rerum dolores voluptatum.', 1, 61),
(42, 'Ducimus hic aliquid consectetur quia.', 'tempore-voluptatem-enim-veniam-eligendi-asperiores-non-error', 'Et omnis nesciunt consequatur harum voluptas nihil sint ipsa. Accusamus vel ipsam est ut sed ipsam. Delectus libero et minima sapiente est.', 1, 62),
(43, 'Nulla animi voluptatem eum qui fugit fuga ut.', 'et-mollitia-qui-rerum-minima', 'Dolor magni id nesciunt repellendus harum necessitatibus quod. Placeat sint id quia earum non.', 1, 63),
(44, 'Est laborum qui aut.', 'sint-dolorem-saepe-itaque-corrupti-autem-consequatur-quibusdam', 'Similique est sunt ea magni voluptas aut sapiente. Sunt quia hic quia tempora. Blanditiis qui error nulla voluptatibus qui aspernatur aut.', 0, 64),
(45, 'Eum et laboriosam doloremque est tempora voluptatum deleniti officiis.', 'ducimus-corrupti-enim-voluptatem-hic-nesciunt', 'Laborum modi ad ullam quo esse voluptatem sunt. Maiores ducimus nobis ipsa quod. Molestiae ea recusandae suscipit rerum.', 1, 65),
(46, 'Est ratione qui dolore commodi perferendis.', 'ea-ut-dolores-quo-sint-rerum-nam', 'Aut est voluptatem minima excepturi in occaecati et eveniet. Reprehenderit occaecati fugiat qui modi accusantium ipsam. Beatae perferendis non alias.', 0, 66),
(47, 'Facilis saepe vero et ut tempora.', 'enim-pariatur-blanditiis-aut', 'Sequi iste occaecati tempora. Quo illum cupiditate mollitia sint.', 0, 67),
(48, 'Illum ex et modi a aliquam.', 'id-quam-aut-ab-autem-eos', 'Corrupti molestias eum culpa. Ratione numquam non totam aut est repellendus. Possimus quasi omnis error sint maiores beatae est.', 1, 68),
(49, 'Animi natus occaecati laboriosam distinctio perferendis consequatur veritatis.', 'est-facilis-rem-qui-pariatur-quos-earum', 'Tenetur corporis iste omnis illum placeat officia ex. Cum sed quae odit est consectetur.', 0, 69),
(50, 'Veniam quaerat eligendi alias omnis nemo ab velit itaque.', 'dolores-quidem-adipisci-enim-facilis-commodi-sed-voluptas', 'Sit nobis impedit velit est aut iste. Ut et qui ex voluptatem modi mollitia.', 0, 70),
(51, 'Ut fuga odit qui laudantium.', 'vitae-dignissimos-quis-omnis-quae-nesciunt-labore', 'Ea fugiat ipsum doloremque hic illum aspernatur itaque. Harum recusandae odio rerum impedit eveniet cumque consequuntur.', 0, 71),
(52, 'Eum rem ea quis.', 'ut-eum-reprehenderit-quis-voluptate', 'Et architecto optio ea aspernatur. Nisi praesentium corrupti facere. Labore cum vero error error dolorem tempore incidunt.', 1, 73),
(53, 'Rerum expedita ipsum quas.', 'eveniet-laboriosam-quia-quos-doloribus-officiis', 'Temporibus minima consequuntur animi vel esse et voluptatem. Voluptatem nemo voluptates eos voluptas sunt quia.', 1, 75),
(54, 'Atque porro quaerat quos sunt labore autem qui.', 'placeat-odio-eligendi-vel-ea-magni-eum', 'Consequatur quia totam maxime culpa non dolorum. Et tenetur atque exercitationem aut. Sed rerum sapiente nihil temporibus.', 1, 77),
(55, 'Laudantium vero pariatur doloremque aut repellendus deleniti at consequatur.', 'vel-non-corrupti-vel-accusantium', 'Odio repudiandae quis rerum. Amet debitis ut dolore minima beatae error.', 0, 79),
(56, 'Molestiae dignissimos voluptatem aliquam neque eius sequi assumenda.', 'incidunt-explicabo-voluptatem-similique-deleniti', 'Nihil doloribus ut eveniet tempore architecto quia. Rerum praesentium nostrum quam debitis illo. Omnis aliquam quo animi repudiandae.', 0, 81),
(57, 'Ut cumque occaecati dolor est explicabo sunt dolorem.', 'rem-minus-occaecati-deleniti-et', 'Dolorem eius officiis adipisci facilis. Ea molestiae deserunt dicta sequi sunt consequatur.', 0, 83),
(58, 'Quas veniam tempore eum asperiores qui et.', 'magni-modi-facere-eos-molestiae-itaque', 'Ipsa reiciendis optio consequatur voluptatem repellat eligendi culpa. Accusantium illum est ipsum fuga magni. Eos nihil qui est ex fugiat ducimus amet.', 0, 85),
(59, 'Consequatur fuga quo laudantium vitae.', 'dolorem-minus-et-ut-sed-cumque-harum-exercitationem', 'Eos sunt et eos aut ut eius sit. Aliquam unde excepturi voluptatem consequatur accusamus. Ut et tempora explicabo quaerat.', 0, 87),
(60, 'Quo repellendus maxime praesentium commodi ut debitis.', 'voluptatem-aut-suscipit-possimus-qui-error-numquam', 'Cumque rerum facere rem. Assumenda aut qui quibusdam quis libero est sed.', 1, 89);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_20_045105_create_forms_table', 1),
(6, '2024_02_20_045105_create_questions_table', 1),
(7, '2024_02_20_045105_create_responses_table', 1),
(8, '2024_02_20_045106_create_allowed_domains_table', 1),
(9, '2024_02_20_045106_create_answers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_type` enum('short_answer','paragraph','date','time','multiple_choice','dropdown','checkboxes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `choices` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `form_id`, `name`, `choice_type`, `choices`, `is_required`) VALUES
(1, 12, 'Aliquam nihil aperiam ut ipsum.', 'dropdown', 'Dolor quia expedita aut delectus. Ullam error quo eum reiciendis excepturi at. Voluptatem optio assumenda qui ea illum nihil velit.', 1),
(2, 14, 'Architecto ad nostrum facere sunt impedit dicta.', 'short_answer', 'Repellendus voluptatem ut molestias quis molestias. Aut vero quam et. Voluptates dolores facilis at ut. Omnis debitis officia quos rem facere.', 0),
(3, 16, 'Atque eos voluptatem ut voluptatibus quas et dolores.', 'checkboxes', 'Autem maiores quia quia ut. Esse maxime quibusdam distinctio quas veritatis aliquam. Sit nihil eligendi aut ut tempora.', 0),
(4, 18, 'Aut aut labore cum blanditiis.', 'multiple_choice', 'Cupiditate et est vitae ut vero asperiores veritatis. Sint sunt dignissimos ea. Rerum blanditiis velit a aut maxime.', 1),
(5, 20, 'Alias necessitatibus exercitationem laborum omnis voluptas totam.', 'date', 'Illum quo iste rerum commodi non sed. Aliquam ducimus repudiandae dolore minima mollitia neque sit.', 1),
(6, 22, 'In quo rerum deleniti expedita.', 'dropdown', 'Debitis consequatur repudiandae vero maxime. Sed dolores eum enim ab voluptatem consectetur id. Voluptas labore asperiores voluptas eos explicabo rerum possimus.', 1),
(7, 24, 'Ea fuga itaque laboriosam facere.', 'multiple_choice', 'Ad perferendis aliquid beatae tempora inventore. Deserunt optio et vel quo commodi eveniet. Consequuntur molestiae maxime voluptatem eum quos fugit praesentium minima.', 0),
(8, 26, 'Vel eos nihil aut enim sunt.', 'paragraph', 'Et asperiores beatae cumque similique. Commodi aliquid deserunt vitae quibusdam corrupti. Impedit porro at repellendus odit amet dolorem sed. Qui aliquam omnis nisi aliquid officiis voluptatibus sit.', 1),
(9, 28, 'Optio omnis nobis impedit qui.', 'checkboxes', 'Consequatur veniam debitis quis non expedita eveniet impedit animi. Eius nulla sit consectetur voluptas molestias. Earum dolor qui quia sint eos omnis id ut. Quibusdam velit aut suscipit aliquid.', 0),
(10, 30, 'Mollitia a sequi rerum sapiente et quaerat.', 'paragraph', 'Eos et soluta voluptas perferendis nobis. Odit sequi nisi sed. Enim illum accusantium odio ut amet. Nostrum voluptatem totam minus voluptatem magnam dolore.', 0),
(11, 31, 'Sunt nam distinctio ut reiciendis.', 'time', 'Aut nemo rerum dolore beatae qui. Repellendus dicta id maiores totam hic quas. Ex aut ut dolorum possimus debitis ut.', 1),
(12, 32, 'Earum omnis illum nulla quis corporis explicabo.', 'date', 'Autem fugiat voluptate officia rem dolores dolorum. Ad nihil rerum dolor voluptate et ut. Quo nemo odio ut tempore. Dolorum nulla dolorum eveniet qui magnam est quis.', 0),
(13, 33, 'Maxime ut iure non quidem qui.', 'date', 'Et voluptatibus qui voluptate qui. Quaerat qui cupiditate est rem. Corporis delectus facilis libero quam.', 0),
(14, 34, 'Et ab facere alias temporibus.', 'dropdown', 'Iure iste error eius magni assumenda nesciunt. At laborum fugit quo est. Quae officiis soluta doloribus omnis vitae.', 0),
(15, 35, 'Dolorem quasi sint repudiandae.', 'multiple_choice', 'Cum consectetur est modi. Rem ducimus saepe assumenda aut perferendis. Qui assumenda est totam ut earum et cupiditate.', 0),
(16, 36, 'Eius sunt quo illo ea.', 'paragraph', 'Commodi enim ab iusto molestias ut ea illo quia. Voluptas qui alias autem aut et. Iste et molestiae qui id officia voluptas. Quo qui molestiae vel dolor delectus.', 1),
(17, 37, 'Est nihil quos suscipit tempora hic.', 'short_answer', 'Dolore ea est a amet commodi. Molestiae expedita quo dolores. Repellat et et quam aut accusamus.', 0),
(18, 38, 'Incidunt blanditiis et laudantium tenetur qui placeat.', 'dropdown', 'Autem a molestiae consectetur officiis molestiae distinctio blanditiis. Sed dolorum explicabo molestiae esse. Rerum consequatur omnis neque praesentium qui.', 0),
(19, 39, 'Nemo nemo iste rem suscipit.', 'multiple_choice', 'Tenetur nemo ut repudiandae rerum. Enim consectetur quia exercitationem non consequuntur ut reiciendis. Quod quisquam mollitia velit officiis nihil. In animi qui quia aut.', 1),
(20, 40, 'Temporibus et quibusdam consequuntur officiis cumque facilis quia.', 'date', 'Quibusdam qui eaque velit praesentium eos. Amet rerum quia qui et sapiente. Doloribus ratione dolores aliquam.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `form_id`, `user_id`, `date`) VALUES
(1, 11, 22, '1978-08-30 09:51:44'),
(2, 13, 25, '2011-08-31 17:31:49'),
(3, 15, 28, '1986-09-22 04:13:58'),
(4, 17, 31, '1975-08-01 01:01:05'),
(5, 19, 34, '1986-07-29 12:14:04'),
(6, 21, 37, '1983-04-24 17:14:13'),
(7, 23, 40, '1975-01-29 08:21:52'),
(8, 25, 43, '2020-01-23 10:40:02'),
(9, 27, 46, '2009-02-26 12:09:58'),
(10, 29, 49, '2018-08-10 06:39:29'),
(11, 51, 72, '2017-05-12 00:46:42'),
(12, 52, 74, '1989-11-22 22:08:03'),
(13, 53, 76, '1998-01-15 23:09:26'),
(14, 54, 78, '1972-11-15 15:23:52'),
(15, 55, 80, '1980-10-05 03:24:54'),
(16, 56, 82, '1994-05-24 14:13:29'),
(17, 57, 84, '2023-06-30 07:44:39'),
(18, 58, 86, '1979-06-17 08:43:39'),
(19, 59, 88, '2001-08-31 23:57:30'),
(20, 60, 90, '1987-04-12 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`) VALUES
(1, 'Lisa Miller', 'white.jesse@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'u7rPcsSaKT'),
(2, 'Mrs. Francesca Klein', 'aric49@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'zULSDUlgoY'),
(3, 'Elena Luettgen', 'lafayette66@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'IZyuQ3j0zV'),
(4, 'Dr. Kaylin Schaefer', 'patricia14@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '6XfQh8OE7a'),
(5, 'Issac Kihn', 'alexandria.feil@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'EyepnX3GnM'),
(6, 'Caroline Tremblay', 'neal.fadel@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1gTWzyEtlz'),
(7, 'Hildegard Hettinger', 'sim27@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'q8RC3ax0Hi'),
(8, 'Joseph Fay', 'alana.olson@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ij36DJ7UIF'),
(9, 'Mr. Scot Murphy III', 'devonte00@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'yvINEl5SH8'),
(10, 'August Gleichner MD', 'okey.hagenes@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'eKiBoLIqdv'),
(11, 'Ellie Mitchell', 'hwehner@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'NdftdnJExV'),
(12, 'Sarai Emard', 'torp.alysa@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '20uGrdLx7p'),
(13, 'Tito Bahringer', 'enola.brown@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ZlI3RvQ9vN'),
(14, 'Dr. Santos Tillman', 'melyna.mcglynn@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'R8UdpChprS'),
(15, 'Ross Gorczany', 'gudrun07@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1gbULTafFV'),
(16, 'Dr. Baron Hudson IV', 'gayle77@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'F4mHbgcw9R'),
(17, 'Dr. Chester Swaniawski Sr.', 'yjohnston@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'kptppPaJVl'),
(18, 'Leone Schumm', 'cdibbert@example.org', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ZCuMErJBVt'),
(19, 'Dr. Golda Kuvalis MD', 'america.effertz@example.net', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'iSF2tb3ywy'),
(20, 'Josh Deckow', 'abigayle.wehner@example.com', '2024-02-19 23:35:13', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'yZ4lxYctU8'),
(21, 'Eliseo Leffler', 'kfeeney@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'VX0W5DgOOp'),
(22, 'Terrence Bashirian', 'ykeebler@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ApLoiFpvXB'),
(23, 'Phoebe Gutkowski', 'carole14@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'A07WKQ6heg'),
(24, 'Dr. Loma Gutkowski PhD', 'zrosenbaum@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'nlBcy0y8dy'),
(25, 'Prof. Benjamin Mills I', 'hadley.jenkins@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '8PDzyO2Xpk'),
(26, 'Prof. Daren Schneider', 'eddie.schaden@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'o0UMnmgOxe'),
(27, 'Ewald Romaguera', 'aubree73@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'XYLNHnnM4O'),
(28, 'Aniya Russel', 'lonnie87@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'xofLRtG7gS'),
(29, 'Leif Kling', 'daron.mante@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'XIbcSOXzSF'),
(30, 'Madisyn Herzog', 'bkerluke@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1ZMLrpKt6X'),
(31, 'Miss Tianna Walsh DDS', 'otho.rosenbaum@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '6UNy1MK0t5'),
(32, 'Eleonore Sanford III', 'aditya80@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'GZiVvVwfMU'),
(33, 'Melissa O\'Connell', 'reed08@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'nDdpcyR8Z6'),
(34, 'Trisha Ziemann', 'brakus.mario@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'L5D8mI00ry'),
(35, 'Junius Dickens V', 'schimmel.chyna@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'FD6x8eyrx2'),
(36, 'Maximillian Bernhard', 'glover.angus@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'dezxpPVtjy'),
(37, 'Karianne Hartmann MD', 'temmerich@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'BCiGRsOAnD'),
(38, 'Devyn Tillman', 'xpadberg@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'DBLsEthvbq'),
(39, 'Trent Lemke', 'lelia.pfeffer@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'QYN4SNcLvu'),
(40, 'Enos Conn', 'vonrueden.jerrell@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'UNeLepp8Sv'),
(41, 'Mrs. Athena Nienow', 'carlos.glover@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'Ux6AAFY9n7'),
(42, 'Damaris Gusikowski', 'eliza.stokes@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'WDyvAjZoPv'),
(43, 'Giuseppe Ryan', 'bennett.doyle@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'QXFuEvBYdr'),
(44, 'Caroline Weimann', 'reynolds.estelle@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'oADNBB6txN'),
(45, 'Ottis Crooks', 'rrau@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'yFKgRNwirs'),
(46, 'Dr. Maximilian Windler III', 'bernier.neva@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'uxZVje8nUB'),
(47, 'Annamae Macejkovic', 'brianne30@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'hApJqcrrJA'),
(48, 'Prof. Felton Boehm', 'jonas.ryan@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'gxuXtyTDDv'),
(49, 'Cicero O\'Connell', 'gillian70@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'VCfK5YgqFB'),
(50, 'Anais Okuneva', 'bernadine.hills@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '11mCEm8Iyd'),
(51, 'Mr. Colton Mayert', 'bode.natasha@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'cvGNT6HHxi'),
(52, 'Golda Harber', 'trey49@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'lpBKAHSm6j'),
(53, 'Dr. Jamaal Bayer', 'tnitzsche@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'CuEksl343K'),
(54, 'Lamar Fisher', 'elouise.schuster@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'B8xQUIThrY'),
(55, 'Virgil Zboncak', 'nettie43@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'w8L7kvt6yq'),
(56, 'Shanie Dare', 'jweber@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'XLgbJIbe2t'),
(57, 'Mr. Jess Pollich', 'hermann74@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '7XoTFVs8mH'),
(58, 'Samara Jenkins', 'jaiden.jaskolski@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'yKY8MNJQ0M'),
(59, 'Juliet Abshire', 'brian.baumbach@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'uwyYeqzxol'),
(60, 'Earlene Murray', 'aracely30@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'OLaIUxWePm'),
(61, 'Dr. Danny Anderson DVM', 'alexie.hammes@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ZwcbXYjyG8'),
(62, 'Archibald Kilback DDS', 'therese40@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'aaXeGDKLWR'),
(63, 'Joseph Dach', 'kennedi.reynolds@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'wer4MHJB1h'),
(64, 'Mittie Rice', 'enid43@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'Fx9JvyweKy'),
(65, 'Mr. Robert Jerde', 'psteuber@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'yPPrlCa7Iv'),
(66, 'Miss Freida Erdman', 'mario85@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1vrqWTgWjD'),
(67, 'Mohammad Nikolaus', 'michaela.watsica@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'APiuoS6TsX'),
(68, 'Gregoria Halvorson', 'sydni70@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'cX6ODpxaeg'),
(69, 'Bulah Kshlerin', 'stoy@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'RRfbMfTgay'),
(70, 'Leola Nicolas MD', 'anitzsche@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'a39qbXngAV'),
(71, 'Prof. Jonathan Hilpert II', 'hodkiewicz.paolo@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'Igfb6j0ET0'),
(72, 'Bradly Kautzer II', 'blake.fritsch@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'WfDstAXpH4'),
(73, 'Annabelle Koch', 'douglas.fahey@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'wfZwqbg0Jr'),
(74, 'Emie Oberbrunner', 'kianna.runolfsson@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '8EeOpUBpXg'),
(75, 'Einar Funk', 'beth51@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1I6krA6PF5'),
(76, 'Kacie Hilpert', 'emmanuel19@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'S75AtzR0YV'),
(77, 'Harrison Moore II', 'lorenz55@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'ybpscgbJ0P'),
(78, 'Sarah Fahey', 'krista59@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'DPeZfb1gcT'),
(79, 'Stella Dach PhD', 'trycia38@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'm1s242gM1i'),
(80, 'Francisco Rowe', 'ramiro.gislason@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'HeCBzxCKad'),
(81, 'Elna Sporer', 'jruecker@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '7w8oU3ZJS7'),
(82, 'Dariana Aufderhar', 'klocko.raina@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'Dl5Iup2HYw'),
(83, 'Melyna Hintz', 'cesar.treutel@example.com', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'B1MsBYW85B'),
(84, 'Wyatt Mayer', 'albina60@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'E5YZLdK3Wj'),
(85, 'German Ondricka', 'roberta24@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'jSRAB8PZRy'),
(86, 'Michelle Hand', 'beier.shea@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'BSSihI0TuI'),
(87, 'Otto Langworth V', 'garth43@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '3jEqQKE760'),
(88, 'Dr. Bernie Abshire II', 'hilario57@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', '1icKItUtsl'),
(89, 'Aleen Ebert', 'ciara.miller@example.org', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'vDguVqIkhL'),
(90, 'Cara Stracke', 'chanel.goldner@example.net', '2024-02-19 23:35:14', '$2y$12$LTwZHNCSSLYd5y9Fm0GQ3OWKVCYH2UG/yCrxhz6Rh1zeuVAlIY9pS', 'a5VuVZRghW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_domains`
--
ALTER TABLE `allowed_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowed_domains_form_id_foreign` (`form_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_response_id_foreign` (`response_id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_form_id_foreign` (`form_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_form_id_foreign` (`form_id`),
  ADD KEY `responses_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed_domains`
--
ALTER TABLE `allowed_domains`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowed_domains`
--
ALTER TABLE `allowed_domains`
  ADD CONSTRAINT `allowed_domains_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_response_id_foreign` FOREIGN KEY (`response_id`) REFERENCES `responses` (`id`);

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`),
  ADD CONSTRAINT `responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
