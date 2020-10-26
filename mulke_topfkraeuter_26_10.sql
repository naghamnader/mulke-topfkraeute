-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Erstellungszeit: 26. Okt 2020 um 19:26
-- Server-Version: 5.7.26
-- PHP-Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mulke_topfkraeuter`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mulke_product`
--

CREATE TABLE `mulke_product` (
  `id` int(5) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `location` int(11) NOT NULL,
  `water_consumption` int(11) NOT NULL,
  `usage` varchar(500) DEFAULT NULL,
  `price` varchar(10) NOT NULL,
  `available_quantity` int(11) NOT NULL,
  `produkt_img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `mulke_product`
--

INSERT INTO `mulke_product` (`id`, `product_name`, `location`, `water_consumption`, `usage`, `price`, `available_quantity`, `produkt_img`) VALUES
(1, 'Salbei', 2, 3, 'blablbabla', '4,30', 20, NULL),
(2, 'Krause Petersilie ', 4, 3, 'bla blab', '4,80', 6, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 30, 'test', 'test@test.com', '', '::1', '2020-09-04 12:08:21', '2020-09-04 10:08:21', 'test komment', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/mulke-topfkraeute', 'yes'),
(2, 'home', 'http://localhost:8888/mulke-topfkraeute', 'yes'),
(3, 'blogname', 'Mulke Topfkraeuter', 'yes'),
(4, 'blogdescription', 'Weil BIO einfach besser is(s)t', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nagham.nader123@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j. F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=25&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:65:\"mulke-produkt-managment-plugin/mulke-produkt-managment-plugin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'specia', 'yes'),
(41, 'stylesheet', 'heropress', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:19:\"Über diese Website\";s:4:\"text\";s:104:\"Hier wäre ein guter Platz, um dich und deine Website vorzustellen oder weitere Informationen anzugeben.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:19:\"Hier findest du uns\";s:4:\"text\";s:174:\"<strong>Adresse</strong>\nTraum Allee 213\n20020 Jetztdabei\n\n<strong>Öffnungszeiten</strong>\nMontag bis Freitag: 10&ndash;18&nbsp;Uhr\nSamstag und Sonntag: 11&ndash;15&nbsp;Uhr\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:7:\"Kontakt\";s:4:\"text\";s:743:\"<em><strong>Mulke Topfkräuter GmbH</strong></em>\r\n<em><strong>Gärtnerei Taunusblick 1</strong></em>\r\n<em><strong>65205 Wiesbaden</strong></em>\r\n\r\n<em><strong>Telefon: +49 611 701237</strong></em>\r\n<em><strong>Fax: +49 611 701231</strong></em>\r\n<em><strong>E-Mail: mulke@t-online.de</strong></em>\r\n<br>\r\n<iframe style=\"width:100%;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2562.602060268808!2d8.336998701579782!3d50.03755202931945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47bd981adac4546b%3A0x761ae5b7c674217a!2sMulke%20Topfkr%C3%A4uter%20GmbH!5e0!3m2!1sde!2sde!4v1599479835377!5m2!1sde!2sde\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Berlin', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '25', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1614422837', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'de_DE', 'yes'),
(99, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:15:\"sidebar-primary\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:6:\"text-5\";}s:18:\"footer-widget-area\";a:0:{}s:13:\"woocommerce-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1603741638;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1603752438;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603795637;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603795665;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603795875;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'nonce_key', 'g}eK`vIjfBg%}-_suFfukx;R [u.a`VcG6go|jV0[~BfF{nQF6^`NE2&2<^m,gb~', 'no'),
(113, 'nonce_salt', 'v$kirL$^Qb6-vgWi_,2lPtv>EfL}/+P/O0fEHh^K?Vl Hw%~&9bmCb{(J-tu]iOr', 'no'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598990703;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(121, 'auth_key', 'rz93</ATwj-ch9]#Au?jk<f;1ZE}o_{ m{`Tg_Q&+YKFi$$~RN+h3vwf5Py|4[n^', 'no'),
(122, 'auth_salt', 'v=$8/u-y q9@W)/;G4?qH0_pHBw&T=$e,I4#l-^Gz0y|&NOiNU*jHh(w.?#TrI*`', 'no'),
(123, 'logged_in_key', '%|Ib<2GfL#g#*aCTgDcfi9Kw;LRv}CnGi[%])1lS&:j<6<h)|{g#*2_u3`Gv#cc-', 'no'),
(124, 'logged_in_salt', 'Y6[ }xenP(l#*5<f1]P5OseDLv4,m+Na^;}qn3JPNb>qQw2!#}jb?@!eI]FtsK4_', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(134, 'finished_updating_comment_type', '1', 'yes'),
(152, '_transient_health-check-site-status-result', '{\"good\":\"9\",\"recommended\":\"9\",\"critical\":\"2\"}', 'yes'),
(157, 'current_theme', 'HeroPress', 'yes'),
(158, 'theme_mods_heropress', 'a:23:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598990651;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;s:16:\"hide_show_social\";s:1:\"1\";s:13:\"facebook_link\";s:11:\"http://test\";s:13:\"linkedin_link\";s:0:\"\";s:12:\"twitter_link\";s:11:\"http://test\";s:14:\"instagram_link\";s:11:\"http://test\";s:10:\"skype_link\";s:0:\"\";s:10:\"email_link\";s:0:\"\";s:23:\"hide_show_contact_infos\";s:1:\"1\";s:12:\"header_email\";s:0:\"\";s:18:\"header_contact_num\";s:6:\"01234r\";s:21:\"sticky_header_setting\";s:2:\"on\";s:16:\"hide_show_slider\";s:3:\"off\";s:12:\"slider-page1\";i:0;s:22:\"hide_show_call_actions\";s:2:\"on\";s:13:\"service_title\";s:0:\"\";s:19:\"service_description\";s:0:\"\";s:17:\"hide_show_service\";s:3:\"off\";s:17:\"copyright_content\";s:26:\"© Mulke Topfkräuter 2020\";s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(162, 'widget_specia_feature_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'category_children', 'a:0:{}', 'yes'),
(252, 'recently_activated', 'a:1:{s:65:\"mulke-produkt-managment-plugin/mulke-produkt-managment-plugin.php\";i:1599819595;}', 'yes'),
(279, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1603982209', 'no'),
(280, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(281, '_site_transient_timeout_browser_007d11500458afdec04d4d69baf8c345', '1603982297', 'no'),
(282, '_site_transient_browser_007d11500458afdec04d4d69baf8c345', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.80\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(297, '_site_transient_timeout_browser_95819947ddfec1333529ded707483fb7', '1603986246', 'no'),
(298, '_site_transient_browser_95819947ddfec1333529ded707483fb7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.111\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(305, 'recovery_mode_email_last_sent', '1603394326', 'yes'),
(332, 'dismissed_update_core', 'a:1:{s:11:\"5.5.1|de_DE\";b:1;}', 'no'),
(382, '_site_transient_timeout_theme_roots', '1603711143', 'no'),
(383, '_site_transient_theme_roots', 'a:5:{s:9:\"heropress\";s:7:\"/themes\";s:6:\"specia\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(386, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"de_DE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/de_DE/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603709347;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-10-22 11:22:21\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_DE.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(387, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603709355;s:7:\"checked\";a:5:{s:9:\"heropress\";s:6:\"3.0.24\";s:6:\"specia\";s:6:\"3.1.40\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:2:{s:9:\"heropress\";a:6:{s:5:\"theme\";s:9:\"heropress\";s:11:\"new_version\";s:6:\"3.0.26\";s:3:\"url\";s:39:\"https://wordpress.org/themes/heropress/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/heropress.3.0.26.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:6:\"specia\";a:6:{s:5:\"theme\";s:6:\"specia\";s:11:\"new_version\";s:6:\"3.1.45\";s:3:\"url\";s:36:\"https://wordpress.org/themes/specia/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/specia.3.1.45.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:9:\"heropress\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"3.0.13\";s:7:\"updated\";s:19:\"2019-11-25 20:40:13\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/heropress/3.0.13/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:6:\"specia\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"3.1.40\";s:7:\"updated\";s:19:\"2019-08-06 06:33:04\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/specia/3.1.40/de_DE.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(388, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603709357;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:65:\"mulke-produkt-managment-plugin/mulke-produkt-managment-plugin.php\";s:5:\"1.0.0\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.1.6\";s:7:\"updated\";s:19:\"2020-10-19 20:53:16\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.6/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-04-05 08:39:30\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/de_DE.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templates/template-product.php'),
(2, 3, '_wp_page_template', 'default'),
(44, 2, '_edit_lock', '1599813941:1'),
(48, 25, '_edit_lock', '1603550932:1'),
(49, 2, '_edit_last', '1'),
(50, 28, '_menu_item_type', 'post_type'),
(51, 28, '_menu_item_menu_item_parent', '0'),
(52, 28, '_menu_item_object_id', '25'),
(53, 28, '_menu_item_object', 'page'),
(54, 28, '_menu_item_target', ''),
(55, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 28, '_menu_item_xfn', ''),
(57, 28, '_menu_item_url', ''),
(58, 28, '_menu_item_orphaned', '1599213858'),
(59, 29, '_menu_item_type', 'post_type'),
(60, 29, '_menu_item_menu_item_parent', '0'),
(61, 29, '_menu_item_object_id', '2'),
(62, 29, '_menu_item_object', 'page'),
(63, 29, '_menu_item_target', ''),
(64, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 29, '_menu_item_xfn', ''),
(66, 29, '_menu_item_url', ''),
(67, 29, '_menu_item_orphaned', '1599213858'),
(68, 30, '_edit_lock', '1599213866:1'),
(72, 33, '_edit_lock', '1599456552:1'),
(73, 34, '_wp_attached_file', '2020/09/bg-mulke.jpg'),
(74, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:329;s:4:\"file\";s:20:\"2020/09/bg-mulke.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-mulke-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-mulke-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bg-mulke-768x275.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:275;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1334587197\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 68, '_wp_attached_file', '2020/09/cropped-emotionheader_1.jpg'),
(127, 68, '_wp_attachment_context', 'custom-header'),
(128, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:813;s:4:\"file\";s:35:\"2020/09/cropped-emotionheader_1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-emotionheader_1-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"cropped-emotionheader_1-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-emotionheader_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"cropped-emotionheader_1-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"cropped-emotionheader_1-1536x624.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:624;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:67;}'),
(131, 69, '_wp_attached_file', '2020/09/cropped-bg-mulke.jpg'),
(132, 69, '_wp_attachment_context', 'custom-header'),
(133, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2020/09/cropped-bg-mulke.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-bg-mulke-300x30.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:30;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-bg-mulke-1024x102.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-bg-mulke-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-bg-mulke-768x77.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"cropped-bg-mulke-1536x154.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:34;}'),
(136, 70, '_wp_attached_file', '2020/09/cropped-emotionheader_1-1.jpg'),
(137, 70, '_wp_attachment_context', 'custom-header'),
(138, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:465;s:4:\"file\";s:37:\"2020/09/cropped-emotionheader_1-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-emotionheader_1-1-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"cropped-emotionheader_1-1-1024x238.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:238;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-emotionheader_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"cropped-emotionheader_1-1-768x179.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"cropped-emotionheader_1-1-1536x357.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:357;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:67;}'),
(150, 3, '_edit_last', '1'),
(151, 3, '_edit_lock', '1599459390:1'),
(152, 25, '_edit_last', '1'),
(153, 25, '_wp_page_template', 'default'),
(154, 78, '_menu_item_type', 'post_type'),
(155, 78, '_menu_item_menu_item_parent', '0'),
(156, 78, '_menu_item_object_id', '25'),
(157, 78, '_menu_item_object', 'page'),
(158, 78, '_menu_item_target', ''),
(159, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 78, '_menu_item_xfn', ''),
(161, 78, '_menu_item_url', ''),
(162, 78, '_menu_item_orphaned', '1599475588'),
(163, 79, '_menu_item_type', 'post_type'),
(164, 79, '_menu_item_menu_item_parent', '0'),
(165, 79, '_menu_item_object_id', '2'),
(166, 79, '_menu_item_object', 'page'),
(167, 79, '_menu_item_target', ''),
(168, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 79, '_menu_item_xfn', ''),
(170, 79, '_menu_item_url', ''),
(171, 79, '_menu_item_orphaned', '1599475588'),
(172, 80, '_wp_attached_file', '2020/09/logo-mulke.jpg'),
(173, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:412;s:6:\"height\";i:250;s:4:\"file\";s:22:\"2020/09/logo-mulke.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo-mulke-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-mulke-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 81, '_wp_attached_file', '2020/09/cropped-logo-mulke.jpg'),
(175, 81, '_wp_attachment_context', 'site-icon'),
(176, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2020/09/cropped-logo-mulke.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-logo-mulke-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-logo-mulke-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-logo-mulke-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-logo-mulke-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-logo-mulke-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-logo-mulke-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 34, '_edit_lock', '1599479022:1'),
(188, 95, '_wp_attached_file', '2020/09/Location_dot_green.svg_.png'),
(189, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:35:\"2020/09/Location_dot_green.svg_.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Location_dot_green.svg_-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Location_dot_green.svg_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Location_dot_green.svg_-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2020-08-31 12:47:17', '2020-08-31 10:47:17', '', 'Beispiel-Seite', '', 'publish', 'closed', 'closed', '', 'beispiel-seite', '', '', '2020-09-08 12:19:16', '2020-09-08 10:19:16', '', 0, 'http://localhost:8888/mulke-topfkraeute/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-08-31 12:47:17', '2020-08-31 10:47:17', '<!-- wp:heading --><h2>Wer wir sind</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Die Adresse unserer Website ist: http://localhost:8888/mulke-topfkraeute.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche personenbezogenen Daten wir sammeln und warum wir sie sammeln</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Kommentare</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medien</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Kontaktformulare</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Eingebettete Inhalte von anderen Websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z.&nbsp;B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analysedienste</h3><!-- /wp:heading --><!-- wp:heading --><h2>Mit wem wir deine Daten teilen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Wie lange wir deine Daten speichern</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstelle sie in einer Moderations-Warteschlange festzuhalten.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche Rechte du an deinen Daten hast</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Wohin wir deine Daten senden</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Deine Kontakt-Informationen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Weitere Informationen</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Wie wir deine Daten schützen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche Maßnahmen wir bei Datenschutzverletzungen anbieten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Von welchen Drittanbietern wir Daten erhalten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche automatisierte Entscheidungsfindung und/oder Profilerstellung wir mit Benutzerdaten durchführen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vorausgesetzte Offenlegungspflichten der Industrie</h3><!-- /wp:heading -->', 'Datenschutzerklärung', '', 'draft', 'closed', 'closed', '', 'datenschutzerklaerung', '', '', '2020-09-07 08:16:30', '2020-09-07 06:16:30', '', 0, 'http://localhost:8888/mulke-topfkraeute/?page_id=3', 0, 'page', '', 0),
(23, 1, '2020-09-01 22:16:14', '2020-09-01 20:16:14', '<!-- wp:paragraph -->\n<p>Dies ist eine Beispiel-Seite. Sie unterscheidet sich von Beiträgen, da sie stets an derselben Stelle bleibt und (bei den meisten Themes) in der Website-Navigation angezeigt wird. Die meisten starten mit einem Impressum, der Datenschutzerklärung oder einer „Über&nbsp;uns“-Seite, um sich potenziellen Besuchern der Website vorzustellen. Dort könnte zum Beispiel stehen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hallo! Tagsüber arbeite ich als Fahrradkurier, nachts bin ich ein aufstrebender Schauspieler und dies hier ist meine Website. Ich lebe in Berlin, habe einen großen Hund namens Jack, mag Piña Coladas, jedoch weniger (ohne Schirm) im Regen stehen gelassen zu werden.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...oder so etwas wie das hier:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Das Unternehmen XYZ wurde 1971 gegründet und versorgt die Öffentlichkeit seither mit qualitativ hochwertigen Produkten. An seinem Standort in einer kleinen Großstadt beschäftigt der Betrieb über 2.000 Menschen und unterstützt die Stadtbewohner in vielfacher Hinsicht.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als neuer WordPress-Benutzer solltest du <a href=\"http://localhost:8888/mulke-topfkraeute/wp-admin/\">dein Dashboard</a> aufrufen, um diese Seite zu löschen und neue Seiten und Beiträge für deine Website erstellen. Viel Spaß!</p>\n<!-- /wp:paragraph -->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-01 22:16:14', '2020-09-01 20:16:14', '', 2, 'http://localhost:8888/mulke-topfkraeute/2020/09/01/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-09-04 11:57:48', '2020-09-04 09:57:48', '<!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Willkommen bei Mulke Topfkräuter GmbH</h3>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":80,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/logo-mulke.jpg\" alt=\"\" class=\"wp-image-80\"/><figcaption>wir freuen uns, Sie auf unserer Homepage begrüßen zu dürfen.</figcaption></figure></div>\n<!-- /wp:image -->', 'Mulke Topfkräuter Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-07 13:04:44', '2020-09-07 11:04:44', '', 0, 'http://localhost:8888/mulke-topfkraeute/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-09-04 11:57:48', '2020-09-04 09:57:48', '<!-- wp:paragraph -->\n<p>testest</p>\n<!-- /wp:paragraph -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-04 11:57:48', '2020-09-04 09:57:48', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-09-04 12:00:00', '2020-09-04 10:00:00', '<!-- wp:paragraph -->\n<p>testtest</p>\n<!-- /wp:paragraph -->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-04 12:00:00', '2020-09-04 10:00:00', '', 2, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/2-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-09-04 12:04:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-04 12:04:18', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2020-09-04 12:04:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-04 12:04:18', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-09-04 12:06:35', '2020-09-04 10:06:35', '<!-- wp:paragraph -->\n<p>test beitrag,  das ist es</p>\n<!-- /wp:paragraph -->', 'test beitrag', '', 'publish', 'open', 'open', '', 'test-beitrag', '', '', '2020-09-04 12:06:35', '2020-09-04 10:06:35', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=30', 0, 'post', '', 1),
(31, 1, '2020-09-04 12:06:35', '2020-09-04 10:06:35', '<!-- wp:paragraph -->\n<p>test beitrag,  das ist es</p>\n<!-- /wp:paragraph -->', 'test beitrag', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-09-04 12:06:35', '2020-09-04 10:06:35', '', 30, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-09-04 12:12:43', '2020-09-04 10:12:43', '<!-- wp:gallery {\"ids\":[42,43,44],\"columns\":3,\"linkTo\":\"attachment\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1-300x169.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'publish', 'open', 'open', '', 'test-beitrag-mit-bild', '', '', '2020-09-07 07:27:40', '2020-09-07 05:27:40', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=33', 0, 'post', '', 0),
(34, 1, '2020-09-04 12:12:26', '2020-09-04 10:12:26', '', 'bg-mulke', '', 'inherit', 'open', 'closed', '', 'bg-mulke', '', '', '2020-09-04 12:12:26', '2020-09-04 10:12:26', '', 33, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-09-04 12:12:43', '2020-09-04 10:12:43', '<!-- wp:image {\"id\":34,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke.jpg\" alt=\"\" class=\"wp-image-34\"/><figcaption>hier ist was</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>blabla</p>\n<!-- /wp:paragraph -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-04 12:12:43', '2020-09-04 10:12:43', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/33-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-04 12:42:46', '2020-09-04 10:42:46', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:cover {\"url\":\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-300x107.jpg\",\"id\":34} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-300x107.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Schreibe einen Titel…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:media-text {\"mediaId\":36,\"mediaType\":\"image\",\"verticalAlignment\":\"bottom\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-bottom\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2.png\" alt=\"\" class=\"wp-image-36\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Inhalt…\",\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">test test</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:gallery {\"ids\":[37,38,39]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image.jpg\" alt=\"\" data-id=\"37\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-1.png\" alt=\"\" data-id=\"38\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-1/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-1.jpg\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-1/\" class=\"wp-image-39\"/></figure></li></ul></figure>\n<!-- /wp:gallery --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>blabla</p>\n<!-- /wp:paragraph -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-04 12:42:46', '2020-09-04 10:42:46', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/33-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-09-04 12:49:17', '2020-09-04 10:49:17', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:cover {\"url\":\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-300x107.jpg\",\"id\":34} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-image:url(http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-300x107.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Schreibe einen Titel…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"align\":\"wide\"} -->\n<div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:media-text {\"mediaId\":36,\"mediaType\":\"image\",\"verticalAlignment\":\"bottom\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-bottom\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2.png\" alt=\"\" class=\"wp-image-36\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Inhalt…\",\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">test test</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:gallery {\"ids\":[37,38,39],\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image.jpg\" alt=\"\" data-id=\"37\" class=\"wp-image-37\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-1.png\" alt=\"\" data-id=\"38\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-1/\" class=\"wp-image-38\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-1.jpg\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-1/\" class=\"wp-image-39\"/></figure></li></ul><figcaption class=\"blocks-gallery-caption\">test</figcaption></figure>\n<!-- /wp:gallery --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>blabla</p>\n<!-- /wp:paragraph -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-04 12:49:17', '2020-09-04 10:49:17', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/33-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-09-04 12:50:40', '2020-09-04 10:50:40', '<!-- wp:gallery {\"ids\":[42,43,44]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-04 12:50:40', '2020-09-04 10:50:40', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/33-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-09-04 12:51:15', '2020-09-04 10:51:15', '<!-- wp:paragraph -->\n<p>testest</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[46,47,48]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-3.jpg\" alt=\"\" data-id=\"46\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-3.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/test-home/bg-mulke-3/\" class=\"wp-image-46\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-3.png\" alt=\"\" data-id=\"47\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-3.png\" data-link=\"http://localhost:8888/mulke-topfkraeute/test-home/motivation-und-lernerfolg-2-3/\" class=\"wp-image-47\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-2.jpg\" alt=\"\" data-id=\"48\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-2.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/test-home/parable-of-lost-sheep-jesus-image-2/\" class=\"wp-image-48\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-04 12:51:15', '2020-09-04 10:51:15', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/25-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-09-04 12:56:41', '2020-09-04 10:56:41', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">testest<img class=\"wp-image-52\" style=\"width: 200px;\" src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-3.jpg\" alt=\"\"></p>\n<!-- /wp:paragraph -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-04 12:56:41', '2020-09-04 10:56:41', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/25-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-04 12:56:44', '2020-09-04 10:56:44', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<div style =\"content-align:center;\"><p class=\"has-text-align-left\">testest<img class=\"wp-image-52\" style=\"width: 200px;\" src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-3.jpg\" alt=\"\"></p></div>\n<!-- /wp:paragraph -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-04 12:56:44', '2020-09-04 10:56:44', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/25-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-09-04 12:57:02', '2020-09-04 10:57:02', '<!-- wp:html -->\n<div style =\"content-align:center;\"><p class=\"has-text-align-left\">testest<img class=\"wp-image-52\" style=\"width: 200px;\" src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-3.jpg\" alt=\"\"></p></div>\n<!-- /wp:html -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-04 12:57:02', '2020-09-04 10:57:02', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/04/25-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-09-07 07:26:10', '2020-09-07 05:26:10', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'test home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 07:26:10', '2020-09-07 05:26:10', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/25-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-09-07 07:26:40', '2020-09-07 05:26:40', '<!-- wp:gallery {\"ids\":[42,43,44],\"columns\":3,\"linkTo\":\"media\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2.png\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-07 07:26:40', '2020-09-07 05:26:40', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/33-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-09-07 07:27:15', '2020-09-07 05:27:15', '<!-- wp:gallery {\"ids\":[42,43,44],\"columns\":3,\"linkTo\":\"media\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1-300x169.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-07 07:27:15', '2020-09-07 05:27:15', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/33-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-09-07 07:27:40', '2020-09-07 05:27:40', '<!-- wp:gallery {\"ids\":[42,43,44],\"columns\":3,\"linkTo\":\"attachment\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1-300x169.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-07 07:27:40', '2020-09-07 05:27:40', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/33-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-09-07 07:28:57', '2020-09-07 05:28:57', '<!-- wp:gallery {\"ids\":[42,43,44],\"columns\":3,\"linkTo\":\"media\",\"sizeSlug\":\"medium\"} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/bg-mulke-2-300x107.jpg\" alt=\"\" data-id=\"42\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/bg-mulke-2/\" class=\"wp-image-42\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Motivation-und-lernerfolg-2-2-300x189.png\" alt=\"\" data-id=\"43\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/motivation-und-lernerfolg-2-2/\" class=\"wp-image-43\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1-300x169.jpg\" alt=\"\" data-id=\"44\" data-full-url=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Parable-of-Lost-Sheep-Jesus-Image-1.jpg\" data-link=\"http://localhost:8888/mulke-topfkraeute/2020/09/04/test-beitrag-mit-bild/parable-of-lost-sheep-jesus-image-1/\" class=\"wp-image-44\"/></a></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'test beitrag mit bild', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2020-09-07 07:28:57', '2020-09-07 05:28:57', '', 33, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/33-autosave-v1/', 0, 'revision', '', 0),
(68, 1, '2020-09-07 07:50:38', '2020-09-07 05:50:38', '', 'cropped-emotionheader_1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-emotionheader_1-jpg', '', '', '2020-09-07 07:50:38', '2020-09-07 05:50:38', '', 0, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/cropped-emotionheader_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-09-07 07:51:24', '2020-09-07 05:51:24', '', 'cropped-bg-mulke.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bg-mulke-jpg', '', '', '2020-09-07 07:51:24', '2020-09-07 05:51:24', '', 0, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/cropped-bg-mulke.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-09-07 07:54:23', '2020-09-07 05:54:23', '', 'cropped-emotionheader_1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-emotionheader_1-1-jpg', '', '', '2020-09-07 07:54:23', '2020-09-07 05:54:23', '', 0, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/cropped-emotionheader_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-09-07 08:16:18', '2020-09-07 06:16:18', '<!-- wp:heading --><h2>Wer wir sind</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Die Adresse unserer Website ist: http://localhost:8888/mulke-topfkraeute.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche personenbezogenen Daten wir sammeln und warum wir sie sammeln</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Kommentare</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn Besucher Kommentare auf der Website schreiben, sammeln wir die Daten, die im Kommentar-Formular angezeigt werden, außerdem die IP-Adresse des Besuchers und den User-Agent-String (damit wird der Browser identifiziert), um die Erkennung von Spam zu unterstützen.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Aus deiner E-Mail-Adresse kann eine anonymisierte Zeichenfolge erstellt (auch Hash genannt) und dem Gravatar-Dienst übergeben werden, um zu prüfen, ob du diesen benutzt. Die Datenschutzerklärung des Gravatar-Dienstes findest du hier: https://automattic.com/privacy/. Nachdem dein Kommentar freigegeben wurde, ist dein Profilbild öffentlich im Kontext deines Kommentars sichtbar.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medien</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein registrierter Benutzer bist und Fotos auf diese Website lädst, solltest du vermeiden, Fotos mit einem EXIF-GPS-Standort hochzuladen. Besucher dieser Website könnten Fotos, die auf dieser Website gespeichert sind, herunterladen und deren Standort-Informationen extrahieren.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Kontaktformulare</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar auf unserer Website schreibst, kann das eine Einwilligung sein, deinen Namen, E-Mail-Adresse und Website in Cookies zu speichern. Dies ist eine Komfortfunktion, damit du nicht, wenn du einen weiteren Kommentar schreibst, all diese Daten erneut eingeben musst. Diese Cookies werden ein Jahr lang gespeichert.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Falls du ein Konto hast und dich auf dieser Website anmeldest, werden wir ein temporäres Cookie setzen, um festzustellen, ob dein Browser Cookies akzeptiert. Dieses Cookie enthält keine personenbezogenen Daten und wird verworfen, wenn du deinen Browser schließt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du dich anmeldest, werden wir einige Cookies einrichten, um deine Anmeldeinformationen und Anzeigeoptionen zu speichern. Anmelde-Cookies verfallen nach zwei Tagen und Cookies für die Anzeigeoptionen nach einem Jahr. Falls du bei der Anmeldung „Angemeldet bleiben“ auswählst, wird deine Anmeldung zwei Wochen lang aufrechterhalten. Mit der Abmeldung aus deinem Konto werden die Anmelde-Cookies gelöscht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wenn du einen Artikel bearbeitest oder veröffentlichst, wird ein zusätzlicher Cookie in deinem Browser gespeichert. Dieser Cookie enthält keine personenbezogenen Daten und verweist nur auf die Beitrags-ID des Artikels, den du gerade bearbeitet hast. Der Cookie verfällt nach einem Tag.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Eingebettete Inhalte von anderen Websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Beiträge auf dieser Website können eingebettete Inhalte beinhalten (z.&nbsp;B. Videos, Bilder, Beiträge etc.). Eingebettete Inhalte von anderen Websites verhalten sich exakt so, als ob der Besucher die andere Website besucht hätte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Diese Websites können Daten über dich sammeln, Cookies benutzen, zusätzliche Tracking-Dienste von Dritten einbetten und deine Interaktion mit diesem eingebetteten Inhalt aufzeichnen, inklusive deiner Interaktion mit dem eingebetteten Inhalt, falls du ein Konto hast und auf dieser Website angemeldet bist.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analysedienste</h3><!-- /wp:heading --><!-- wp:heading --><h2>Mit wem wir deine Daten teilen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Wie lange wir deine Daten speichern</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du einen Kommentar schreibst, wird dieser inklusive Metadaten zeitlich unbegrenzt gespeichert. Auf diese Art können wir Folgekommentare automatisch erkennen und freigeben, anstelle sie in einer Moderations-Warteschlange festzuhalten.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Für Benutzer, die sich auf unserer Website registrieren, speichern wir zusätzlich die persönlichen Informationen, die sie in ihren Benutzerprofilen angeben. Alle Benutzer können jederzeit ihre persönlichen Informationen einsehen, verändern oder löschen (der Benutzername kann nicht verändert werden). Administratoren der Website können diese Informationen ebenfalls einsehen und verändern.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welche Rechte du an deinen Daten hast</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Wenn du ein Konto auf dieser Website besitzt oder Kommentare geschrieben hast, kannst du einen Export deiner personenbezogenen Daten bei uns anfordern, inklusive aller Daten, die du uns mitgeteilt hast. Darüber hinaus kannst du die Löschung aller personenbezogenen Daten, die wir von dir gespeichert haben, anfordern. Dies umfasst nicht die Daten, die wir aufgrund administrativer, rechtlicher oder sicherheitsrelevanter Notwendigkeiten aufbewahren müssen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Wohin wir deine Daten senden</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Besucher-Kommentare könnten von einem automatisierten Dienst zur Spam-Erkennung untersucht werden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Deine Kontakt-Informationen</h2><!-- /wp:heading --><!-- wp:heading --><h2>Weitere Informationen</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Wie wir deine Daten schützen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche Maßnahmen wir bei Datenschutzverletzungen anbieten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Von welchen Drittanbietern wir Daten erhalten</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Welche automatisierte Entscheidungsfindung und/oder Profilerstellung wir mit Benutzerdaten durchführen</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Vorausgesetzte Offenlegungspflichten der Industrie</h3><!-- /wp:heading -->', 'Datenschutzerklärung', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-07 08:16:18', '2020-09-07 06:16:18', '', 3, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/3-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-07 08:16:55', '2020-09-07 06:16:55', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 08:16:55', '2020-09-07 06:16:55', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/25-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-07 08:17:19', '2020-09-07 06:17:19', '<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Mulke Topfkräuter Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 08:17:19', '2020-09-07 06:17:19', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/25-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-07 08:18:25', '2020-09-07 06:18:25', '<!-- wp:heading {\"level\":3} -->\n<h3>Willkommen bei Mulke Topfkräuter GmbH</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>wir freuen uns, Sie auf unserer Homepage begrüßen zu dürfen.</p>\n<!-- /wp:paragraph -->', 'Mulke Topfkräuter Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 08:18:25', '2020-09-07 06:18:25', '', 25, 'http://localhost:8888/mulke-topfkraeute/2020/09/07/25-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-07 12:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-07 12:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2020-09-07 12:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-07 12:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2020-09-07 13:00:19', '2020-09-07 11:00:19', '', 'logo-mulke', '', 'inherit', 'open', 'closed', '', 'logo-mulke', '', '', '2020-09-07 13:00:19', '2020-09-07 11:00:19', '', 0, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/logo-mulke.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-09-07 13:01:19', '2020-09-07 11:01:19', 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/cropped-logo-mulke.jpg', 'cropped-logo-mulke.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-mulke-jpg', '', '', '2020-09-07 13:01:19', '2020-09-07 11:01:19', '', 0, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/cropped-logo-mulke.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-09-07 13:03:23', '2020-09-07 11:03:23', '<!-- wp:heading {\"level\":3} -->\n<h3>Willkommen bei Mulke Topfkräuter GmbH</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><img class=\"wp-image-80\" style=\"width: 150px;\" src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/logo-mulke.jpg\" alt=\"\">wir freuen uns, Sie auf unserer Homepage begrüßen zu dürfen.</p>\n<!-- /wp:paragraph -->', 'Mulke Topfkräuter Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 13:03:23', '2020-09-07 11:03:23', '', 25, 'http://localhost:8888/mulke-topfkraeute/25-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-09-07 13:04:16', '2020-09-07 11:04:16', '<!-- wp:heading {\"level\":3} -->\n<h3>Willkommen bei Mulke Topfkräuter GmbH</h3>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":80,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/logo-mulke.jpg\" alt=\"\" class=\"wp-image-80\"/><figcaption>wir freuen uns, Sie auf unserer Homepage begrüßen zu dürfen.</figcaption></figure></div>\n<!-- /wp:image -->', 'Mulke Topfkräuter Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 13:04:16', '2020-09-07 11:04:16', '', 25, 'http://localhost:8888/mulke-topfkraeute/25-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-09-07 13:04:44', '2020-09-07 11:04:44', '<!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Willkommen bei Mulke Topfkräuter GmbH</h3>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":80,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/logo-mulke.jpg\" alt=\"\" class=\"wp-image-80\"/><figcaption>wir freuen uns, Sie auf unserer Homepage begrüßen zu dürfen.</figcaption></figure></div>\n<!-- /wp:image -->', 'Mulke Topfkräuter Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-09-07 13:04:44', '2020-09-07 11:04:44', '', 25, 'http://localhost:8888/mulke-topfkraeute/25-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-09-07 13:58:23', '2020-09-07 11:58:23', '<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2562.602060268808!2d8.336998701579782!3d50.03755202931945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47bd981adac4546b%3A0x761ae5b7c674217a!2sMulke%20Topfkr%C3%A4uter%20GmbH!5e0!3m2!1sde!2sde!4v1599479835377!5m2!1sde!2sde\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-07 13:58:23', '2020-09-07 11:58:23', '', 2, 'http://localhost:8888/mulke-topfkraeute/2-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-09-08 08:36:48', '2020-09-08 06:36:48', '<!-- wp:html -->\n<iframe style=\"width:70%;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2562.602060268808!2d8.336998701579782!3d50.03755202931945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47bd981adac4546b%3A0x761ae5b7c674217a!2sMulke%20Topfkr%C3%A4uter%20GmbH!5e0!3m2!1sde!2sde!4v1599479835377!5m2!1sde!2sde\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-08 08:36:48', '2020-09-08 06:36:48', '', 2, 'http://localhost:8888/mulke-topfkraeute/2-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-09-08 08:37:25', '2020-09-08 06:37:25', '<!-- wp:html -->\n<iframe style=\"width:100%;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2562.602060268808!2d8.336998701579782!3d50.03755202931945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47bd981adac4546b%3A0x761ae5b7c674217a!2sMulke%20Topfkr%C3%A4uter%20GmbH!5e0!3m2!1sde!2sde!4v1599479835377!5m2!1sde!2sde\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-08 08:37:25', '2020-09-08 06:37:25', '', 2, 'http://localhost:8888/mulke-topfkraeute/2-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-09-08 08:50:15', '2020-09-08 06:50:15', '<!-- wp:html /-->', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-08 08:50:15', '2020-09-08 06:50:15', '', 2, 'http://localhost:8888/mulke-topfkraeute/2-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-09-08 08:56:50', '2020-09-08 06:56:50', '', 'Location_dot_green.svg', '', 'inherit', 'open', 'closed', '', 'location_dot_green-svg', '', '', '2020-09-08 08:56:50', '2020-09-08 06:56:50', '', 2, 'http://localhost:8888/mulke-topfkraeute/wp-content/uploads/2020/09/Location_dot_green.svg_.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2020-09-08 10:48:02', '2020-09-08 08:48:02', '', 'Beispiel-Seite', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-08 10:48:02', '2020-09-08 08:48:02', '', 2, 'http://localhost:8888/mulke-topfkraeute/2-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-10-22 16:38:17', '0000-00-00 00:00:00', '', 'Automatisch gespeicherter Entwurf', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-22 16:38:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/mulke-topfkraeute/?p=98', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Allgemein', 'allgemein', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(30, 1, 0),
(33, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ad-nagham'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"522a0ec59842250f266a22d822a99237db50b3951a892671f86b4d883906ef64\";a:4:{s:10:\"expiration\";i:1604587096;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\";s:5:\"login\";i:1603377496;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '98'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1599476400'),
(22, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Daten für Tabelle `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ad-nagham', '$P$BYfj/ozDw1Ro0e7mwlnbUePW4N9gju0', 'ad-nagham', 'nagham.nader123@gmail.com', 'http://localhost:8888/mulke-topfkraeute', '2020-08-31 10:47:17', '', 0, 'ad-nagham');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mulke_product`
--
ALTER TABLE `mulke_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indizes für die Tabelle `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indizes für die Tabelle `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indizes für die Tabelle `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indizes für die Tabelle `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indizes für die Tabelle `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indizes für die Tabelle `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indizes für die Tabelle `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indizes für die Tabelle `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indizes für die Tabelle `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indizes für die Tabelle `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indizes für die Tabelle `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `mulke_product`
--
ALTER TABLE `mulke_product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT für Tabelle `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT für Tabelle `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT für Tabelle `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
