# WordPress MySQL database migration
#
# Generated: Tuesday 29. November 2016 22:54 UTC
# Hostname: localhost
# Database: `consolida`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_consolida_commentmeta`
#

DROP TABLE IF EXISTS `wp_consolida_commentmeta`;


#
# Table structure of table `wp_consolida_commentmeta`
#

CREATE TABLE `wp_consolida_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_commentmeta`
#

#
# End of data contents of table `wp_consolida_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_comments`
#

DROP TABLE IF EXISTS `wp_consolida_comments`;


#
# Table structure of table `wp_consolida_comments`
#

CREATE TABLE `wp_consolida_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_comments`
#
INSERT INTO `wp_consolida_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-29 22:13:29', '2016-11-29 22:13:29', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_consolida_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_links`
#

DROP TABLE IF EXISTS `wp_consolida_links`;


#
# Table structure of table `wp_consolida_links`
#

CREATE TABLE `wp_consolida_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_links`
#

#
# End of data contents of table `wp_consolida_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_options`
#

DROP TABLE IF EXISTS `wp_consolida_options`;


#
# Table structure of table `wp_consolida_options`
#

CREATE TABLE `wp_consolida_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_options`
#
INSERT INTO `wp_consolida_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/consolida', 'yes'),
(2, 'home', 'http://localhost/consolida', 'yes'),
(3, 'blogname', 'Consolida Website', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:143:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"banner/?$";s:26:"index.php?post_type=banner";s:39:"banner/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=banner&feed=$matches[1]";s:34:"banner/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=banner&feed=$matches[1]";s:26:"banner/page/([0-9]{1,})/?$";s:44:"index.php?post_type=banner&paged=$matches[1]";s:11:"servicio/?$";s:28:"index.php?post_type=servicio";s:41:"servicio/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=servicio&feed=$matches[1]";s:36:"servicio/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=servicio&feed=$matches[1]";s:28:"servicio/page/([0-9]{1,})/?$";s:46:"index.php?post_type=servicio&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"banner-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?banner_category=$matches[1]&feed=$matches[2]";s:51:"banner-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?banner_category=$matches[1]&feed=$matches[2]";s:32:"banner-category/([^/]+)/embed/?$";s:48:"index.php?banner_category=$matches[1]&embed=true";s:44:"banner-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?banner_category=$matches[1]&paged=$matches[2]";s:26:"banner-category/([^/]+)/?$";s:37:"index.php?banner_category=$matches[1]";s:34:"banner/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"banner/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"banner/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"banner/([^/]+)/embed/?$";s:39:"index.php?banner=$matches[1]&embed=true";s:27:"banner/([^/]+)/trackback/?$";s:33:"index.php?banner=$matches[1]&tb=1";s:47:"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:42:"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:35:"banner/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&paged=$matches[2]";s:42:"banner/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&cpage=$matches[2]";s:31:"banner/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?banner=$matches[1]&page=$matches[2]";s:23:"banner/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"banner/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"banner/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"servicio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"servicio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"servicio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"servicio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"servicio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"servicio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"servicio/([^/]+)/embed/?$";s:41:"index.php?servicio=$matches[1]&embed=true";s:29:"servicio/([^/]+)/trackback/?$";s:35:"index.php?servicio=$matches[1]&tb=1";s:49:"servicio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?servicio=$matches[1]&feed=$matches[2]";s:44:"servicio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?servicio=$matches[1]&feed=$matches[2]";s:37:"servicio/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?servicio=$matches[1]&paged=$matches[2]";s:44:"servicio/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?servicio=$matches[1]&cpage=$matches[2]";s:33:"servicio/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?servicio=$matches[1]&page=$matches[2]";s:25:"servicio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"servicio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"servicio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"servicio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"servicio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"servicio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:27:"autoptimize/autoptimize.php";i:1;s:31:"cache-enabler/cache-enabler.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:31:"live-admin-customzier/index.php";i:4;s:19:"optimus/optimus.php";i:5;s:35:"wp-media-folder/wp-media-folder.php";i:6;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'consolidatheme', 'yes'),
(41, 'stylesheet', 'consolidatheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";s:31:"cache-enabler/cache-enabler.php";a:2:{i:0;s:13:"Cache_Enabler";i:1;s:12:"on_uninstall";}s:19:"optimus/optimus.php";a:2:{i:0;s:7:"Optimus";i:1;s:21:"handle_uninstall_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_consolida_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:17:"pre-header-banner";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_consolida_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1480500810;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1480501057;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1480544034;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1480544257;a:1:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1480545136;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(141, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1480457773;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'current_theme', '', 'yes'),
(143, 'theme_mods_consolidatheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:3;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'autoptimize_version', '2.1.0', 'yes'),
(147, 'cache', 'a:0:{}', 'yes'),
(150, 'wpmf_use_taxonomy', '1', 'yes'),
(154, 'duplicate_post_copytitle', '1', 'yes'),
(155, 'duplicate_post_copydate', '', 'yes'),
(156, 'duplicate_post_copystatus', '', 'yes'),
(157, 'duplicate_post_copyslug', '1', 'yes'),
(158, 'duplicate_post_copyexcerpt', '1', 'yes'),
(159, 'duplicate_post_copycontent', '1', 'yes'),
(160, 'duplicate_post_copypassword', '', 'yes'),
(161, 'duplicate_post_copyattachments', '', 'yes'),
(162, 'duplicate_post_copychildren', '', 'yes'),
(163, 'duplicate_post_copycomments', '', 'yes'),
(164, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(165, 'duplicate_post_blacklist', '', 'yes'),
(166, 'duplicate_post_types_enabled', 'a:4:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:6:"banner";i:3;s:8:"servicio";}', 'yes'),
(167, 'duplicate_post_show_row', '1', 'yes'),
(168, 'duplicate_post_show_adminbar', '1', 'yes'),
(169, 'duplicate_post_show_submitbox', '1', 'yes'),
(171, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(172, 'wpmf_padding_masonry', '5', 'yes'),
(173, 'wpmf_padding_portfolio', '10', 'yes'),
(174, 'wpmf_usegellery', '1', 'yes'),
(175, 'wpmf_useorder', '1', 'yes'),
(176, 'wpmf_folder_option1', '0', 'yes'),
(177, 'wpmf_option_override', '0', 'yes'),
(178, 'wpmf_active_media', '0', 'yes'),
(179, 'wpmf_folder_option2', '1', 'yes'),
(180, 'wpmf_option_searchall', '0', 'yes'),
(181, 'wpmf_usegellery_lightbox', '1', 'yes'),
(182, 'wpmf_media_rename', '0', 'yes'),
(183, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(184, 'wpmf_rename_number', '0', 'yes'),
(185, 'wpmf_option_media_remove', '0', 'yes'),
(186, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(187, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(188, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(189, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(190, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(191, 'wpmf_option_singlefile', '0', 'yes'),
(192, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1480457860;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.5";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.5";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(194, '_wpmf_import_notice_flag', 'no', 'yes'),
(237, 'wpmf-category_children', 'a:0:{}', 'yes'),
(255, 'duplicate_post_title_prefix', '', 'yes'),
(256, 'duplicate_post_title_suffix', '', 'yes'),
(257, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(258, 'duplicate_post_roles', 'a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}', 'yes'),
(280, 'pretelli_custom_settings', 'a:4:{s:13:"red_social_fb";s:44:"https://www.facebook.com/theloremipsumstore/";s:18:"red_social_twitter";s:44:"https://www.facebook.com/theloremipsumstore/";s:16:"red_social_gmail";s:44:"https://www.facebook.com/theloremipsumstore/";s:16:"red_social_ytube";s:44:"https://www.facebook.com/theloremipsumstore/";}', 'yes'),
(331, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(348, 'duplicate_post_version', '3.0.3', 'no') ;

#
# End of data contents of table `wp_consolida_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_postmeta`
#

DROP TABLE IF EXISTS `wp_consolida_postmeta`;


#
# Table structure of table `wp_consolida_postmeta`
#

CREATE TABLE `wp_consolida_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_postmeta`
#
INSERT INTO `wp_consolida_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1480458661:1'),
(4, 5, '_wp_attached_file', '2016/11/baner1.jpg'),
(5, 5, 'wpmf_size', '161076'),
(6, 5, 'wpmf_filetype', 'jpg'),
(7, 5, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:737;s:4:"file";s:18:"2016/11/baner1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"baner1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"baner1-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"baner1-768x295.jpg";s:5:"width";i:768;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"baner1-1024x393.jpg";s:5:"width";i:1024;s:6:"height";i:393;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"baner1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:18:"baner1-784x301.jpg";s:5:"width";i:784;s:6:"height";i:301;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"6";s:8:"quantity";d:86;s:4:"webp";i:0;}}'),
(8, 4, '_thumbnail_id', '5'),
(9, 6, '_thumbnail_id', '5'),
(10, 6, '_dp_original', '4'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1480458826:1'),
(13, 2, '_wp_trash_meta_status', 'publish'),
(14, 2, '_wp_trash_meta_time', '1480459070'),
(15, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(16, 8, '_edit_last', '1'),
(17, 8, '_wp_page_template', 'default'),
(18, 8, '_edit_lock', '1480458941:1'),
(19, 10, '_edit_last', '1'),
(20, 10, '_edit_lock', '1480458956:1'),
(21, 10, '_wp_page_template', 'page-templates/page-nosotros.php'),
(22, 12, '_edit_last', '1'),
(23, 12, '_wp_page_template', 'default'),
(24, 12, '_edit_lock', '1480458967:1'),
(25, 14, '_edit_last', '1'),
(26, 14, '_edit_lock', '1480458985:1'),
(27, 14, '_wp_page_template', 'default'),
(28, 16, '_edit_last', '1'),
(29, 16, '_edit_lock', '1480459001:1'),
(30, 16, '_wp_page_template', 'page-templates/page-blog.php'),
(31, 19, '_edit_last', '1'),
(32, 19, '_edit_lock', '1480459031:1'),
(33, 19, '_wp_page_template', 'page-templates/page-contacto.php'),
(34, 21, '_menu_item_type', 'custom'),
(35, 21, '_menu_item_menu_item_parent', '0'),
(36, 21, '_menu_item_object_id', '21'),
(37, 21, '_menu_item_object', 'custom'),
(38, 21, '_menu_item_target', ''),
(39, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 21, '_menu_item_xfn', ''),
(41, 21, '_menu_item_url', 'http://localhost/consolida/'),
(43, 22, '_menu_item_type', 'post_type'),
(44, 22, '_menu_item_menu_item_parent', '0'),
(45, 22, '_menu_item_object_id', '19'),
(46, 22, '_menu_item_object', 'page'),
(47, 22, '_menu_item_target', ''),
(48, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 22, '_menu_item_xfn', ''),
(50, 22, '_menu_item_url', ''),
(52, 23, '_menu_item_type', 'post_type'),
(53, 23, '_menu_item_menu_item_parent', '0'),
(54, 23, '_menu_item_object_id', '14'),
(55, 23, '_menu_item_object', 'page'),
(56, 23, '_menu_item_target', ''),
(57, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 23, '_menu_item_xfn', ''),
(59, 23, '_menu_item_url', ''),
(61, 24, '_menu_item_type', 'post_type'),
(62, 24, '_menu_item_menu_item_parent', '0'),
(63, 24, '_menu_item_object_id', '8'),
(64, 24, '_menu_item_object', 'page'),
(65, 24, '_menu_item_target', ''),
(66, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 24, '_menu_item_xfn', ''),
(68, 24, '_menu_item_url', ''),
(69, 24, '_menu_item_orphaned', '1480459178'),
(70, 25, '_menu_item_type', 'post_type'),
(71, 25, '_menu_item_menu_item_parent', '0'),
(72, 25, '_menu_item_object_id', '10'),
(73, 25, '_menu_item_object', 'page'),
(74, 25, '_menu_item_target', ''),
(75, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 25, '_menu_item_xfn', ''),
(77, 25, '_menu_item_url', ''),
(79, 26, '_menu_item_type', 'post_type'),
(80, 26, '_menu_item_menu_item_parent', '0'),
(81, 26, '_menu_item_object_id', '16'),
(82, 26, '_menu_item_object', 'page'),
(83, 26, '_menu_item_target', ''),
(84, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 26, '_menu_item_xfn', ''),
(86, 26, '_menu_item_url', ''),
(88, 27, '_menu_item_type', 'post_type'),
(89, 27, '_menu_item_menu_item_parent', '0'),
(90, 27, '_menu_item_object_id', '12'),
(91, 27, '_menu_item_object', 'page'),
(92, 27, '_menu_item_target', ''),
(93, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 27, '_menu_item_xfn', ''),
(95, 27, '_menu_item_url', ''),
(97, 28, '_menu_item_type', 'custom'),
(98, 28, '_menu_item_menu_item_parent', '0'),
(99, 28, '_menu_item_object_id', '28'),
(100, 28, '_menu_item_object', 'custom'),
(101, 28, '_menu_item_target', ''),
(102, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 28, '_menu_item_xfn', ''),
(104, 28, '_menu_item_url', '#') ;

#
# End of data contents of table `wp_consolida_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_posts`
#

DROP TABLE IF EXISTS `wp_consolida_posts`;


#
# Table structure of table `wp_consolida_posts`
#

CREATE TABLE `wp_consolida_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_posts`
#
INSERT INTO `wp_consolida_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-29 22:13:29', '2016-11-29 22:13:29', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-11-29 22:13:29', '2016-11-29 22:13:29', '', 0, 'http://localhost/consolida/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-29 22:13:29', '2016-11-29 22:13:29', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/consolida/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-11-29 22:37:50', '2016-11-29 22:37:50', '', 0, 'http://localhost/consolida/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-29 22:13:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-29 22:13:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/consolida/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-29 22:33:18', '2016-11-29 22:33:18', '', 'Gestión Empresarial', '', 'publish', 'closed', 'closed', '', 'gestion-empresarial', '', '', '2016-11-29 22:33:18', '2016-11-29 22:33:18', '', 0, 'http://localhost/consolida/?post_type=banner&#038;p=4', 0, 'banner', '', 0),
(5, 1, '2016-11-29 22:32:54', '2016-11-29 22:32:54', '', 'baner1', '', 'inherit', 'open', 'closed', '', 'baner1', '', '', '2016-11-29 22:32:54', '2016-11-29 22:32:54', '', 4, 'http://localhost/consolida/wp-content/uploads/2016/11/baner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-11-29 22:33:39', '2016-11-29 22:33:39', '', 'Gestión Empresarial 2', '', 'publish', 'closed', 'closed', '', 'gestion-empresarial-2', '', '', '2016-11-29 22:33:46', '2016-11-29 22:33:46', '', 0, 'http://localhost/consolida/?post_type=banner&#038;p=6', 0, 'banner', '', 0),
(7, 1, '2016-11-29 22:37:50', '2016-11-29 22:37:50', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/consolida/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-11-29 22:37:50', '2016-11-29 22:37:50', '', 2, 'http://localhost/consolida/2016/11/29/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-11-29 22:38:02', '2016-11-29 22:38:02', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-11-29 22:38:02', '2016-11-29 22:38:02', '', 0, 'http://localhost/consolida/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-29 22:38:02', '2016-11-29 22:38:02', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-29 22:38:02', '2016-11-29 22:38:02', '', 8, 'http://localhost/consolida/2016/11/29/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-11-29 22:38:16', '2016-11-29 22:38:16', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-11-29 22:38:16', '2016-11-29 22:38:16', '', 0, 'http://localhost/consolida/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-11-29 22:38:16', '2016-11-29 22:38:16', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-11-29 22:38:16', '2016-11-29 22:38:16', '', 10, 'http://localhost/consolida/2016/11/29/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-11-29 22:38:26', '2016-11-29 22:38:26', '', 'Paquetes', '', 'publish', 'closed', 'closed', '', 'paquetes', '', '', '2016-11-29 22:38:26', '2016-11-29 22:38:26', '', 0, 'http://localhost/consolida/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-11-29 22:38:26', '2016-11-29 22:38:26', '', 'Paquetes', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-11-29 22:38:26', '2016-11-29 22:38:26', '', 12, 'http://localhost/consolida/2016/11/29/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-11-29 22:38:45', '2016-11-29 22:38:45', '', 'Enláces de Interés', '', 'publish', 'closed', 'closed', '', 'enlaces-de-interes', '', '', '2016-11-29 22:38:45', '2016-11-29 22:38:45', '', 0, 'http://localhost/consolida/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-11-29 22:38:45', '2016-11-29 22:38:45', '', 'Enláces de Interés', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-29 22:38:45', '2016-11-29 22:38:45', '', 14, 'http://localhost/consolida/2016/11/29/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-29 22:39:01', '2016-11-29 22:39:01', '', 'Noticias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2016-11-29 22:39:01', '2016-11-29 22:39:01', '', 0, 'http://localhost/consolida/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-11-29 22:39:01', '2016-11-29 22:39:01', '', 'Noticias', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-11-29 22:39:01', '2016-11-29 22:39:01', '', 16, 'http://localhost/consolida/2016/11/29/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-11-29 22:39:05', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-29 22:39:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/consolida/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-11-29 22:39:13', '2016-11-29 22:39:13', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-11-29 22:39:13', '2016-11-29 22:39:13', '', 0, 'http://localhost/consolida/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-11-29 22:39:13', '2016-11-29 22:39:13', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-11-29 22:39:13', '2016-11-29 22:39:13', '', 19, 'http://localhost/consolida/2016/11/29/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-11-29 22:40:18', '2016-11-29 22:40:18', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-11-29 22:40:19', '2016-11-29 22:40:19', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=22', 7, 'nav_menu_item', '', 0),
(23, 1, '2016-11-29 22:40:19', '2016-11-29 22:40:19', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2016-11-29 22:39:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-29 22:39:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/consolida/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-11-29 22:40:18', '2016-11-29 22:40:18', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2016-11-29 22:40:19', '2016-11-29 22:40:19', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2016-11-29 22:40:19', '2016-11-29 22:40:19', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2016-11-29 22:40:19', '2016-11-29 22:40:19', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-11-29 22:40:28', '2016-11-29 22:40:28', '', 0, 'http://localhost/consolida/?p=28', 4, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_consolida_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_term_relationships`
#

DROP TABLE IF EXISTS `wp_consolida_term_relationships`;


#
# Table structure of table `wp_consolida_term_relationships`
#

CREATE TABLE `wp_consolida_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_term_relationships`
#
INSERT INTO `wp_consolida_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0) ;

#
# End of data contents of table `wp_consolida_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_consolida_term_taxonomy`;


#
# Table structure of table `wp_consolida_term_taxonomy`
#

CREATE TABLE `wp_consolida_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_term_taxonomy`
#
INSERT INTO `wp_consolida_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wpmf-category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 7) ;

#
# End of data contents of table `wp_consolida_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_termmeta`
#

DROP TABLE IF EXISTS `wp_consolida_termmeta`;


#
# Table structure of table `wp_consolida_termmeta`
#

CREATE TABLE `wp_consolida_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_termmeta`
#

#
# End of data contents of table `wp_consolida_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_terms`
#

DROP TABLE IF EXISTS `wp_consolida_terms`;


#
# Table structure of table `wp_consolida_terms`
#

CREATE TABLE `wp_consolida_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_terms`
#
INSERT INTO `wp_consolida_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'SLIDER HOME / CAROUSEL INICIO', 'slider-home-carousel-inicio', 1),
(3, 'Main Menú', 'main-menu', 0) ;

#
# End of data contents of table `wp_consolida_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_usermeta`
#

DROP TABLE IF EXISTS `wp_consolida_usermeta`;


#
# Table structure of table `wp_consolida_usermeta`
#

CREATE TABLE `wp_consolida_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_usermeta`
#
INSERT INTO `wp_consolida_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'consolida'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_consolida_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_consolida_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_consolida_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'session_tokens', 'a:1:{s:64:"81ee49678ac5048233040e28e2c3188dc31e628d97b5f8f2c2ada64c163522c2";a:4:{s:10:"expiration";i:1480631344;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1480458544;}}'),
(17, 1, 'meta-box-order_banner', 'a:3:{s:4:"side";s:55:"submitdiv,postimagediv,banner_categorydiv,pageparentdiv";s:6:"normal";s:30:"postexcerpt,postcustom,slugdiv";s:8:"advanced";s:0:"";}'),
(18, 1, 'screen_layout_banner', '2'),
(19, 1, 'wp_consolida_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_consolida_user-settings-time', '1480458794'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:20:"add-post-type-banner";i:1;s:22:"add-post-type-servicio";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:19:"add-banner_category";}') ;

#
# End of data contents of table `wp_consolida_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_consolida_users`
#

DROP TABLE IF EXISTS `wp_consolida_users`;


#
# Table structure of table `wp_consolida_users`
#

CREATE TABLE `wp_consolida_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_consolida_users`
#
INSERT INTO `wp_consolida_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BT9CKFKfE.d0ZUlfizYyZV4.GJKJQ91', 'admin', 'jgomez@ingenioart.com', '', '2016-11-29 22:13:28', '', 0, 'admin') ;

#
# End of data contents of table `wp_consolida_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

