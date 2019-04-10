/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : pure

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 10/04/2019 19:16:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `pp_access_tokens`;
CREATE TABLE `pp_access_tokens`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_api_keys
-- ----------------------------
DROP TABLE IF EXISTS `pp_api_keys`;
CREATE TABLE `pp_api_keys`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_auth_tokens
-- ----------------------------
DROP TABLE IF EXISTS `pp_auth_tokens`;
CREATE TABLE `pp_auth_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_discussions
-- ----------------------------
DROP TABLE IF EXISTS `pp_discussions`;
CREATE TABLE `pp_discussions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `participants_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime(0) NOT NULL,
  `start_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `start_post_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_time` datetime(0) NULL DEFAULT NULL,
  `last_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED NULL DEFAULT NULL,
  `hide_time` datetime(0) NULL DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `best_answer_post_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `is_sticky` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_discussions_tags
-- ----------------------------
DROP TABLE IF EXISTS `pp_discussions_tags`;
CREATE TABLE `pp_discussions_tags`  (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`discussion_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_email_tokens
-- ----------------------------
DROP TABLE IF EXISTS `pp_email_tokens`;
CREATE TABLE `pp_email_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_flags
-- ----------------------------
DROP TABLE IF EXISTS `pp_flags`;
CREATE TABLE `pp_flags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reason_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_groups
-- ----------------------------
DROP TABLE IF EXISTS `pp_groups`;
CREATE TABLE `pp_groups`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_groups
-- ----------------------------
INSERT INTO `pp_groups` VALUES (1, 'Admin', 'Admins', '#B72A2A', 'wrench');
INSERT INTO `pp_groups` VALUES (2, 'Guest', 'Guests', NULL, NULL);
INSERT INTO `pp_groups` VALUES (3, 'Member', 'Members', NULL, NULL);
INSERT INTO `pp_groups` VALUES (4, 'Mod', 'Mods', '#80349E', 'bolt');

-- ----------------------------
-- Table structure for pp_links
-- ----------------------------
DROP TABLE IF EXISTS `pp_links`;
CREATE TABLE `pp_links`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_newtab` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_mentions_posts
-- ----------------------------
DROP TABLE IF EXISTS `pp_mentions_posts`;
CREATE TABLE `pp_mentions_posts`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `mentions_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_mentions_users
-- ----------------------------
DROP TABLE IF EXISTS `pp_mentions_users`;
CREATE TABLE `pp_mentions_users`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `mentions_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_migrations
-- ----------------------------
DROP TABLE IF EXISTS `pp_migrations`;
CREATE TABLE `pp_migrations`  (
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_migrations
-- ----------------------------
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_access_tokens_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_api_keys_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_config_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_discussions_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_email_tokens_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_groups_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_notifications_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_password_tokens_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_permissions_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_posts_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_users_discussions_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_users_groups_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_users_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_09_15_000000_create_auth_tokens_table', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_09_20_224327_add_hide_to_discussions', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_09_22_030432_rename_notification_read_time', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_10_07_130531_rename_config_to_settings', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_10_24_194000_add_ip_address_to_posts', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_12_05_042721_change_access_tokens_columns', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_12_17_194247_change_settings_value_column_to_text', NULL);
INSERT INTO `pp_migrations` VALUES ('2016_02_04_095452_add_slug_to_discussions', NULL);
INSERT INTO `pp_migrations` VALUES ('2017_04_07_114138_add_is_private_to_discussions', NULL);
INSERT INTO `pp_migrations` VALUES ('2017_04_07_114138_add_is_private_to_posts', NULL);
INSERT INTO `pp_migrations` VALUES ('2017_04_09_152230_change_posts_content_column_to_mediumtext', NULL);
INSERT INTO `pp_migrations` VALUES ('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval');
INSERT INTO `pp_migrations` VALUES ('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-approval');
INSERT INTO `pp_migrations` VALUES ('2016_10_06_203438_add_default_best_answer_permissions', 'wiwatsrt-best-answer');
INSERT INTO `pp_migrations` VALUES ('2016_10_07_202338_add_best_answer_post_id_to_discussions_table', 'wiwatsrt-best-answer');
INSERT INTO `pp_migrations` VALUES ('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags');
INSERT INTO `pp_migrations` VALUES ('2015_09_02_000000_create_flags_table', 'flarum-flags');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-flags');
INSERT INTO `pp_migrations` VALUES ('2015_05_11_000000_create_posts_likes_table', 'flarum-likes');
INSERT INTO `pp_migrations` VALUES ('2015_09_04_000000_add_default_like_permissions', 'flarum-likes');
INSERT INTO `pp_migrations` VALUES ('2016_02_13_000000_create_links_table', 'sijad-links');
INSERT INTO `pp_migrations` VALUES ('2016_04_19_065618_change_links_columns', 'sijad-links');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-lock');
INSERT INTO `pp_migrations` VALUES ('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions');
INSERT INTO `pp_migrations` VALUES ('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions');
INSERT INTO `pp_migrations` VALUES ('2016_04_11_182821__create_pages_table', 'sijad-pages');
INSERT INTO `pp_migrations` VALUES ('2016_08_28_180020_add_is_html', 'sijad-pages');
INSERT INTO `pp_migrations` VALUES ('2016_01_14_000000_create_socialbuttons_table', 'davis-socialprofile');
INSERT INTO `pp_migrations` VALUES ('2016_10_20_000000_create_socialbuttons_column', 'davis-socialprofile');
INSERT INTO `pp_migrations` VALUES ('2016_10_21_000000_migrate_data_to_user_column', 'davis-socialprofile');
INSERT INTO `pp_migrations` VALUES ('2016_10_22_000000_drop_socialbuttons_table', 'davis-socialprofile');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-sticky');
INSERT INTO `pp_migrations` VALUES ('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions');
INSERT INTO `pp_migrations` VALUES ('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend');
INSERT INTO `pp_migrations` VALUES ('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-suspend');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_tags_table', 'flarum-tags');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_create_users_tags_table', 'flarum-tags');
INSERT INTO `pp_migrations` VALUES ('2015_02_24_000000_set_default_settings', 'flarum-tags');
INSERT INTO `pp_migrations` VALUES ('2015_10_19_061223_make_slug_unique', 'flarum-tags');
INSERT INTO `pp_migrations` VALUES ('2017_07_22_000000_add_default_permissions', 'flarum-tags');

-- ----------------------------
-- Table structure for pp_notifications
-- ----------------------------
DROP TABLE IF EXISTS `pp_notifications`;
CREATE TABLE `pp_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `data` blob NULL,
  `time` datetime(0) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_pages
-- ----------------------------
DROP TABLE IF EXISTS `pp_pages`;
CREATE TABLE `pp_pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `edit_time` datetime(0) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `is_html` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_password_tokens
-- ----------------------------
DROP TABLE IF EXISTS `pp_password_tokens`;
CREATE TABLE `pp_password_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_permissions
-- ----------------------------
DROP TABLE IF EXISTS `pp_permissions`;
CREATE TABLE `pp_permissions`  (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`, `permission`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_permissions
-- ----------------------------
INSERT INTO `pp_permissions` VALUES (2, 'viewDiscussions');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.flagPosts');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.likePosts');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.reply');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.replyWithoutApproval');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.selectBestAnswer');
INSERT INTO `pp_permissions` VALUES (3, 'discussion.startWithoutApproval');
INSERT INTO `pp_permissions` VALUES (3, 'startDiscussion');
INSERT INTO `pp_permissions` VALUES (3, 'viewUserList');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.approvePosts');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.editPosts');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.hide');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.lock');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.rename');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.sticky');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.tag');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.viewFlags');
INSERT INTO `pp_permissions` VALUES (4, 'discussion.viewIpsPosts');
INSERT INTO `pp_permissions` VALUES (4, 'user.suspend');

-- ----------------------------
-- Table structure for pp_posts
-- ----------------------------
DROP TABLE IF EXISTS `pp_posts`;
CREATE TABLE `pp_posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NULL DEFAULT NULL,
  `time` datetime(0) NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `edit_time` datetime(0) NULL DEFAULT NULL,
  `edit_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `hide_time` datetime(0) NULL DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_discussion_id_number_unique`(`discussion_id`, `number`) USING BTREE,
  FULLTEXT INDEX `content`(`content`)
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_posts_likes
-- ----------------------------
DROP TABLE IF EXISTS `pp_posts_likes`;
CREATE TABLE `pp_posts_likes`  (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_settings
-- ----------------------------
DROP TABLE IF EXISTS `pp_settings`;
CREATE TABLE `pp_settings`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_settings
-- ----------------------------
INSERT INTO `pp_settings` VALUES ('allow_post_editing', 'reply');
INSERT INTO `pp_settings` VALUES ('allow_renaming', '10');
INSERT INTO `pp_settings` VALUES ('allow_sign_up', '1');
INSERT INTO `pp_settings` VALUES ('custom_less', '');
INSERT INTO `pp_settings` VALUES ('default_locale', 'zh');
INSERT INTO `pp_settings` VALUES ('default_route', '/all');
INSERT INTO `pp_settings` VALUES ('extensions_enabled', '[\"flagrow-analytics\",\"flarum-approval\",\"flarum-bbcode\",\"wiwatsrt-best-answer\",\"flarumchina-simplified-chinese-pro\",\"sijad-details\",\"flarum-emoji\",\"clarkwinkelmann-emojionearea\",\"flarum-english\",\"flagrow-split\",\"flagrow-users-list\",\"flarum-flags\",\"flarum-likes\",\"sijad-links\",\"flarum-lock\",\"flarum-markdown\",\"ganuonglachanh-markdown-editor\",\"flarumchina-mediaembed-pro\",\"flarum-mentions\",\"sijad-pages\",\"terabin-sitemap\",\"davis-socialprofile\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"flarum-tags\"]');
INSERT INTO `pp_settings` VALUES ('flarum-tags.max_primary_tags', '1');
INSERT INTO `pp_settings` VALUES ('flarum-tags.max_secondary_tags', '3');
INSERT INTO `pp_settings` VALUES ('flarum-tags.min_primary_tags', '1');
INSERT INTO `pp_settings` VALUES ('flarum-tags.min_secondary_tags', '0');
INSERT INTO `pp_settings` VALUES ('forum_cdn', '//www.1024.com');
INSERT INTO `pp_settings` VALUES ('forum_description', '');
INSERT INTO `pp_settings` VALUES ('forum_meta', '<!--Meta代码-->');
INSERT INTO `pp_settings` VALUES ('forum_title', '1024纯净版');
INSERT INTO `pp_settings` VALUES ('mail_driver', 'mail');
INSERT INTO `pp_settings` VALUES ('mail_from', 'noreply@1024.com');
INSERT INTO `pp_settings` VALUES ('theme_colored_header', '0');
INSERT INTO `pp_settings` VALUES ('theme_dark_mode', '0');
INSERT INTO `pp_settings` VALUES ('theme_primary_color', '#4D698E');
INSERT INTO `pp_settings` VALUES ('theme_secondary_color', '#4D698E');
INSERT INTO `pp_settings` VALUES ('version', '0.1.0-beta.7C');
INSERT INTO `pp_settings` VALUES ('welcome_message', '你已经成功安装FlarumChina,遇到问题请访问<a href=\"https://bbs.flarumchina.org\">FlarunChina交流论坛</a>以获得帮助');
INSERT INTO `pp_settings` VALUES ('welcome_title', '欢迎来到 1024纯净版');

-- ----------------------------
-- Table structure for pp_tags
-- ----------------------------
DROP TABLE IF EXISTS `pp_tags`;
CREATE TABLE `pp_tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` int(11) NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `default_sort` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` datetime(0) NULL DEFAULT NULL,
  `last_discussion_id` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tags_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_tags
-- ----------------------------
INSERT INTO `pp_tags` VALUES (1, 'General', 'general', NULL, '#888', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for pp_users
-- ----------------------------
DROP TABLE IF EXISTS `pp_users`;
CREATE TABLE `pp_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `avatar_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `preferences` blob NULL,
  `join_time` datetime(0) NULL DEFAULT NULL,
  `last_seen_time` datetime(0) NULL DEFAULT NULL,
  `read_time` datetime(0) NULL DEFAULT NULL,
  `notifications_read_time` datetime(0) NULL DEFAULT NULL,
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags_read_time` datetime(0) NULL DEFAULT NULL,
  `social_buttons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `suspend_until` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_users
-- ----------------------------
INSERT INTO `pp_users` VALUES (1, 'admin', 'wangchenphp@sina.com', 1, '$2y$10$0Jh1USuGxFFqUyJMwXC48eQhL86YV9/xKlnfe1d9vCrnaZF52lnyu', NULL, NULL, NULL, '2019-04-10 11:15:39', '2019-04-10 11:15:51', NULL, NULL, 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pp_users_discussions
-- ----------------------------
DROP TABLE IF EXISTS `pp_users_discussions`;
CREATE TABLE `pp_users_discussions`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime(0) NULL DEFAULT NULL,
  `read_number` int(10) UNSIGNED NULL DEFAULT NULL,
  `subscription` enum('follow','ignore') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `discussion_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `pp_users_groups`;
CREATE TABLE `pp_users_groups`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_users_groups
-- ----------------------------
INSERT INTO `pp_users_groups` VALUES (1, 1);

-- ----------------------------
-- Table structure for pp_users_tags
-- ----------------------------
DROP TABLE IF EXISTS `pp_users_tags`;
CREATE TABLE `pp_users_tags`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime(0) NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
