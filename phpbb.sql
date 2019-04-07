/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : phpbb

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 07/04/2019 22:51:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bb_acl_groups
-- ----------------------------
DROP TABLE IF EXISTS `bb_acl_groups`;
CREATE TABLE `bb_acl_groups`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `auth_opt_id`(`auth_option_id`) USING BTREE,
  INDEX `auth_role_id`(`auth_role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_acl_groups
-- ----------------------------
INSERT INTO `bb_acl_groups` VALUES (1, 0, 91, 0, 1);
INSERT INTO `bb_acl_groups` VALUES (1, 0, 100, 0, 1);
INSERT INTO `bb_acl_groups` VALUES (1, 0, 118, 0, 1);
INSERT INTO `bb_acl_groups` VALUES (5, 0, 0, 5, 0);
INSERT INTO `bb_acl_groups` VALUES (5, 0, 0, 1, 0);
INSERT INTO `bb_acl_groups` VALUES (2, 0, 0, 6, 0);
INSERT INTO `bb_acl_groups` VALUES (3, 0, 0, 6, 0);
INSERT INTO `bb_acl_groups` VALUES (4, 0, 0, 5, 0);
INSERT INTO `bb_acl_groups` VALUES (4, 0, 0, 10, 0);
INSERT INTO `bb_acl_groups` VALUES (1, 1, 0, 17, 0);
INSERT INTO `bb_acl_groups` VALUES (2, 1, 0, 17, 0);
INSERT INTO `bb_acl_groups` VALUES (3, 1, 0, 17, 0);
INSERT INTO `bb_acl_groups` VALUES (6, 1, 0, 17, 0);
INSERT INTO `bb_acl_groups` VALUES (1, 2, 0, 17, 0);
INSERT INTO `bb_acl_groups` VALUES (2, 2, 0, 15, 0);
INSERT INTO `bb_acl_groups` VALUES (3, 2, 0, 15, 0);
INSERT INTO `bb_acl_groups` VALUES (4, 2, 0, 21, 0);
INSERT INTO `bb_acl_groups` VALUES (5, 2, 0, 14, 0);
INSERT INTO `bb_acl_groups` VALUES (5, 2, 0, 10, 0);
INSERT INTO `bb_acl_groups` VALUES (6, 2, 0, 19, 0);
INSERT INTO `bb_acl_groups` VALUES (7, 0, 0, 23, 0);
INSERT INTO `bb_acl_groups` VALUES (7, 2, 0, 24, 0);

-- ----------------------------
-- Table structure for bb_acl_options
-- ----------------------------
DROP TABLE IF EXISTS `bb_acl_options`;
CREATE TABLE `bb_acl_options`  (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`auth_option_id`) USING BTREE,
  UNIQUE INDEX `auth_option`(`auth_option`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_acl_options
-- ----------------------------
INSERT INTO `bb_acl_options` VALUES (1, 'f_', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (2, 'f_announce', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (3, 'f_announce_global', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (4, 'f_attach', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (5, 'f_bbcode', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (6, 'f_bump', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (7, 'f_delete', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (8, 'f_download', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (9, 'f_edit', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (10, 'f_email', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (11, 'f_flash', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (12, 'f_icons', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (13, 'f_ignoreflood', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (14, 'f_img', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (15, 'f_list', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (16, 'f_list_topics', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (17, 'f_noapprove', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (18, 'f_poll', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (19, 'f_post', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (20, 'f_postcount', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (21, 'f_print', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (22, 'f_read', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (23, 'f_reply', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (24, 'f_report', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (25, 'f_search', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (26, 'f_sigs', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (27, 'f_smilies', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (28, 'f_sticky', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (29, 'f_subscribe', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (30, 'f_user_lock', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (31, 'f_vote', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (32, 'f_votechg', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (33, 'f_softdelete', 0, 1, 0);
INSERT INTO `bb_acl_options` VALUES (34, 'm_', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (35, 'm_approve', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (36, 'm_chgposter', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (37, 'm_delete', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (38, 'm_edit', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (39, 'm_info', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (40, 'm_lock', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (41, 'm_merge', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (42, 'm_move', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (43, 'm_report', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (44, 'm_split', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (45, 'm_softdelete', 1, 1, 0);
INSERT INTO `bb_acl_options` VALUES (46, 'm_ban', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (47, 'm_pm_report', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (48, 'm_warn', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (49, 'a_', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (50, 'a_aauth', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (51, 'a_attach', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (52, 'a_authgroups', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (53, 'a_authusers', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (54, 'a_backup', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (55, 'a_ban', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (56, 'a_bbcode', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (57, 'a_board', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (58, 'a_bots', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (59, 'a_clearlogs', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (60, 'a_email', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (61, 'a_extensions', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (62, 'a_fauth', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (63, 'a_forum', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (64, 'a_forumadd', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (65, 'a_forumdel', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (66, 'a_group', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (67, 'a_groupadd', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (68, 'a_groupdel', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (69, 'a_icons', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (70, 'a_jabber', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (71, 'a_language', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (72, 'a_mauth', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (73, 'a_modules', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (74, 'a_names', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (75, 'a_phpinfo', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (76, 'a_profile', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (77, 'a_prune', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (78, 'a_ranks', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (79, 'a_reasons', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (80, 'a_roles', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (81, 'a_search', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (82, 'a_server', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (83, 'a_styles', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (84, 'a_switchperm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (85, 'a_uauth', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (86, 'a_user', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (87, 'a_userdel', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (88, 'a_viewauth', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (89, 'a_viewlogs', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (90, 'a_words', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (91, 'u_', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (92, 'u_attach', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (93, 'u_chgavatar', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (94, 'u_chgcensors', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (95, 'u_chgemail', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (96, 'u_chggrp', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (97, 'u_chgname', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (98, 'u_chgpasswd', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (99, 'u_chgprofileinfo', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (100, 'u_download', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (101, 'u_hideonline', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (102, 'u_ignoreflood', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (103, 'u_masspm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (104, 'u_masspm_group', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (105, 'u_pm_attach', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (106, 'u_pm_bbcode', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (107, 'u_pm_delete', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (108, 'u_pm_download', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (109, 'u_pm_edit', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (110, 'u_pm_emailpm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (111, 'u_pm_flash', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (112, 'u_pm_forward', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (113, 'u_pm_img', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (114, 'u_pm_printpm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (115, 'u_pm_smilies', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (116, 'u_readpm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (117, 'u_savedrafts', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (118, 'u_search', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (119, 'u_sendemail', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (120, 'u_sendim', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (121, 'u_sendpm', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (122, 'u_sig', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (123, 'u_viewonline', 1, 0, 0);
INSERT INTO `bb_acl_options` VALUES (124, 'u_viewprofile', 1, 0, 0);

-- ----------------------------
-- Table structure for bb_acl_roles
-- ----------------------------
DROP TABLE IF EXISTS `bb_acl_roles`;
CREATE TABLE `bb_acl_roles`  (
  `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_id`) USING BTREE,
  INDEX `role_type`(`role_type`) USING BTREE,
  INDEX `role_order`(`role_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_acl_roles
-- ----------------------------
INSERT INTO `bb_acl_roles` VALUES (1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1);
INSERT INTO `bb_acl_roles` VALUES (2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3);
INSERT INTO `bb_acl_roles` VALUES (3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4);
INSERT INTO `bb_acl_roles` VALUES (4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2);
INSERT INTO `bb_acl_roles` VALUES (5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3);
INSERT INTO `bb_acl_roles` VALUES (6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1);
INSERT INTO `bb_acl_roles` VALUES (7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2);
INSERT INTO `bb_acl_roles` VALUES (8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4);
INSERT INTO `bb_acl_roles` VALUES (9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5);
INSERT INTO `bb_acl_roles` VALUES (10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3);
INSERT INTO `bb_acl_roles` VALUES (11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1);
INSERT INTO `bb_acl_roles` VALUES (12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2);
INSERT INTO `bb_acl_roles` VALUES (13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4);
INSERT INTO `bb_acl_roles` VALUES (14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7);
INSERT INTO `bb_acl_roles` VALUES (15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5);
INSERT INTO `bb_acl_roles` VALUES (16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1);
INSERT INTO `bb_acl_roles` VALUES (17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2);
INSERT INTO `bb_acl_roles` VALUES (18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3);
INSERT INTO `bb_acl_roles` VALUES (19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9);
INSERT INTO `bb_acl_roles` VALUES (20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8);
INSERT INTO `bb_acl_roles` VALUES (21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6);
INSERT INTO `bb_acl_roles` VALUES (22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4);
INSERT INTO `bb_acl_roles` VALUES (23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6);
INSERT INTO `bb_acl_roles` VALUES (24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- ----------------------------
-- Table structure for bb_acl_roles_data
-- ----------------------------
DROP TABLE IF EXISTS `bb_acl_roles_data`;
CREATE TABLE `bb_acl_roles_data`  (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_id`, `auth_option_id`) USING BTREE,
  INDEX `ath_op_id`(`auth_option_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_acl_roles_data
-- ----------------------------
INSERT INTO `bb_acl_roles_data` VALUES (1, 49, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 51, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 52, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 53, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 55, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 56, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 57, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 61, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 62, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 63, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 64, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 65, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 66, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 67, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 68, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 69, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 72, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 74, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 76, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 77, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 78, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 79, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 85, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 86, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 87, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 88, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 89, 1);
INSERT INTO `bb_acl_roles_data` VALUES (1, 90, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 49, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 52, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 53, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 62, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 63, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 64, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 65, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 72, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 77, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 85, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 88, 1);
INSERT INTO `bb_acl_roles_data` VALUES (2, 89, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 49, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 52, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 53, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 55, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 66, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 67, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 68, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 78, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 85, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 86, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 88, 1);
INSERT INTO `bb_acl_roles_data` VALUES (3, 89, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 49, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 50, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 51, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 52, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 53, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 54, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 55, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 56, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 57, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 58, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 59, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 60, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 61, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 62, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 63, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 64, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 65, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 66, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 67, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 68, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 69, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 70, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 71, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 72, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 73, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 74, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 75, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 76, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 77, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 78, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 79, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 80, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 81, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 82, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 83, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 84, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 85, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 86, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 87, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 88, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 89, 1);
INSERT INTO `bb_acl_roles_data` VALUES (4, 90, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 91, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 92, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 93, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 94, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 95, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 96, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 97, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 98, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 99, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 100, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 101, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 102, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 103, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 104, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 105, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 106, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 107, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 108, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 109, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 110, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 111, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 112, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 113, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 114, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 115, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 116, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 117, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 118, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 119, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 120, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 121, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 122, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 123, 1);
INSERT INTO `bb_acl_roles_data` VALUES (5, 124, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 91, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 92, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 93, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 94, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 95, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 98, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 99, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 100, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 101, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 103, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 104, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 105, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 106, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 107, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 108, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 109, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 110, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 113, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 114, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 115, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 116, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 117, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 118, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 119, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 120, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 121, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 122, 1);
INSERT INTO `bb_acl_roles_data` VALUES (6, 124, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 91, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 93, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 94, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 95, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 98, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 99, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 100, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 101, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 106, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 107, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 108, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 109, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 112, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 113, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 114, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 115, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 116, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 121, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 122, 1);
INSERT INTO `bb_acl_roles_data` VALUES (7, 124, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 91, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 93, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 94, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 95, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 98, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 100, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 101, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 103, 0);
INSERT INTO `bb_acl_roles_data` VALUES (8, 104, 0);
INSERT INTO `bb_acl_roles_data` VALUES (8, 116, 0);
INSERT INTO `bb_acl_roles_data` VALUES (8, 121, 0);
INSERT INTO `bb_acl_roles_data` VALUES (8, 122, 1);
INSERT INTO `bb_acl_roles_data` VALUES (8, 124, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 91, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 93, 0);
INSERT INTO `bb_acl_roles_data` VALUES (9, 94, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 95, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 98, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 99, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 100, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 101, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 106, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 107, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 108, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 109, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 112, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 113, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 114, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 115, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 116, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 121, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 122, 1);
INSERT INTO `bb_acl_roles_data` VALUES (9, 124, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 34, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 35, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 36, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 37, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 38, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 39, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 40, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 41, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 42, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 43, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 44, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 45, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 46, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 47, 1);
INSERT INTO `bb_acl_roles_data` VALUES (10, 48, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 34, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 35, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 37, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 38, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 39, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 40, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 41, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 42, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 43, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 44, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 45, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 47, 1);
INSERT INTO `bb_acl_roles_data` VALUES (11, 48, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 34, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 37, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 38, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 39, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 43, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 45, 1);
INSERT INTO `bb_acl_roles_data` VALUES (12, 47, 1);
INSERT INTO `bb_acl_roles_data` VALUES (13, 34, 1);
INSERT INTO `bb_acl_roles_data` VALUES (13, 35, 1);
INSERT INTO `bb_acl_roles_data` VALUES (13, 38, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 2, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 3, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 4, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 6, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 7, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 11, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 12, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 13, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 17, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 18, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 28, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 30, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 32, 1);
INSERT INTO `bb_acl_roles_data` VALUES (14, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 4, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 6, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 7, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 12, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 17, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 32, 1);
INSERT INTO `bb_acl_roles_data` VALUES (15, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (16, 1, 0);
INSERT INTO `bb_acl_roles_data` VALUES (17, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (17, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 17, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (18, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (19, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 4, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 17, 0);
INSERT INTO `bb_acl_roles_data` VALUES (20, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (20, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 4, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 6, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 7, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 12, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 17, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 18, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 32, 1);
INSERT INTO `bb_acl_roles_data` VALUES (21, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 1, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 5, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 8, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 9, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 10, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 14, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 15, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 16, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 17, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 18, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 19, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 20, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 21, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 22, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 23, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 24, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 25, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 26, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 27, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 29, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 31, 1);
INSERT INTO `bb_acl_roles_data` VALUES (22, 33, 1);
INSERT INTO `bb_acl_roles_data` VALUES (23, 99, 0);
INSERT INTO `bb_acl_roles_data` VALUES (23, 103, 0);
INSERT INTO `bb_acl_roles_data` VALUES (23, 104, 0);
INSERT INTO `bb_acl_roles_data` VALUES (23, 121, 0);
INSERT INTO `bb_acl_roles_data` VALUES (24, 17, 0);

-- ----------------------------
-- Table structure for bb_acl_users
-- ----------------------------
DROP TABLE IF EXISTS `bb_acl_users`;
CREATE TABLE `bb_acl_users`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `auth_setting` tinyint(2) NOT NULL DEFAULT 0,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `auth_option_id`(`auth_option_id`) USING BTREE,
  INDEX `auth_role_id`(`auth_role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_acl_users
-- ----------------------------
INSERT INTO `bb_acl_users` VALUES (2, 0, 0, 5, 0);

-- ----------------------------
-- Table structure for bb_attachments
-- ----------------------------
DROP TABLE IF EXISTS `bb_attachments`;
CREATE TABLE `bb_attachments`  (
  `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `physical_filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `attach_comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`attach_id`) USING BTREE,
  INDEX `filetime`(`filetime`) USING BTREE,
  INDEX `post_msg_id`(`post_msg_id`) USING BTREE,
  INDEX `topic_id`(`topic_id`) USING BTREE,
  INDEX `poster_id`(`poster_id`) USING BTREE,
  INDEX `is_orphan`(`is_orphan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_banlist
-- ----------------------------
DROP TABLE IF EXISTS `bb_banlist`;
CREATE TABLE `bb_banlist`  (
  `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ban_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`) USING BTREE,
  INDEX `ban_end`(`ban_end`) USING BTREE,
  INDEX `ban_user`(`ban_userid`, `ban_exclude`) USING BTREE,
  INDEX `ban_email`(`ban_email`, `ban_exclude`) USING BTREE,
  INDEX `ban_ip`(`ban_ip`, `ban_exclude`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_bbcodes
-- ----------------------------
DROP TABLE IF EXISTS `bb_bbcodes`;
CREATE TABLE `bb_bbcodes`  (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_tag` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_match` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`) USING BTREE,
  INDEX `display_on_post`(`display_on_posting`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_bookmarks
-- ----------------------------
DROP TABLE IF EXISTS `bb_bookmarks`;
CREATE TABLE `bb_bookmarks`  (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_bots
-- ----------------------------
DROP TABLE IF EXISTS `bb_bots`;
CREATE TABLE `bb_bots`  (
  `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `bot_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bot_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`) USING BTREE,
  INDEX `bot_active`(`bot_active`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_bots
-- ----------------------------
INSERT INTO `bb_bots` VALUES (1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', '');
INSERT INTO `bb_bots` VALUES (2, 1, 'Alexa [Bot]', 4, 'ia_archiver', '');
INSERT INTO `bb_bots` VALUES (3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', '');
INSERT INTO `bb_bots` VALUES (4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', '');
INSERT INTO `bb_bots` VALUES (5, 1, 'Baidu [Spider]', 7, 'Baiduspider', '');
INSERT INTO `bb_bots` VALUES (6, 1, 'Bing [Bot]', 8, 'bingbot/', '');
INSERT INTO `bb_bots` VALUES (7, 1, 'Exabot [Bot]', 9, 'Exabot', '');
INSERT INTO `bb_bots` VALUES (8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', '');
INSERT INTO `bb_bots` VALUES (9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', '');
INSERT INTO `bb_bots` VALUES (10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', '');
INSERT INTO `bb_bots` VALUES (11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', '');
INSERT INTO `bb_bots` VALUES (12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', '');
INSERT INTO `bb_bots` VALUES (13, 1, 'Google Desktop', 15, 'Google Desktop', '');
INSERT INTO `bb_bots` VALUES (14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', '');
INSERT INTO `bb_bots` VALUES (15, 1, 'Google [Bot]', 17, 'Googlebot', '');
INSERT INTO `bb_bots` VALUES (16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', '');
INSERT INTO `bb_bots` VALUES (17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', '');
INSERT INTO `bb_bots` VALUES (18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', '');
INSERT INTO `bb_bots` VALUES (19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', '');
INSERT INTO `bb_bots` VALUES (20, 1, 'ichiro [Crawler]', 22, 'ichiro/', '');
INSERT INTO `bb_bots` VALUES (21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', '');
INSERT INTO `bb_bots` VALUES (22, 1, 'Metager [Bot]', 24, 'MetagerBot/', '');
INSERT INTO `bb_bots` VALUES (23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', '');
INSERT INTO `bb_bots` VALUES (24, 1, 'MSN [Bot]', 26, 'msnbot/', '');
INSERT INTO `bb_bots` VALUES (25, 1, 'MSNbot Media', 27, 'msnbot-media/', '');
INSERT INTO `bb_bots` VALUES (26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', '');
INSERT INTO `bb_bots` VALUES (27, 1, 'Online link [Validator]', 29, 'online link validator', '');
INSERT INTO `bb_bots` VALUES (28, 1, 'psbot [Picsearch]', 30, 'psbot/0', '');
INSERT INTO `bb_bots` VALUES (29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', '');
INSERT INTO `bb_bots` VALUES (30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', '');
INSERT INTO `bb_bots` VALUES (31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', '');
INSERT INTO `bb_bots` VALUES (32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', '');
INSERT INTO `bb_bots` VALUES (33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', '');
INSERT INTO `bb_bots` VALUES (34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', '');
INSERT INTO `bb_bots` VALUES (35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', '');
INSERT INTO `bb_bots` VALUES (36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', '');
INSERT INTO `bb_bots` VALUES (37, 1, 'Voyager [Bot]', 39, 'voyager/', '');
INSERT INTO `bb_bots` VALUES (38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', '');
INSERT INTO `bb_bots` VALUES (39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', '');
INSERT INTO `bb_bots` VALUES (40, 1, 'W3C [Validator]', 42, 'W3C_Validator', '');
INSERT INTO `bb_bots` VALUES (41, 1, 'YaCy [Bot]', 43, 'yacybot', '');
INSERT INTO `bb_bots` VALUES (42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', '');
INSERT INTO `bb_bots` VALUES (43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', '');
INSERT INTO `bb_bots` VALUES (44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', '');
INSERT INTO `bb_bots` VALUES (45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- ----------------------------
-- Table structure for bb_config
-- ----------------------------
DROP TABLE IF EXISTS `bb_config`;
CREATE TABLE `bb_config`  (
  `config_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`config_name`) USING BTREE,
  INDEX `is_dynamic`(`is_dynamic`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_config
-- ----------------------------
INSERT INTO `bb_config` VALUES ('active_sessions', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_attachments', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_autologin', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar_gravatar', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar_local', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar_remote', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar_remote_upload', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_avatar_upload', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_bbcode', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_birthdays', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_board_notifications', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_bookmarks', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_cdn', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_emailreuse', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_forum_notify', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_live_searches', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_mass_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_name_chars', 'USERNAME_CHARS_ANY', 0);
INSERT INTO `bb_config` VALUES ('allow_namechange', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_nocensors', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_password_reset', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_pm_attach', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_pm_report', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_post_flash', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_post_links', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_privmsg', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_quick_reply', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_bbcode', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_flash', '0', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_img', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_links', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_sig_smilies', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_smilies', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_topic_notify', '1', 0);
INSERT INTO `bb_config` VALUES ('allow_viglink_phpbb', '1', 0);
INSERT INTO `bb_config` VALUES ('allowed_schemes_links', 'http,https,ftp', 0);
INSERT INTO `bb_config` VALUES ('assets_version', '2', 0);
INSERT INTO `bb_config` VALUES ('attachment_quota', '52428800', 0);
INSERT INTO `bb_config` VALUES ('auth_bbcode_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('auth_flash_pm', '0', 0);
INSERT INTO `bb_config` VALUES ('auth_img_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('auth_method', 'db', 0);
INSERT INTO `bb_config` VALUES ('auth_smilies_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('avatar_filesize', '6144', 0);
INSERT INTO `bb_config` VALUES ('avatar_gallery_path', 'images/avatars/gallery', 0);
INSERT INTO `bb_config` VALUES ('avatar_max_height', '90', 0);
INSERT INTO `bb_config` VALUES ('avatar_max_width', '90', 0);
INSERT INTO `bb_config` VALUES ('avatar_min_height', '20', 0);
INSERT INTO `bb_config` VALUES ('avatar_min_width', '20', 0);
INSERT INTO `bb_config` VALUES ('avatar_path', 'images/avatars/upload', 0);
INSERT INTO `bb_config` VALUES ('avatar_salt', 'b6a1548a84e866441b704ae9d786fa0a', 0);
INSERT INTO `bb_config` VALUES ('board_contact', 'wangchenphp@sina.com', 0);
INSERT INTO `bb_config` VALUES ('board_contact_name', '', 0);
INSERT INTO `bb_config` VALUES ('board_disable', '0', 0);
INSERT INTO `bb_config` VALUES ('board_disable_msg', '', 0);
INSERT INTO `bb_config` VALUES ('board_email', 'wangchenphp@sina.com', 0);
INSERT INTO `bb_config` VALUES ('board_email_form', '0', 0);
INSERT INTO `bb_config` VALUES ('board_email_sig', '非常感谢，论坛管理团队', 0);
INSERT INTO `bb_config` VALUES ('board_hide_emails', '1', 0);
INSERT INTO `bb_config` VALUES ('board_index_text', '', 0);
INSERT INTO `bb_config` VALUES ('board_startdate', '1554647964', 0);
INSERT INTO `bb_config` VALUES ('board_timezone', 'UTC', 0);
INSERT INTO `bb_config` VALUES ('browser_check', '1', 0);
INSERT INTO `bb_config` VALUES ('bump_interval', '10', 0);
INSERT INTO `bb_config` VALUES ('bump_type', 'd', 0);
INSERT INTO `bb_config` VALUES ('cache_gc', '7200', 0);
INSERT INTO `bb_config` VALUES ('cache_last_gc', '1554648508', 1);
INSERT INTO `bb_config` VALUES ('captcha_gd', '1', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_3d_noise', '1', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_fonts', '1', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_foreground_noise', '0', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_wave', '0', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_x_grid', '25', 0);
INSERT INTO `bb_config` VALUES ('captcha_gd_y_grid', '25', 0);
INSERT INTO `bb_config` VALUES ('captcha_plugin', 'core.captcha.plugins.gd', 0);
INSERT INTO `bb_config` VALUES ('check_attachment_content', '1', 0);
INSERT INTO `bb_config` VALUES ('check_dnsbl', '0', 0);
INSERT INTO `bb_config` VALUES ('chg_passforce', '0', 0);
INSERT INTO `bb_config` VALUES ('confirm_refresh', '1', 0);
INSERT INTO `bb_config` VALUES ('contact_admin_form_enable', '1', 0);
INSERT INTO `bb_config` VALUES ('cookie_domain', 'localhost', 0);
INSERT INTO `bb_config` VALUES ('cookie_name', 'phpbb3_m5ik6', 0);
INSERT INTO `bb_config` VALUES ('cookie_path', '/', 0);
INSERT INTO `bb_config` VALUES ('cookie_secure', '', 0);
INSERT INTO `bb_config` VALUES ('coppa_enable', '0', 0);
INSERT INTO `bb_config` VALUES ('coppa_fax', '', 0);
INSERT INTO `bb_config` VALUES ('coppa_mail', '', 0);
INSERT INTO `bb_config` VALUES ('cron_lock', '0', 1);
INSERT INTO `bb_config` VALUES ('database_gc', '604800', 0);
INSERT INTO `bb_config` VALUES ('database_last_gc', '1554648495', 1);
INSERT INTO `bb_config` VALUES ('dbms_version', '5.7.22-log', 0);
INSERT INTO `bb_config` VALUES ('default_dateformat', '|Y年 M j日| H:i', 0);
INSERT INTO `bb_config` VALUES ('default_lang', 'zh_cmn_hans', 0);
INSERT INTO `bb_config` VALUES ('default_style', '2', 0);
INSERT INTO `bb_config` VALUES ('delete_time', '0', 0);
INSERT INTO `bb_config` VALUES ('display_last_edited', '1', 0);
INSERT INTO `bb_config` VALUES ('display_last_subject', '1', 0);
INSERT INTO `bb_config` VALUES ('display_order', '0', 0);
INSERT INTO `bb_config` VALUES ('edit_time', '0', 0);
INSERT INTO `bb_config` VALUES ('email_check_mx', '1', 0);
INSERT INTO `bb_config` VALUES ('email_enable', '1', 0);
INSERT INTO `bb_config` VALUES ('email_force_sender', '0', 0);
INSERT INTO `bb_config` VALUES ('email_max_chunk_size', '50', 0);
INSERT INTO `bb_config` VALUES ('email_package_size', '20', 0);
INSERT INTO `bb_config` VALUES ('enable_accurate_pm_button', '1', 0);
INSERT INTO `bb_config` VALUES ('enable_confirm', '1', 0);
INSERT INTO `bb_config` VALUES ('enable_mod_rewrite', '0', 0);
INSERT INTO `bb_config` VALUES ('enable_pm_icons', '1', 0);
INSERT INTO `bb_config` VALUES ('enable_post_confirm', '1', 0);
INSERT INTO `bb_config` VALUES ('extension_force_unstable', '0', 0);
INSERT INTO `bb_config` VALUES ('feed_enable', '1', 0);
INSERT INTO `bb_config` VALUES ('feed_forum', '1', 0);
INSERT INTO `bb_config` VALUES ('feed_http_auth', '0', 0);
INSERT INTO `bb_config` VALUES ('feed_item_statistics', '1', 0);
INSERT INTO `bb_config` VALUES ('feed_limit_post', '15', 0);
INSERT INTO `bb_config` VALUES ('feed_limit_topic', '10', 0);
INSERT INTO `bb_config` VALUES ('feed_overall', '1', 0);
INSERT INTO `bb_config` VALUES ('feed_overall_forums', '0', 0);
INSERT INTO `bb_config` VALUES ('feed_topic', '1', 0);
INSERT INTO `bb_config` VALUES ('feed_topics_active', '0', 0);
INSERT INTO `bb_config` VALUES ('feed_topics_new', '1', 0);
INSERT INTO `bb_config` VALUES ('flood_interval', '15', 0);
INSERT INTO `bb_config` VALUES ('force_server_vars', '0', 0);
INSERT INTO `bb_config` VALUES ('form_token_lifetime', '7200', 0);
INSERT INTO `bb_config` VALUES ('form_token_mintime', '0', 0);
INSERT INTO `bb_config` VALUES ('form_token_sid_guests', '1', 0);
INSERT INTO `bb_config` VALUES ('forward_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('forwarded_for_check', '0', 0);
INSERT INTO `bb_config` VALUES ('full_folder_action', '2', 0);
INSERT INTO `bb_config` VALUES ('fulltext_mysql_max_word_len', '254', 0);
INSERT INTO `bb_config` VALUES ('fulltext_mysql_min_word_len', '4', 0);
INSERT INTO `bb_config` VALUES ('fulltext_native_common_thres', '5', 0);
INSERT INTO `bb_config` VALUES ('fulltext_native_load_upd', '1', 0);
INSERT INTO `bb_config` VALUES ('fulltext_native_max_chars', '14', 0);
INSERT INTO `bb_config` VALUES ('fulltext_native_min_chars', '3', 0);
INSERT INTO `bb_config` VALUES ('fulltext_postgres_max_word_len', '254', 0);
INSERT INTO `bb_config` VALUES ('fulltext_postgres_min_word_len', '4', 0);
INSERT INTO `bb_config` VALUES ('fulltext_postgres_ts_name', 'simple', 0);
INSERT INTO `bb_config` VALUES ('fulltext_sphinx_indexer_mem_limit', '512', 0);
INSERT INTO `bb_config` VALUES ('fulltext_sphinx_stopwords', '0', 0);
INSERT INTO `bb_config` VALUES ('gzip_compress', '0', 0);
INSERT INTO `bb_config` VALUES ('help_send_statistics', '1', 0);
INSERT INTO `bb_config` VALUES ('help_send_statistics_time', '1554648027', 0);
INSERT INTO `bb_config` VALUES ('hot_threshold', '25', 0);
INSERT INTO `bb_config` VALUES ('icons_path', 'images/icons', 0);
INSERT INTO `bb_config` VALUES ('img_create_thumbnail', '0', 0);
INSERT INTO `bb_config` VALUES ('img_display_inlined', '1', 0);
INSERT INTO `bb_config` VALUES ('img_link_height', '0', 0);
INSERT INTO `bb_config` VALUES ('img_link_width', '0', 0);
INSERT INTO `bb_config` VALUES ('img_max_height', '0', 0);
INSERT INTO `bb_config` VALUES ('img_max_thumb_width', '400', 0);
INSERT INTO `bb_config` VALUES ('img_max_width', '0', 0);
INSERT INTO `bb_config` VALUES ('img_min_thumb_filesize', '12000', 0);
INSERT INTO `bb_config` VALUES ('ip_check', '3', 0);
INSERT INTO `bb_config` VALUES ('ip_login_limit_max', '50', 0);
INSERT INTO `bb_config` VALUES ('ip_login_limit_time', '21600', 0);
INSERT INTO `bb_config` VALUES ('ip_login_limit_use_forwarded', '0', 0);
INSERT INTO `bb_config` VALUES ('jab_enable', '0', 0);
INSERT INTO `bb_config` VALUES ('jab_host', '', 0);
INSERT INTO `bb_config` VALUES ('jab_package_size', '20', 0);
INSERT INTO `bb_config` VALUES ('jab_password', '', 0);
INSERT INTO `bb_config` VALUES ('jab_port', '5222', 0);
INSERT INTO `bb_config` VALUES ('jab_use_ssl', '0', 0);
INSERT INTO `bb_config` VALUES ('jab_username', '', 0);
INSERT INTO `bb_config` VALUES ('last_queue_run', '0', 1);
INSERT INTO `bb_config` VALUES ('ldap_base_dn', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_email', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_password', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_port', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_server', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_uid', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_user', '', 0);
INSERT INTO `bb_config` VALUES ('ldap_user_filter', '', 0);
INSERT INTO `bb_config` VALUES ('legend_sort_groupname', '0', 0);
INSERT INTO `bb_config` VALUES ('limit_load', '0', 0);
INSERT INTO `bb_config` VALUES ('limit_search_load', '0', 0);
INSERT INTO `bb_config` VALUES ('load_anon_lastread', '0', 0);
INSERT INTO `bb_config` VALUES ('load_birthdays', '1', 0);
INSERT INTO `bb_config` VALUES ('load_cpf_memberlist', '1', 0);
INSERT INTO `bb_config` VALUES ('load_cpf_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('load_cpf_viewprofile', '1', 0);
INSERT INTO `bb_config` VALUES ('load_cpf_viewtopic', '1', 0);
INSERT INTO `bb_config` VALUES ('load_db_lastread', '1', 0);
INSERT INTO `bb_config` VALUES ('load_db_track', '1', 0);
INSERT INTO `bb_config` VALUES ('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0);
INSERT INTO `bb_config` VALUES ('load_jumpbox', '1', 0);
INSERT INTO `bb_config` VALUES ('load_moderators', '1', 0);
INSERT INTO `bb_config` VALUES ('load_notifications', '1', 0);
INSERT INTO `bb_config` VALUES ('load_online', '1', 0);
INSERT INTO `bb_config` VALUES ('load_online_guests', '1', 0);
INSERT INTO `bb_config` VALUES ('load_online_time', '5', 0);
INSERT INTO `bb_config` VALUES ('load_onlinetrack', '1', 0);
INSERT INTO `bb_config` VALUES ('load_search', '1', 0);
INSERT INTO `bb_config` VALUES ('load_tplcompile', '0', 0);
INSERT INTO `bb_config` VALUES ('load_unreads_search', '1', 0);
INSERT INTO `bb_config` VALUES ('load_user_activity', '1', 0);
INSERT INTO `bb_config` VALUES ('load_user_activity_limit', '5000', 0);
INSERT INTO `bb_config` VALUES ('max_attachments', '3', 0);
INSERT INTO `bb_config` VALUES ('max_attachments_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('max_autologin_time', '0', 0);
INSERT INTO `bb_config` VALUES ('max_filesize', '262144', 0);
INSERT INTO `bb_config` VALUES ('max_filesize_pm', '262144', 0);
INSERT INTO `bb_config` VALUES ('max_login_attempts', '3', 0);
INSERT INTO `bb_config` VALUES ('max_name_chars', '20', 0);
INSERT INTO `bb_config` VALUES ('max_num_search_keywords', '10', 0);
INSERT INTO `bb_config` VALUES ('max_pass_chars', '100', 0);
INSERT INTO `bb_config` VALUES ('max_poll_options', '10', 0);
INSERT INTO `bb_config` VALUES ('max_post_chars', '60000', 0);
INSERT INTO `bb_config` VALUES ('max_post_font_size', '200', 0);
INSERT INTO `bb_config` VALUES ('max_post_img_height', '0', 0);
INSERT INTO `bb_config` VALUES ('max_post_img_width', '0', 0);
INSERT INTO `bb_config` VALUES ('max_post_smilies', '0', 0);
INSERT INTO `bb_config` VALUES ('max_post_urls', '0', 0);
INSERT INTO `bb_config` VALUES ('max_quote_depth', '3', 0);
INSERT INTO `bb_config` VALUES ('max_reg_attempts', '5', 0);
INSERT INTO `bb_config` VALUES ('max_sig_chars', '255', 0);
INSERT INTO `bb_config` VALUES ('max_sig_font_size', '200', 0);
INSERT INTO `bb_config` VALUES ('max_sig_img_height', '0', 0);
INSERT INTO `bb_config` VALUES ('max_sig_img_width', '0', 0);
INSERT INTO `bb_config` VALUES ('max_sig_smilies', '0', 0);
INSERT INTO `bb_config` VALUES ('max_sig_urls', '5', 0);
INSERT INTO `bb_config` VALUES ('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0);
INSERT INTO `bb_config` VALUES ('min_name_chars', '3', 0);
INSERT INTO `bb_config` VALUES ('min_pass_chars', '6', 0);
INSERT INTO `bb_config` VALUES ('min_post_chars', '1', 0);
INSERT INTO `bb_config` VALUES ('min_search_author_chars', '3', 0);
INSERT INTO `bb_config` VALUES ('new_member_group_default', '0', 0);
INSERT INTO `bb_config` VALUES ('new_member_post_limit', '3', 0);
INSERT INTO `bb_config` VALUES ('newest_user_colour', 'AA0000', 1);
INSERT INTO `bb_config` VALUES ('newest_user_id', '2', 1);
INSERT INTO `bb_config` VALUES ('newest_username', 'admin', 1);
INSERT INTO `bb_config` VALUES ('num_files', '0', 1);
INSERT INTO `bb_config` VALUES ('num_posts', '1', 1);
INSERT INTO `bb_config` VALUES ('num_topics', '1', 1);
INSERT INTO `bb_config` VALUES ('num_users', '1', 1);
INSERT INTO `bb_config` VALUES ('override_user_style', '1', 0);
INSERT INTO `bb_config` VALUES ('pass_complex', 'PASS_TYPE_ANY', 0);
INSERT INTO `bb_config` VALUES ('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0);
INSERT INTO `bb_config` VALUES ('plupload_last_gc', '0', 1);
INSERT INTO `bb_config` VALUES ('plupload_salt', '4914b764c7eb0f45aa044a05bc66b81d', 0);
INSERT INTO `bb_config` VALUES ('pm_edit_time', '0', 0);
INSERT INTO `bb_config` VALUES ('pm_max_boxes', '4', 0);
INSERT INTO `bb_config` VALUES ('pm_max_msgs', '50', 0);
INSERT INTO `bb_config` VALUES ('pm_max_recipients', '0', 0);
INSERT INTO `bb_config` VALUES ('posts_per_page', '10', 0);
INSERT INTO `bb_config` VALUES ('print_pm', '1', 0);
INSERT INTO `bb_config` VALUES ('questionnaire_unique_id', 'ovy5ehvz5mp4ckhy', 0);
INSERT INTO `bb_config` VALUES ('queue_interval', '60', 0);
INSERT INTO `bb_config` VALUES ('rand_seed', 'a9b03171e4159ae07e8562c6d033e1ef', 1);
INSERT INTO `bb_config` VALUES ('rand_seed_last_update', '1554647964', 1);
INSERT INTO `bb_config` VALUES ('ranks_path', 'images/ranks', 0);
INSERT INTO `bb_config` VALUES ('read_notification_expire_days', '30', 0);
INSERT INTO `bb_config` VALUES ('read_notification_gc', '86400', 0);
INSERT INTO `bb_config` VALUES ('read_notification_last_gc', '1554648135', 1);
INSERT INTO `bb_config` VALUES ('record_online_date', '1554648135', 1);
INSERT INTO `bb_config` VALUES ('record_online_users', '2', 1);
INSERT INTO `bb_config` VALUES ('referer_validation', '0', 0);
INSERT INTO `bb_config` VALUES ('remote_upload_verify', '0', 0);
INSERT INTO `bb_config` VALUES ('require_activation', '0', 0);
INSERT INTO `bb_config` VALUES ('script_path', '/phpBB3', 0);
INSERT INTO `bb_config` VALUES ('search_anonymous_interval', '0', 0);
INSERT INTO `bb_config` VALUES ('search_block_size', '250', 0);
INSERT INTO `bb_config` VALUES ('search_gc', '7200', 0);
INSERT INTO `bb_config` VALUES ('search_indexing_state', '', 1);
INSERT INTO `bb_config` VALUES ('search_interval', '0', 0);
INSERT INTO `bb_config` VALUES ('search_last_gc', '1554648497', 1);
INSERT INTO `bb_config` VALUES ('search_store_results', '1800', 0);
INSERT INTO `bb_config` VALUES ('search_type', '\\phpbb\\search\\fulltext_native', 0);
INSERT INTO `bb_config` VALUES ('secure_allow_deny', '1', 0);
INSERT INTO `bb_config` VALUES ('secure_allow_empty_referer', '1', 0);
INSERT INTO `bb_config` VALUES ('secure_downloads', '0', 0);
INSERT INTO `bb_config` VALUES ('server_name', 'localhost', 0);
INSERT INTO `bb_config` VALUES ('server_port', '80', 0);
INSERT INTO `bb_config` VALUES ('server_protocol', 'http://', 0);
INSERT INTO `bb_config` VALUES ('session_gc', '3600', 0);
INSERT INTO `bb_config` VALUES ('session_last_gc', '1554648509', 1);
INSERT INTO `bb_config` VALUES ('session_length', '3600', 0);
INSERT INTO `bb_config` VALUES ('site_desc', '用于描述您的论坛的一小段文字', 0);
INSERT INTO `bb_config` VALUES ('site_home_text', '', 0);
INSERT INTO `bb_config` VALUES ('site_home_url', '', 0);
INSERT INTO `bb_config` VALUES ('sitename', '1024', 0);
INSERT INTO `bb_config` VALUES ('smilies_path', 'images/smilies', 0);
INSERT INTO `bb_config` VALUES ('smilies_per_page', '50', 0);
INSERT INTO `bb_config` VALUES ('smtp_auth_method', 'PLAIN', 0);
INSERT INTO `bb_config` VALUES ('smtp_delivery', '0', 0);
INSERT INTO `bb_config` VALUES ('smtp_host', '', 0);
INSERT INTO `bb_config` VALUES ('smtp_password', '', 0);
INSERT INTO `bb_config` VALUES ('smtp_port', '', 0);
INSERT INTO `bb_config` VALUES ('smtp_username', '', 0);
INSERT INTO `bb_config` VALUES ('teampage_forums', '1', 0);
INSERT INTO `bb_config` VALUES ('teampage_memberships', '1', 0);
INSERT INTO `bb_config` VALUES ('topics_per_page', '25', 0);
INSERT INTO `bb_config` VALUES ('tpl_allow_php', '0', 0);
INSERT INTO `bb_config` VALUES ('upload_dir_size', '0', 1);
INSERT INTO `bb_config` VALUES ('upload_icons_path', 'images/upload_icons', 0);
INSERT INTO `bb_config` VALUES ('upload_path', 'files', 0);
INSERT INTO `bb_config` VALUES ('use_system_cron', '0', 0);
INSERT INTO `bb_config` VALUES ('version', '3.2.5', 0);
INSERT INTO `bb_config` VALUES ('viglink_api_siteid', '421aa90e079fa326b6494f812ad13e79', 0);
INSERT INTO `bb_config` VALUES ('viglink_ask_admin', '1554648027', 0);
INSERT INTO `bb_config` VALUES ('viglink_ask_admin_last', '0', 0);
INSERT INTO `bb_config` VALUES ('viglink_convert_account_url', '', 0);
INSERT INTO `bb_config` VALUES ('viglink_enabled', '1', 0);
INSERT INTO `bb_config` VALUES ('viglink_last_gc', '1554648036', 1);
INSERT INTO `bb_config` VALUES ('warnings_expire_days', '90', 0);
INSERT INTO `bb_config` VALUES ('warnings_gc', '14400', 0);
INSERT INTO `bb_config` VALUES ('warnings_last_gc', '1554648511', 1);

-- ----------------------------
-- Table structure for bb_config_text
-- ----------------------------
DROP TABLE IF EXISTS `bb_config_text`;
CREATE TABLE `bb_config_text`  (
  `config_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_config_text
-- ----------------------------
INSERT INTO `bb_config_text` VALUES ('contact_admin_info', '');
INSERT INTO `bb_config_text` VALUES ('contact_admin_info_bitfield', '');
INSERT INTO `bb_config_text` VALUES ('contact_admin_info_flags', '7');
INSERT INTO `bb_config_text` VALUES ('contact_admin_info_uid', '');

-- ----------------------------
-- Table structure for bb_confirm
-- ----------------------------
DROP TABLE IF EXISTS `bb_confirm`;
CREATE TABLE `bb_confirm`  (
  `confirm_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT 0,
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`session_id`, `confirm_id`) USING BTREE,
  INDEX `confirm_type`(`confirm_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_disallow
-- ----------------------------
DROP TABLE IF EXISTS `bb_disallow`;
CREATE TABLE `bb_disallow`  (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_drafts
-- ----------------------------
DROP TABLE IF EXISTS `bb_drafts`;
CREATE TABLE `bb_drafts`  (
  `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `draft_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`) USING BTREE,
  INDEX `save_time`(`save_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_ext
-- ----------------------------
DROP TABLE IF EXISTS `bb_ext`;
CREATE TABLE `bb_ext`  (
  `ext_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ext_state` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE INDEX `ext_name`(`ext_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_ext
-- ----------------------------
INSERT INTO `bb_ext` VALUES ('phpbb/viglink', 1, 'b:0;');

-- ----------------------------
-- Table structure for bb_extension_groups
-- ----------------------------
DROP TABLE IF EXISTS `bb_extension_groups`;
CREATE TABLE `bb_extension_groups`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT 0,
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `upload_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_forums` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_extension_groups
-- ----------------------------
INSERT INTO `bb_extension_groups` VALUES (1, 'IMAGES', 1, 1, 1, '', 0, '', 0);
INSERT INTO `bb_extension_groups` VALUES (2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0);
INSERT INTO `bb_extension_groups` VALUES (3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0);
INSERT INTO `bb_extension_groups` VALUES (4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0);
INSERT INTO `bb_extension_groups` VALUES (5, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0);
INSERT INTO `bb_extension_groups` VALUES (6, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- ----------------------------
-- Table structure for bb_extensions
-- ----------------------------
DROP TABLE IF EXISTS `bb_extensions`;
CREATE TABLE `bb_extensions`  (
  `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_extensions
-- ----------------------------
INSERT INTO `bb_extensions` VALUES (1, 1, 'gif');
INSERT INTO `bb_extensions` VALUES (2, 1, 'png');
INSERT INTO `bb_extensions` VALUES (3, 1, 'jpeg');
INSERT INTO `bb_extensions` VALUES (4, 1, 'jpg');
INSERT INTO `bb_extensions` VALUES (5, 1, 'tif');
INSERT INTO `bb_extensions` VALUES (6, 1, 'tiff');
INSERT INTO `bb_extensions` VALUES (7, 1, 'tga');
INSERT INTO `bb_extensions` VALUES (8, 2, 'gtar');
INSERT INTO `bb_extensions` VALUES (9, 2, 'gz');
INSERT INTO `bb_extensions` VALUES (10, 2, 'tar');
INSERT INTO `bb_extensions` VALUES (11, 2, 'zip');
INSERT INTO `bb_extensions` VALUES (12, 2, 'rar');
INSERT INTO `bb_extensions` VALUES (13, 2, 'ace');
INSERT INTO `bb_extensions` VALUES (14, 2, 'torrent');
INSERT INTO `bb_extensions` VALUES (15, 2, 'tgz');
INSERT INTO `bb_extensions` VALUES (16, 2, 'bz2');
INSERT INTO `bb_extensions` VALUES (17, 2, '7z');
INSERT INTO `bb_extensions` VALUES (18, 3, 'txt');
INSERT INTO `bb_extensions` VALUES (19, 3, 'c');
INSERT INTO `bb_extensions` VALUES (20, 3, 'h');
INSERT INTO `bb_extensions` VALUES (21, 3, 'cpp');
INSERT INTO `bb_extensions` VALUES (22, 3, 'hpp');
INSERT INTO `bb_extensions` VALUES (23, 3, 'diz');
INSERT INTO `bb_extensions` VALUES (24, 3, 'csv');
INSERT INTO `bb_extensions` VALUES (25, 3, 'ini');
INSERT INTO `bb_extensions` VALUES (26, 3, 'log');
INSERT INTO `bb_extensions` VALUES (27, 3, 'js');
INSERT INTO `bb_extensions` VALUES (28, 3, 'xml');
INSERT INTO `bb_extensions` VALUES (29, 4, 'xls');
INSERT INTO `bb_extensions` VALUES (30, 4, 'xlsx');
INSERT INTO `bb_extensions` VALUES (31, 4, 'xlsm');
INSERT INTO `bb_extensions` VALUES (32, 4, 'xlsb');
INSERT INTO `bb_extensions` VALUES (33, 4, 'doc');
INSERT INTO `bb_extensions` VALUES (34, 4, 'docx');
INSERT INTO `bb_extensions` VALUES (35, 4, 'docm');
INSERT INTO `bb_extensions` VALUES (36, 4, 'dot');
INSERT INTO `bb_extensions` VALUES (37, 4, 'dotx');
INSERT INTO `bb_extensions` VALUES (38, 4, 'dotm');
INSERT INTO `bb_extensions` VALUES (39, 4, 'pdf');
INSERT INTO `bb_extensions` VALUES (40, 4, 'ai');
INSERT INTO `bb_extensions` VALUES (41, 4, 'ps');
INSERT INTO `bb_extensions` VALUES (42, 4, 'ppt');
INSERT INTO `bb_extensions` VALUES (43, 4, 'pptx');
INSERT INTO `bb_extensions` VALUES (44, 4, 'pptm');
INSERT INTO `bb_extensions` VALUES (45, 4, 'odg');
INSERT INTO `bb_extensions` VALUES (46, 4, 'odp');
INSERT INTO `bb_extensions` VALUES (47, 4, 'ods');
INSERT INTO `bb_extensions` VALUES (48, 4, 'odt');
INSERT INTO `bb_extensions` VALUES (49, 4, 'rtf');
INSERT INTO `bb_extensions` VALUES (50, 5, 'swf');
INSERT INTO `bb_extensions` VALUES (51, 6, 'mp3');
INSERT INTO `bb_extensions` VALUES (52, 6, 'mpeg');
INSERT INTO `bb_extensions` VALUES (53, 6, 'mpg');
INSERT INTO `bb_extensions` VALUES (54, 6, 'ogg');
INSERT INTO `bb_extensions` VALUES (55, 6, 'ogm');

-- ----------------------------
-- Table structure for bb_forums
-- ----------------------------
DROP TABLE IF EXISTS `bb_forums`;
CREATE TABLE `bb_forums`  (
  `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_parents` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `forum_desc_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `forum_rules_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `forum_type` tinyint(4) NOT NULL DEFAULT 0,
  `forum_status` tinyint(4) NOT NULL DEFAULT 0,
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `forum_last_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT 32,
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT 7,
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `prune_shadow_next` int(11) NOT NULL DEFAULT 0,
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`forum_id`) USING BTREE,
  INDEX `left_right_id`(`left_id`, `right_id`) USING BTREE,
  INDEX `forum_lastpost_id`(`forum_last_post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_forums
-- ----------------------------
INSERT INTO `bb_forums` VALUES (1, 0, 1, 4, '', '您的第一个分区', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1554647964, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `bb_forums` VALUES (2, 1, 2, 3, '', '您的第一个版面', '您的第一个版面的简单描述', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 2, '欢迎来到 phpBB3', 1554647964, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 1, 0, 0, 1, 0, 0);

-- ----------------------------
-- Table structure for bb_forums_access
-- ----------------------------
DROP TABLE IF EXISTS `bb_forums_access`;
CREATE TABLE `bb_forums_access`  (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`, `user_id`, `session_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_forums_track
-- ----------------------------
DROP TABLE IF EXISTS `bb_forums_track`;
CREATE TABLE `bb_forums_track`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `forum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_forums_watch
-- ----------------------------
DROP TABLE IF EXISTS `bb_forums_watch`;
CREATE TABLE `bb_forums_watch`  (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `forum_id`(`forum_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `notify_stat`(`notify_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_groups
-- ----------------------------
DROP TABLE IF EXISTS `bb_groups`;
CREATE TABLE `bb_groups`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT 1,
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT 7,
  `group_desc_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_colour` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`group_id`) USING BTREE,
  INDEX `group_legend_name`(`group_legend`, `group_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_groups
-- ----------------------------
INSERT INTO `bb_groups` VALUES (1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `bb_groups` VALUES (2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `bb_groups` VALUES (3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `bb_groups` VALUES (4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0);
INSERT INTO `bb_groups` VALUES (5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0);
INSERT INTO `bb_groups` VALUES (6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5);
INSERT INTO `bb_groups` VALUES (7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- ----------------------------
-- Table structure for bb_icons
-- ----------------------------
DROP TABLE IF EXISTS `bb_icons`;
CREATE TABLE `bb_icons`  (
  `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT 0,
  `icons_height` tinyint(4) NOT NULL DEFAULT 0,
  `icons_alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`icons_id`) USING BTREE,
  INDEX `display_on_posting`(`display_on_posting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_icons
-- ----------------------------
INSERT INTO `bb_icons` VALUES (1, 'misc/fire.gif', 16, 16, '', 1, 1);
INSERT INTO `bb_icons` VALUES (2, 'smile/redface.gif', 16, 16, '', 9, 1);
INSERT INTO `bb_icons` VALUES (3, 'smile/mrgreen.gif', 16, 16, '', 10, 1);
INSERT INTO `bb_icons` VALUES (4, 'misc/heart.gif', 16, 16, '', 4, 1);
INSERT INTO `bb_icons` VALUES (5, 'misc/star.gif', 16, 16, '', 2, 1);
INSERT INTO `bb_icons` VALUES (6, 'misc/radioactive.gif', 16, 16, '', 3, 1);
INSERT INTO `bb_icons` VALUES (7, 'misc/thinking.gif', 16, 16, '', 5, 1);
INSERT INTO `bb_icons` VALUES (8, 'smile/info.gif', 16, 16, '', 8, 1);
INSERT INTO `bb_icons` VALUES (9, 'smile/question.gif', 16, 16, '', 6, 1);
INSERT INTO `bb_icons` VALUES (10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- ----------------------------
-- Table structure for bb_lang
-- ----------------------------
DROP TABLE IF EXISTS `bb_lang`;
CREATE TABLE `bb_lang`  (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`) USING BTREE,
  INDEX `lang_iso`(`lang_iso`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_lang
-- ----------------------------
INSERT INTO `bb_lang` VALUES (1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');
INSERT INTO `bb_lang` VALUES (2, 'zh_cmn_hans', 'zh_cmn_hans', 'Mandarin Chinese (Simplified script)', '简体中文', 'David Yin');

-- ----------------------------
-- Table structure for bb_log
-- ----------------------------
DROP TABLE IF EXISTS `bb_log`;
CREATE TABLE `bb_log`  (
  `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `log_operation` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_type`(`log_type`) USING BTREE,
  INDEX `forum_id`(`forum_id`) USING BTREE,
  INDEX `topic_id`(`topic_id`) USING BTREE,
  INDEX `reportee_id`(`reportee_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `log_time`(`log_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_log
-- ----------------------------
INSERT INTO `bb_log` VALUES (1, 0, 1, 0, 0, 0, 0, '127.0.0.1', 1554648010, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}');
INSERT INTO `bb_log` VALUES (2, 0, 1, 0, 0, 0, 0, '', 1554648012, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}');
INSERT INTO `bb_log` VALUES (3, 2, 1, 0, 0, 0, 0, '127.0.0.1', 1554648014, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:323:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/phpBB3/install/app.php/install</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1909<br />\";}');
INSERT INTO `bb_log` VALUES (4, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1554648014, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.2.5\";}');
INSERT INTO `bb_log` VALUES (5, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1554648469, 'LOG_STYLE_ADD', 'a:1:{i:0;s:11:\"CleanSilver\";}');
INSERT INTO `bb_log` VALUES (6, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1554648578, 'LOG_CONFIG_SETTINGS', '');
INSERT INTO `bb_log` VALUES (7, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1554648610, 'LOG_CONFIG_SETTINGS', '');

-- ----------------------------
-- Table structure for bb_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `bb_login_attempts`;
CREATE TABLE `bb_login_attempts`  (
  `attempt_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  INDEX `att_ip`(`attempt_ip`, `attempt_time`) USING BTREE,
  INDEX `att_for`(`attempt_forwarded_for`, `attempt_time`) USING BTREE,
  INDEX `att_time`(`attempt_time`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_migrations
-- ----------------------------
DROP TABLE IF EXISTS `bb_migrations`;
CREATE TABLE `bb_migrations`  (
  `migration_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `migration_data_state` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`migration_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_migrations
-- ----------------------------
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1554648000, 1554648000);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1554648001, 1554648001);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1554648002, 1554648002);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1554648003, 1554648003);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1554648004, 1554648004);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\update_hashes', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v3111', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1', 'a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v3112', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1554648005, 1554648005);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\email_force_sender', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\jquery_update', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes', 'a:0:{}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\remove_imagick', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index', 'a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index', 'a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v321', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v321rc1', 'a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v322', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3112\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v322rc1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v322rc1', 'a:6:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles\";i:2;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\email_force_sender\";i:4;s:58:\"\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v323', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc2\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v323rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v323rc2', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc1\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v324', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v32x\\remove_imagick\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v324rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v325', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v32x\\jquery_update\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\db\\migration\\data\\v32x\\v325rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v324\";}', 1, 1, '', 1554648006, 1554648006);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1554648011, 1554648011);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait', 'a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}', 1, 1, '', 1554648011, 1554648012);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1554648009, 1554648010);
INSERT INTO `bb_migrations` VALUES ('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1554648010, 1554648011);

-- ----------------------------
-- Table structure for bb_moderator_cache
-- ----------------------------
DROP TABLE IF EXISTS `bb_moderator_cache`;
CREATE TABLE `bb_moderator_cache`  (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  INDEX `disp_idx`(`display_on_index`) USING BTREE,
  INDEX `forum_id`(`forum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_modules
-- ----------------------------
DROP TABLE IF EXISTS `bb_modules`;
CREATE TABLE `bb_modules`  (
  `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `module_basename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `module_langname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`) USING BTREE,
  INDEX `left_right_id`(`left_id`, `right_id`) USING BTREE,
  INDEX `module_enabled`(`module_enabled`) USING BTREE,
  INDEX `class_left_id`(`module_class`, `left_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_modules
-- ----------------------------
INSERT INTO `bb_modules` VALUES (1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', '');
INSERT INTO `bb_modules` VALUES (2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', '');
INSERT INTO `bb_modules` VALUES (3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', '');
INSERT INTO `bb_modules` VALUES (4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', '');
INSERT INTO `bb_modules` VALUES (5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', '');
INSERT INTO `bb_modules` VALUES (6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', '');
INSERT INTO `bb_modules` VALUES (7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', '');
INSERT INTO `bb_modules` VALUES (8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', '');
INSERT INTO `bb_modules` VALUES (9, 1, 1, '', 'acp', 0, 89, 116, 'ACP_CAT_POSTING', '', '');
INSERT INTO `bb_modules` VALUES (10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', '');
INSERT INTO `bb_modules` VALUES (11, 1, 1, '', 'acp', 9, 104, 115, 'ACP_ATTACHMENTS', '', '');
INSERT INTO `bb_modules` VALUES (12, 1, 1, '', 'acp', 0, 117, 174, 'ACP_CAT_USERGROUP', '', '');
INSERT INTO `bb_modules` VALUES (13, 1, 1, '', 'acp', 12, 118, 153, 'ACP_CAT_USERS', '', '');
INSERT INTO `bb_modules` VALUES (14, 1, 1, '', 'acp', 12, 154, 163, 'ACP_GROUPS', '', '');
INSERT INTO `bb_modules` VALUES (15, 1, 1, '', 'acp', 12, 164, 173, 'ACP_USER_SECURITY', '', '');
INSERT INTO `bb_modules` VALUES (16, 1, 1, '', 'acp', 0, 175, 224, 'ACP_CAT_PERMISSIONS', '', '');
INSERT INTO `bb_modules` VALUES (17, 1, 1, '', 'acp', 16, 178, 187, 'ACP_GLOBAL_PERMISSIONS', '', '');
INSERT INTO `bb_modules` VALUES (18, 1, 1, '', 'acp', 16, 188, 199, 'ACP_FORUM_BASED_PERMISSIONS', '', '');
INSERT INTO `bb_modules` VALUES (19, 1, 1, '', 'acp', 16, 200, 209, 'ACP_PERMISSION_ROLES', '', '');
INSERT INTO `bb_modules` VALUES (20, 1, 1, '', 'acp', 16, 210, 223, 'ACP_PERMISSION_MASKS', '', '');
INSERT INTO `bb_modules` VALUES (21, 1, 1, '', 'acp', 0, 225, 240, 'ACP_CAT_CUSTOMISE', '', '');
INSERT INTO `bb_modules` VALUES (22, 1, 1, '', 'acp', 21, 230, 235, 'ACP_STYLE_MANAGEMENT', '', '');
INSERT INTO `bb_modules` VALUES (23, 1, 1, '', 'acp', 21, 226, 229, 'ACP_EXTENSION_MANAGEMENT', '', '');
INSERT INTO `bb_modules` VALUES (24, 1, 1, '', 'acp', 21, 236, 239, 'ACP_LANGUAGE', '', '');
INSERT INTO `bb_modules` VALUES (25, 1, 1, '', 'acp', 0, 241, 260, 'ACP_CAT_MAINTENANCE', '', '');
INSERT INTO `bb_modules` VALUES (26, 1, 1, '', 'acp', 25, 242, 251, 'ACP_FORUM_LOGS', '', '');
INSERT INTO `bb_modules` VALUES (27, 1, 1, '', 'acp', 25, 252, 259, 'ACP_CAT_DATABASE', '', '');
INSERT INTO `bb_modules` VALUES (28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', '');
INSERT INTO `bb_modules` VALUES (29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', '');
INSERT INTO `bb_modules` VALUES (30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', '');
INSERT INTO `bb_modules` VALUES (31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', '');
INSERT INTO `bb_modules` VALUES (32, 1, 1, '', 'acp', 0, 285, 286, 'ACP_CAT_DOT_MODS', '', '');
INSERT INTO `bb_modules` VALUES (33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (34, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (35, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (36, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (37, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (38, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach');
INSERT INTO `bb_modules` VALUES (39, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban');
INSERT INTO `bb_modules` VALUES (40, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_IPS', 'ip', 'acl_a_ban');
INSERT INTO `bb_modules` VALUES (41, 1, 1, 'acp_ban', 'acp', 15, 169, 170, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban');
INSERT INTO `bb_modules` VALUES (42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode');
INSERT INTO `bb_modules` VALUES (43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots');
INSERT INTO `bb_modules` VALUES (60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_BACKUP', 'backup', 'acl_a_backup');
INSERT INTO `bb_modules` VALUES (64, 1, 1, 'acp_database', 'acp', 27, 255, 256, 'ACP_RESTORE', 'restore', 'acl_a_backup');
INSERT INTO `bb_modules` VALUES (65, 1, 1, 'acp_disallow', 'acp', 15, 171, 172, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names');
INSERT INTO `bb_modules` VALUES (66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable');
INSERT INTO `bb_modules` VALUES (67, 1, 1, 'acp_extensions', 'acp', 23, 227, 228, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions');
INSERT INTO `bb_modules` VALUES (68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum');
INSERT INTO `bb_modules` VALUES (69, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group');
INSERT INTO `bb_modules` VALUES (70, 1, 1, 'acp_groups', 'acp', 14, 157, 158, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group');
INSERT INTO `bb_modules` VALUES (71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server');
INSERT INTO `bb_modules` VALUES (72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons');
INSERT INTO `bb_modules` VALUES (73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons');
INSERT INTO `bb_modules` VALUES (74, 1, 1, 'acp_inactive', 'acp', 13, 119, 120, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber');
INSERT INTO `bb_modules` VALUES (76, 1, 1, 'acp_language', 'acp', 24, 237, 238, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language');
INSERT INTO `bb_modules` VALUES (77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs');
INSERT INTO `bb_modules` VALUES (78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs');
INSERT INTO `bb_modules` VALUES (79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs');
INSERT INTO `bb_modules` VALUES (80, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs');
INSERT INTO `bb_modules` VALUES (81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', '');
INSERT INTO `bb_modules` VALUES (82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules');
INSERT INTO `bb_modules` VALUES (83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules');
INSERT INTO `bb_modules` VALUES (84, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules');
INSERT INTO `bb_modules` VALUES (85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth');
INSERT INTO `bb_modules` VALUES (86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth');
INSERT INTO `bb_modules` VALUES (87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth');
INSERT INTO `bb_modules` VALUES (88, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth');
INSERT INTO `bb_modules` VALUES (89, 1, 1, 'acp_permissions', 'acp', 16, 176, 177, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (90, 1, 0, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth');
INSERT INTO `bb_modules` VALUES (93, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (94, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `bb_modules` VALUES (95, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `bb_modules` VALUES (96, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (97, 1, 1, 'acp_permissions', 'acp', 13, 125, 126, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (98, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `bb_modules` VALUES (99, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `bb_modules` VALUES (100, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (101, 1, 1, 'acp_permissions', 'acp', 14, 161, 162, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (103, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (108, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (109, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo');
INSERT INTO `bb_modules` VALUES (110, 1, 1, 'acp_profile', 'acp', 13, 127, 128, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile');
INSERT INTO `bb_modules` VALUES (111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune');
INSERT INTO `bb_modules` VALUES (112, 1, 1, 'acp_prune', 'acp', 13, 129, 130, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel');
INSERT INTO `bb_modules` VALUES (113, 1, 1, 'acp_ranks', 'acp', 13, 131, 132, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks');
INSERT INTO `bb_modules` VALUES (114, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons');
INSERT INTO `bb_modules` VALUES (115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search');
INSERT INTO `bb_modules` VALUES (116, 1, 1, 'acp_search', 'acp', 27, 257, 258, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search');
INSERT INTO `bb_modules` VALUES (117, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES', 'style', 'acl_a_styles');
INSERT INTO `bb_modules` VALUES (118, 1, 1, 'acp_styles', 'acp', 22, 233, 234, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles');
INSERT INTO `bb_modules` VALUES (119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board');
INSERT INTO `bb_modules` VALUES (120, 1, 1, 'acp_users', 'acp', 13, 121, 122, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (121, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (122, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (123, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PROFILE', 'profile', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (124, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_PREFS', 'prefs', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (125, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (126, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_RANK', 'rank', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (127, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_SIG', 'sig', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (128, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group');
INSERT INTO `bb_modules` VALUES (129, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth');
INSERT INTO `bb_modules` VALUES (130, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_ATTACH', 'attach', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words');
INSERT INTO `bb_modules` VALUES (132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user');
INSERT INTO `bb_modules` VALUES (133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group');
INSERT INTO `bb_modules` VALUES (134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum');
INSERT INTO `bb_modules` VALUES (135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs');
INSERT INTO `bb_modules` VALUES (136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots');
INSERT INTO `bb_modules` VALUES (137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo');
INSERT INTO `bb_modules` VALUES (138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth');
INSERT INTO `bb_modules` VALUES (140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `bb_modules` VALUES (141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `bb_modules` VALUES (143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', '');
INSERT INTO `bb_modules` VALUES (144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', '');
INSERT INTO `bb_modules` VALUES (145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', '');
INSERT INTO `bb_modules` VALUES (146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', '');
INSERT INTO `bb_modules` VALUES (147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', '');
INSERT INTO `bb_modules` VALUES (148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', '');
INSERT INTO `bb_modules` VALUES (149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', '');
INSERT INTO `bb_modules` VALUES (150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban');
INSERT INTO `bb_modules` VALUES (151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban');
INSERT INTO `bb_modules` VALUES (152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban');
INSERT INTO `bb_modules` VALUES (153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_');
INSERT INTO `bb_modules` VALUES (154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id');
INSERT INTO `bb_modules` VALUES (155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id');
INSERT INTO `bb_modules` VALUES (156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', '');
INSERT INTO `bb_modules` VALUES (157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id');
INSERT INTO `bb_modules` VALUES (158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id');
INSERT INTO `bb_modules` VALUES (159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)');
INSERT INTO `bb_modules` VALUES (160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', '');
INSERT INTO `bb_modules` VALUES (161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', '');
INSERT INTO `bb_modules` VALUES (162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report');
INSERT INTO `bb_modules` VALUES (163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report');
INSERT INTO `bb_modules` VALUES (164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report');
INSERT INTO `bb_modules` VALUES (165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve');
INSERT INTO `bb_modules` VALUES (166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve');
INSERT INTO `bb_modules` VALUES (167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve');
INSERT INTO `bb_modules` VALUES (168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve');
INSERT INTO `bb_modules` VALUES (169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)');
INSERT INTO `bb_modules` VALUES (170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report');
INSERT INTO `bb_modules` VALUES (171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report');
INSERT INTO `bb_modules` VALUES (172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)');
INSERT INTO `bb_modules` VALUES (173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn');
INSERT INTO `bb_modules` VALUES (174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn');
INSERT INTO `bb_modules` VALUES (175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn');
INSERT INTO `bb_modules` VALUES (176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id');
INSERT INTO `bb_modules` VALUES (177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', '');
INSERT INTO `bb_modules` VALUES (178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', '');
INSERT INTO `bb_modules` VALUES (179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', '');
INSERT INTO `bb_modules` VALUES (180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', '');
INSERT INTO `bb_modules` VALUES (181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', '');
INSERT INTO `bb_modules` VALUES (182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', '');
INSERT INTO `bb_modules` VALUES (183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach');
INSERT INTO `bb_modules` VALUES (184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth');
INSERT INTO `bb_modules` VALUES (185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', '');
INSERT INTO `bb_modules` VALUES (186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', '');
INSERT INTO `bb_modules` VALUES (187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', '');
INSERT INTO `bb_modules` VALUES (188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', '');
INSERT INTO `bb_modules` VALUES (189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks');
INSERT INTO `bb_modules` VALUES (190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', '');
INSERT INTO `bb_modules` VALUES (191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', '');
INSERT INTO `bb_modules` VALUES (192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications');
INSERT INTO `bb_modules` VALUES (193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg');
INSERT INTO `bb_modules` VALUES (194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg');
INSERT INTO `bb_modules` VALUES (195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg');
INSERT INTO `bb_modules` VALUES (196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg');
INSERT INTO `bb_modules` VALUES (197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', '');
INSERT INTO `bb_modules` VALUES (198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', '');
INSERT INTO `bb_modules` VALUES (199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', '');
INSERT INTO `bb_modules` VALUES (200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo');
INSERT INTO `bb_modules` VALUES (201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig');
INSERT INTO `bb_modules` VALUES (202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar');
INSERT INTO `bb_modules` VALUES (203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', '');
INSERT INTO `bb_modules` VALUES (204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', '');
INSERT INTO `bb_modules` VALUES (205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', '');
INSERT INTO `bb_modules` VALUES (206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', '');
INSERT INTO `bb_modules` VALUES (207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board');

-- ----------------------------
-- Table structure for bb_notification_types
-- ----------------------------
DROP TABLE IF EXISTS `bb_notification_types`;
CREATE TABLE `bb_notification_types`  (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`notification_type_id`) USING BTREE,
  UNIQUE INDEX `type`(`notification_type_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_notifications
-- ----------------------------
DROP TABLE IF EXISTS `bb_notifications`;
CREATE TABLE `bb_notifications`  (
  `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `notification_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`) USING BTREE,
  INDEX `item_ident`(`notification_type_id`, `item_id`) USING BTREE,
  INDEX `user`(`user_id`, `notification_read`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_oauth_accounts
-- ----------------------------
DROP TABLE IF EXISTS `bb_oauth_accounts`;
CREATE TABLE `bb_oauth_accounts`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`, `provider`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_oauth_states
-- ----------------------------
DROP TABLE IF EXISTS `bb_oauth_states`;
CREATE TABLE `bb_oauth_states`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `provider`(`provider`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_oauth_tokens
-- ----------------------------
DROP TABLE IF EXISTS `bb_oauth_tokens`;
CREATE TABLE `bb_oauth_tokens`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `provider`(`provider`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_poll_options
-- ----------------------------
DROP TABLE IF EXISTS `bb_poll_options`;
CREATE TABLE `bb_poll_options`  (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poll_option_text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `poll_opt_id`(`poll_option_id`) USING BTREE,
  INDEX `topic_id`(`topic_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_poll_votes
-- ----------------------------
DROP TABLE IF EXISTS `bb_poll_votes`;
CREATE TABLE `bb_poll_votes`  (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poll_option_id` tinyint(4) NOT NULL DEFAULT 0,
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vote_user_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  INDEX `topic_id`(`topic_id`) USING BTREE,
  INDEX `vote_user_id`(`vote_user_id`) USING BTREE,
  INDEX `vote_user_ip`(`vote_user_ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_posts
-- ----------------------------
DROP TABLE IF EXISTS `bb_posts`;
CREATE TABLE `bb_posts`  (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poster_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `post_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `post_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `post_delete_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`post_id`) USING BTREE,
  INDEX `forum_id`(`forum_id`) USING BTREE,
  INDEX `topic_id`(`topic_id`) USING BTREE,
  INDEX `poster_ip`(`poster_ip`) USING BTREE,
  INDEX `poster_id`(`poster_id`) USING BTREE,
  INDEX `tid_post_time`(`topic_id`, `post_time`) USING BTREE,
  INDEX `post_username`(`post_username`) USING BTREE,
  INDEX `post_visibility`(`post_visibility`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_posts
-- ----------------------------
INSERT INTO `bb_posts` VALUES (1, 1, 2, 2, 0, '127.0.0.1', 1554647964, 0, 1, 1, 1, 1, '', '欢迎来到 phpBB3', '这是新安装好的 phpBB3 论坛中的一个样本帖子。您可以删除这个帖子、这个主题甚至这个版面， 因为一切看起来都运转正常！在整个安装过程中，你的第一个分区和第一个版面，都已经给与了适当的权限，预定义的用户组，管理员，蜘蛛，以及总版主，游客，注册用户，注册的 COPPA 用户。如果您选择删除这第一个分区和第一个版面，不要忘记在您新创建的分区和版面，给与用户组适当的权限。我们建议您重命名您的第一个分区和版面，并复制权限到您之后所创建的版面。祝您玩的快乐！', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- ----------------------------
-- Table structure for bb_privmsgs
-- ----------------------------
DROP TABLE IF EXISTS `bb_privmsgs`;
CREATE TABLE `bb_privmsgs`  (
  `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `message_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `bbcode_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `to_address` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bcc_address` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`msg_id`) USING BTREE,
  INDEX `author_ip`(`author_ip`) USING BTREE,
  INDEX `message_time`(`message_time`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE,
  INDEX `root_level`(`root_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_privmsgs_folder
-- ----------------------------
DROP TABLE IF EXISTS `bb_privmsgs_folder`;
CREATE TABLE `bb_privmsgs_folder`  (
  `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`folder_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_privmsgs_rules
-- ----------------------------
DROP TABLE IF EXISTS `bb_privmsgs_rules`;
CREATE TABLE `bb_privmsgs_rules`  (
  `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rule_folder_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rule_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_privmsgs_to
-- ----------------------------
DROP TABLE IF EXISTS `bb_privmsgs_to`;
CREATE TABLE `bb_privmsgs_to`  (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` int(11) NOT NULL DEFAULT 0,
  INDEX `msg_id`(`msg_id`) USING BTREE,
  INDEX `author_id`(`author_id`) USING BTREE,
  INDEX `usr_flder_id`(`user_id`, `folder_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_profile_fields
-- ----------------------------
DROP TABLE IF EXISTS `bb_profile_fields`;
CREATE TABLE `bb_profile_fields`  (
  `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `field_contact_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`) USING BTREE,
  INDEX `fld_type`(`field_type`) USING BTREE,
  INDEX `fld_ordr`(`field_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_profile_fields
-- ----------------------------
INSERT INTO `bb_profile_fields` VALUES (1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', '');
INSERT INTO `bb_profile_fields` VALUES (2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s');
INSERT INTO `bb_profile_fields` VALUES (3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `bb_profile_fields` VALUES (4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `bb_profile_fields` VALUES (5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', '');
INSERT INTO `bb_profile_fields` VALUES (6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/');
INSERT INTO `bb_profile_fields` VALUES (7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s');
INSERT INTO `bb_profile_fields` VALUES (8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/');
INSERT INTO `bb_profile_fields` VALUES (9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s');
INSERT INTO `bb_profile_fields` VALUES (10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo');
INSERT INTO `bb_profile_fields` VALUES (11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s');
INSERT INTO `bb_profile_fields` VALUES (12, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- ----------------------------
-- Table structure for bb_profile_fields_data
-- ----------------------------
DROP TABLE IF EXISTS `bb_profile_fields_data`;
CREATE TABLE `bb_profile_fields_data`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pf_phpbb_interests` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pf_phpbb_facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_profile_fields_lang
-- ----------------------------
DROP TABLE IF EXISTS `bb_profile_fields_lang`;
CREATE TABLE `bb_profile_fields_lang`  (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `field_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`, `lang_id`, `option_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_profile_lang
-- ----------------------------
DROP TABLE IF EXISTS `bb_profile_lang`;
CREATE TABLE `bb_profile_lang`  (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lang_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`, `lang_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_profile_lang
-- ----------------------------
INSERT INTO `bb_profile_lang` VALUES (1, 1, 'LOCATION', '', '');
INSERT INTO `bb_profile_lang` VALUES (1, 2, 'LOCATION', '', '');
INSERT INTO `bb_profile_lang` VALUES (2, 1, 'WEBSITE', '', '');
INSERT INTO `bb_profile_lang` VALUES (2, 2, 'WEBSITE', '', '');
INSERT INTO `bb_profile_lang` VALUES (3, 1, 'INTERESTS', '', '');
INSERT INTO `bb_profile_lang` VALUES (3, 2, 'INTERESTS', '', '');
INSERT INTO `bb_profile_lang` VALUES (4, 1, 'OCCUPATION', '', '');
INSERT INTO `bb_profile_lang` VALUES (4, 2, 'OCCUPATION', '', '');
INSERT INTO `bb_profile_lang` VALUES (5, 1, 'AOL', '', '');
INSERT INTO `bb_profile_lang` VALUES (5, 2, 'AOL', '', '');
INSERT INTO `bb_profile_lang` VALUES (6, 1, 'ICQ', '', '');
INSERT INTO `bb_profile_lang` VALUES (6, 2, 'ICQ', '', '');
INSERT INTO `bb_profile_lang` VALUES (7, 1, 'YAHOO', '', '');
INSERT INTO `bb_profile_lang` VALUES (7, 2, 'YAHOO', '', '');
INSERT INTO `bb_profile_lang` VALUES (8, 1, 'FACEBOOK', '', '');
INSERT INTO `bb_profile_lang` VALUES (8, 2, 'FACEBOOK', '', '');
INSERT INTO `bb_profile_lang` VALUES (9, 1, 'TWITTER', '', '');
INSERT INTO `bb_profile_lang` VALUES (9, 2, 'TWITTER', '', '');
INSERT INTO `bb_profile_lang` VALUES (10, 1, 'SKYPE', '', '');
INSERT INTO `bb_profile_lang` VALUES (10, 2, 'SKYPE', '', '');
INSERT INTO `bb_profile_lang` VALUES (11, 1, 'YOUTUBE', '', '');
INSERT INTO `bb_profile_lang` VALUES (11, 2, 'YOUTUBE', '', '');
INSERT INTO `bb_profile_lang` VALUES (12, 1, 'GOOGLEPLUS', '', '');
INSERT INTO `bb_profile_lang` VALUES (12, 2, 'GOOGLEPLUS', '', '');

-- ----------------------------
-- Table structure for bb_ranks
-- ----------------------------
DROP TABLE IF EXISTS `bb_ranks`;
CREATE TABLE `bb_ranks`  (
  `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_ranks
-- ----------------------------
INSERT INTO `bb_ranks` VALUES (1, '网站管理员', 0, 1, '');

-- ----------------------------
-- Table structure for bb_reports
-- ----------------------------
DROP TABLE IF EXISTS `bb_reports`;
CREATE TABLE `bb_reports`  (
  `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `report_text` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `reported_post_text` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE,
  INDEX `pm_id`(`pm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_reports_reasons
-- ----------------------------
DROP TABLE IF EXISTS `bb_reports_reasons`;
CREATE TABLE `bb_reports_reasons`  (
  `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`reason_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_reports_reasons
-- ----------------------------
INSERT INTO `bb_reports_reasons` VALUES (1, 'warez', '此贴包含了非法或盗版软件的链接。', 1);
INSERT INTO `bb_reports_reasons` VALUES (2, 'spam', '此贴的唯一目的是为其它网站或产品做广告。', 2);
INSERT INTO `bb_reports_reasons` VALUES (3, 'off_topic', '此帖跑题了。', 3);
INSERT INTO `bb_reports_reasons` VALUES (4, 'other', '举报原因没有适用的条目，请填写更多信息。', 4);

-- ----------------------------
-- Table structure for bb_search_results
-- ----------------------------
DROP TABLE IF EXISTS `bb_search_results`;
CREATE TABLE `bb_search_results`  (
  `search_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `search_keywords` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_search_wordlist
-- ----------------------------
DROP TABLE IF EXISTS `bb_search_wordlist`;
CREATE TABLE `bb_search_wordlist`  (
  `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`word_id`) USING BTREE,
  UNIQUE INDEX `wrd_txt`(`word_text`) USING BTREE,
  INDEX `wrd_cnt`(`word_count`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_search_wordlist
-- ----------------------------
INSERT INTO `bb_search_wordlist` VALUES (1, '这', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (2, '是', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (3, '新', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (4, '安', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (5, '装', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (6, '好', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (7, '的', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (8, 'phpbb3', 0, 2);
INSERT INTO `bb_search_wordlist` VALUES (9, '论', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (10, '坛', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (11, '中', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (12, '一', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (13, '个', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (14, '样', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (15, '本', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (16, '帖', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (17, '子', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (18, '您', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (19, '可', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (20, '以', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (21, '删', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (22, '除', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (23, '主', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (24, '题', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (25, '甚', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (26, '至', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (27, '版', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (28, '面', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (29, '因', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (30, '为', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (31, '切', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (32, '看', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (33, '起', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (34, '来', 0, 2);
INSERT INTO `bb_search_wordlist` VALUES (35, '都', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (36, '运', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (37, '转', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (38, '正', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (39, '常', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (40, '在', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (41, '整', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (42, '过', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (43, '程', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (44, '你', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (45, '第', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (46, '分', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (47, '区', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (48, '和', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (49, '已', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (50, '经', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (51, '给', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (52, '与', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (53, '了', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (54, '适', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (55, '当', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (56, '权', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (57, '限', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (58, '预', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (59, '定', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (60, '义', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (61, '用', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (62, '户', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (63, '组', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (64, '管', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (65, '理', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (66, '员', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (67, '蜘', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (68, '蛛', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (69, '及', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (70, '总', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (71, '游', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (72, '客', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (73, '注', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (74, '册', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (75, 'coppa', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (76, '如', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (77, '果', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (78, '选', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (79, '择', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (80, '不', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (81, '要', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (82, '忘', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (83, '记', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (84, '创', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (85, '建', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (86, '我', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (87, '们', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (88, '议', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (89, '重', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (90, '命', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (91, '名', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (92, '并', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (93, '复', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (94, '制', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (95, '到', 0, 2);
INSERT INTO `bb_search_wordlist` VALUES (96, '之', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (97, '后', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (98, '所', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (99, '祝', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (100, '玩', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (101, '快', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (102, '乐', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (103, '欢', 0, 1);
INSERT INTO `bb_search_wordlist` VALUES (104, '迎', 0, 1);

-- ----------------------------
-- Table structure for bb_search_wordmatch
-- ----------------------------
DROP TABLE IF EXISTS `bb_search_wordmatch`;
CREATE TABLE `bb_search_wordmatch`  (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `un_mtch`(`word_id`, `post_id`, `title_match`) USING BTREE,
  INDEX `word_id`(`word_id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_search_wordmatch
-- ----------------------------
INSERT INTO `bb_search_wordmatch` VALUES (1, 1, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 2, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 3, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 4, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 5, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 6, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 7, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 8, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 8, 1);
INSERT INTO `bb_search_wordmatch` VALUES (1, 9, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 10, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 11, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 12, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 13, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 14, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 15, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 16, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 17, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 18, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 19, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 20, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 21, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 22, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 23, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 24, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 25, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 26, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 27, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 28, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 29, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 30, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 31, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 32, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 33, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 34, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 34, 1);
INSERT INTO `bb_search_wordmatch` VALUES (1, 35, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 36, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 37, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 38, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 39, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 40, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 41, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 42, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 43, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 44, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 45, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 46, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 47, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 48, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 49, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 50, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 51, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 52, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 53, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 54, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 55, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 56, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 57, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 58, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 59, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 60, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 61, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 62, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 63, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 64, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 65, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 66, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 67, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 68, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 69, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 70, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 71, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 72, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 73, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 74, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 75, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 76, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 77, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 78, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 79, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 80, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 81, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 82, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 83, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 84, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 85, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 86, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 87, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 88, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 89, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 90, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 91, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 92, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 93, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 94, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 95, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 95, 1);
INSERT INTO `bb_search_wordmatch` VALUES (1, 96, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 97, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 98, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 99, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 100, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 101, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 102, 0);
INSERT INTO `bb_search_wordmatch` VALUES (1, 103, 1);
INSERT INTO `bb_search_wordmatch` VALUES (1, 104, 1);

-- ----------------------------
-- Table structure for bb_sessions
-- ----------------------------
DROP TABLE IF EXISTS `bb_sessions`;
CREATE TABLE `bb_sessions`  (
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `session_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`session_id`) USING BTREE,
  INDEX `session_time`(`session_time`) USING BTREE,
  INDEX `session_user_id`(`session_user_id`) USING BTREE,
  INDEX `session_fid`(`session_forum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_sessions
-- ----------------------------
INSERT INTO `bb_sessions` VALUES ('10a2cb5724571286806bd883216c25e6', 2, 1554648014, 1554648013, 1554648613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', 'index.php', 1, 0, 1, 0);
INSERT INTO `bb_sessions` VALUES ('5bd775f5b384779bc54d64143d465d35', 1, 1554648013, 1554648013, 1554648013, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', 'install/app.php/install', 1, 0, 0, 0);
INSERT INTO `bb_sessions` VALUES ('9ed1e300b2dbf428f0df9433bc7c211f', 1, 1554648663, 1554648663, 1554648663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', 'index.php', 1, 0, 0, 0);
INSERT INTO `bb_sessions` VALUES ('e8345ae03afffa201caec68e13be315f', 1, 1554648006, 1554648006, 1554648006, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', '', 'install/app.php/install', 1, 0, 0, 0);

-- ----------------------------
-- Table structure for bb_sessions_keys
-- ----------------------------
DROP TABLE IF EXISTS `bb_sessions_keys`;
CREATE TABLE `bb_sessions_keys`  (
  `key_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`key_id`, `user_id`) USING BTREE,
  INDEX `last_login`(`last_login`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_sitelist
-- ----------------------------
DROP TABLE IF EXISTS `bb_sitelist`;
CREATE TABLE `bb_sitelist`  (
  `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`site_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_smilies
-- ----------------------------
DROP TABLE IF EXISTS `bb_smilies`;
CREATE TABLE `bb_smilies`  (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`smiley_id`) USING BTREE,
  INDEX `display_on_post`(`display_on_posting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_smilies
-- ----------------------------
INSERT INTO `bb_smilies` VALUES (1, ':D', '特开心', 'icon_e_biggrin.gif', 15, 17, 1, 1);
INSERT INTO `bb_smilies` VALUES (2, ':-D', '特开心', 'icon_e_biggrin.gif', 15, 17, 2, 1);
INSERT INTO `bb_smilies` VALUES (3, ':grin:', '特开心', 'icon_e_biggrin.gif', 15, 17, 3, 1);
INSERT INTO `bb_smilies` VALUES (4, ':)', '微笑', 'icon_e_smile.gif', 15, 17, 4, 1);
INSERT INTO `bb_smilies` VALUES (5, ':-)', '微笑', 'icon_e_smile.gif', 15, 17, 5, 1);
INSERT INTO `bb_smilies` VALUES (6, ':smile:', '微笑', 'icon_e_smile.gif', 15, 17, 6, 1);
INSERT INTO `bb_smilies` VALUES (7, ';)', '眨眼', 'icon_e_wink.gif', 15, 17, 7, 1);
INSERT INTO `bb_smilies` VALUES (8, ';-)', '眨眼', 'icon_e_wink.gif', 15, 17, 8, 1);
INSERT INTO `bb_smilies` VALUES (9, ':wink:', '眨眼', 'icon_e_wink.gif', 15, 17, 9, 1);
INSERT INTO `bb_smilies` VALUES (10, ':(', '忧郁', 'icon_e_sad.gif', 15, 17, 10, 1);
INSERT INTO `bb_smilies` VALUES (11, ':-(', '忧郁', 'icon_e_sad.gif', 15, 17, 11, 1);
INSERT INTO `bb_smilies` VALUES (12, ':sad:', '忧郁', 'icon_e_sad.gif', 15, 17, 12, 1);
INSERT INTO `bb_smilies` VALUES (13, ':o', '惊讶', 'icon_e_surprised.gif', 15, 17, 13, 1);
INSERT INTO `bb_smilies` VALUES (14, ':-o', '惊讶', 'icon_e_surprised.gif', 15, 17, 14, 1);
INSERT INTO `bb_smilies` VALUES (15, ':eek:', '惊讶', 'icon_e_surprised.gif', 15, 17, 15, 1);
INSERT INTO `bb_smilies` VALUES (16, ':shock:', '震撼', 'icon_eek.gif', 15, 17, 16, 1);
INSERT INTO `bb_smilies` VALUES (17, ':?', '疑惑', 'icon_e_confused.gif', 15, 17, 17, 1);
INSERT INTO `bb_smilies` VALUES (18, ':-?', '疑惑', 'icon_e_confused.gif', 15, 17, 18, 1);
INSERT INTO `bb_smilies` VALUES (19, ':???:', '疑惑', 'icon_e_confused.gif', 15, 17, 19, 1);
INSERT INTO `bb_smilies` VALUES (20, '8-)', '酷！', 'icon_cool.gif', 15, 17, 20, 1);
INSERT INTO `bb_smilies` VALUES (21, ':cool:', '酷！', 'icon_cool.gif', 15, 17, 21, 1);
INSERT INTO `bb_smilies` VALUES (22, ':lol:', '大笑', 'icon_lol.gif', 15, 17, 22, 1);
INSERT INTO `bb_smilies` VALUES (23, ':x', '抓狂', 'icon_mad.gif', 15, 17, 23, 1);
INSERT INTO `bb_smilies` VALUES (24, ':-x', '抓狂', 'icon_mad.gif', 15, 17, 24, 1);
INSERT INTO `bb_smilies` VALUES (25, ':mad:', '抓狂', 'icon_mad.gif', 15, 17, 25, 1);
INSERT INTO `bb_smilies` VALUES (26, ':P', '冷笑', 'icon_razz.gif', 15, 17, 26, 1);
INSERT INTO `bb_smilies` VALUES (27, ':-P', '冷笑', 'icon_razz.gif', 15, 17, 27, 1);
INSERT INTO `bb_smilies` VALUES (28, ':razz:', '冷笑', 'icon_razz.gif', 15, 17, 28, 1);
INSERT INTO `bb_smilies` VALUES (29, ':oops:', '困窘', 'icon_redface.gif', 15, 17, 29, 1);
INSERT INTO `bb_smilies` VALUES (30, ':cry:', '哭泣或非常伤心', 'icon_cry.gif', 15, 17, 30, 1);
INSERT INTO `bb_smilies` VALUES (31, ':evil:', '邪恶或疯狂', 'icon_evil.gif', 15, 17, 31, 1);
INSERT INTO `bb_smilies` VALUES (32, ':twisted:', '扭曲的恶魔', 'icon_twisted.gif', 15, 17, 32, 1);
INSERT INTO `bb_smilies` VALUES (33, ':roll:', '滴溜的眼睛', 'icon_rolleyes.gif', 15, 17, 33, 1);
INSERT INTO `bb_smilies` VALUES (34, ':!:', '感叹', 'icon_exclaim.gif', 15, 17, 34, 1);
INSERT INTO `bb_smilies` VALUES (35, ':?:', '疑问', 'icon_question.gif', 15, 17, 35, 1);
INSERT INTO `bb_smilies` VALUES (36, ':idea:', '想法', 'icon_idea.gif', 15, 17, 36, 1);
INSERT INTO `bb_smilies` VALUES (37, ':arrow:', '箭头', 'icon_arrow.gif', 15, 17, 37, 1);
INSERT INTO `bb_smilies` VALUES (38, ':|', '中立', 'icon_neutral.gif', 15, 17, 38, 1);
INSERT INTO `bb_smilies` VALUES (39, ':-|', '中立', 'icon_neutral.gif', 15, 17, 39, 1);
INSERT INTO `bb_smilies` VALUES (40, ':mrgreen:', '绿先生', 'icon_mrgreen.gif', 15, 17, 40, 1);
INSERT INTO `bb_smilies` VALUES (41, ':geek:', '滑稽', 'icon_e_geek.gif', 17, 17, 41, 1);
INSERT INTO `bb_smilies` VALUES (42, ':ugeek:', '搞笑', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- ----------------------------
-- Table structure for bb_styles
-- ----------------------------
DROP TABLE IF EXISTS `bb_styles`;
CREATE TABLE `bb_styles`  (
  `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `style_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `style_parent_tree` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`) USING BTREE,
  UNIQUE INDEX `style_name`(`style_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_styles
-- ----------------------------
INSERT INTO `bb_styles` VALUES (1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', '//g=', 0, '');
INSERT INTO `bb_styles` VALUES (2, 'CleanSilver', '© MannixMD, @MannixMD', 1, 'CleanSilver', '//g=', 1, 'prosilver');

-- ----------------------------
-- Table structure for bb_teampage
-- ----------------------------
DROP TABLE IF EXISTS `bb_teampage`;
CREATE TABLE `bb_teampage`  (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `teampage_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`teampage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_teampage
-- ----------------------------
INSERT INTO `bb_teampage` VALUES (1, 5, '', 1, 0);
INSERT INTO `bb_teampage` VALUES (2, 4, '', 2, 0);

-- ----------------------------
-- Table structure for bb_topics
-- ----------------------------
DROP TABLE IF EXISTS `bb_topics`;
CREATE TABLE `bb_topics`  (
  `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_status` tinyint(3) NOT NULL DEFAULT 0,
  `topic_type` tinyint(3) NOT NULL DEFAULT 0,
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `poll_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_max_options` tinyint(4) NOT NULL DEFAULT 1,
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `topic_visibility` tinyint(3) NOT NULL DEFAULT 0,
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_delete_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`topic_id`) USING BTREE,
  INDEX `forum_id`(`forum_id`) USING BTREE,
  INDEX `forum_id_type`(`forum_id`, `topic_type`) USING BTREE,
  INDEX `last_post_time`(`topic_last_post_time`) USING BTREE,
  INDEX `fid_time_moved`(`forum_id`, `topic_last_post_time`, `topic_moved_id`) USING BTREE,
  INDEX `topic_visibility`(`topic_visibility`) USING BTREE,
  INDEX `forum_vis_last`(`forum_id`, `topic_visibility`, `topic_last_post_id`) USING BTREE,
  INDEX `latest_topics`(`forum_id`, `topic_last_post_time`, `topic_last_post_id`, `topic_moved_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_topics
-- ----------------------------
INSERT INTO `bb_topics` VALUES (1, 2, 0, 0, 0, '欢迎来到 phpBB3', 2, 1554647964, 0, 0, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', '欢迎来到 phpBB3', 1554647964, 972086460, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);

-- ----------------------------
-- Table structure for bb_topics_posted
-- ----------------------------
DROP TABLE IF EXISTS `bb_topics_posted`;
CREATE TABLE `bb_topics_posted`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `topic_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_topics_posted
-- ----------------------------
INSERT INTO `bb_topics_posted` VALUES (2, 1, 1);

-- ----------------------------
-- Table structure for bb_topics_track
-- ----------------------------
DROP TABLE IF EXISTS `bb_topics_track`;
CREATE TABLE `bb_topics_track`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `topic_id`) USING BTREE,
  INDEX `forum_id`(`forum_id`) USING BTREE,
  INDEX `topic_id`(`topic_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_topics_watch
-- ----------------------------
DROP TABLE IF EXISTS `bb_topics_watch`;
CREATE TABLE `bb_topics_watch`  (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `topic_id`(`topic_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `notify_stat`(`notify_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_user_group
-- ----------------------------
DROP TABLE IF EXISTS `bb_user_group`;
CREATE TABLE `bb_user_group`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `group_leader`(`group_leader`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_user_group
-- ----------------------------
INSERT INTO `bb_user_group` VALUES (1, 1, 0, 0);
INSERT INTO `bb_user_group` VALUES (2, 2, 0, 0);
INSERT INTO `bb_user_group` VALUES (4, 2, 0, 0);
INSERT INTO `bb_user_group` VALUES (5, 2, 1, 0);
INSERT INTO `bb_user_group` VALUES (6, 3, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 4, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 5, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 6, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 7, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 8, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 9, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 10, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 11, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 12, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 13, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 14, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 15, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 16, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 17, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 18, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 19, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 20, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 21, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 22, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 23, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 24, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 25, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 26, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 27, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 28, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 29, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 30, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 31, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 32, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 33, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 34, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 35, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 36, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 37, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 38, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 39, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 40, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 41, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 42, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 43, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 44, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 45, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 46, 0, 0);
INSERT INTO `bb_user_group` VALUES (6, 47, 0, 0);

-- ----------------------------
-- Table structure for bb_user_notifications
-- ----------------------------
DROP TABLE IF EXISTS `bb_user_notifications`;
CREATE TABLE `bb_user_notifications`  (
  `item_type` varchar(165) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `method` varchar(165) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  UNIQUE INDEX `itm_usr_mthd`(`item_type`, `item_id`, `user_id`, `method`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `uid_itm_id`(`user_id`, `item_id`) USING BTREE,
  INDEX `usr_itm_tpe`(`user_id`, `item_type`, `item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_user_notifications
-- ----------------------------
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 2, 'notification.method.board', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 2, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 3, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 4, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 5, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 6, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 7, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 8, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 9, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 10, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 11, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 12, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 13, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 14, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 15, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 16, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 17, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 18, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 19, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 20, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 21, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 22, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 23, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 24, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 25, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 26, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 27, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 28, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 29, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 30, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 31, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 32, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 33, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 34, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 35, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 36, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 37, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 38, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 39, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 40, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 41, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 42, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 43, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 44, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 45, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 46, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.post', 0, 47, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 2, 'notification.method.board', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 2, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 3, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 4, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 5, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 6, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 7, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 8, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 9, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 10, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 11, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 12, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 13, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 14, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 15, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 16, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 17, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 18, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 19, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 20, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 21, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 22, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 23, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 24, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 25, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 26, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 27, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 28, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 29, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 30, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 31, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 32, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 33, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 34, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 35, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 36, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 37, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 38, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 39, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 40, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 41, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 42, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 43, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 44, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 45, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 46, 'notification.method.email', 1);
INSERT INTO `bb_user_notifications` VALUES ('notification.type.topic', 0, 47, 'notification.method.email', 1);

-- ----------------------------
-- Table structure for bb_users
-- ----------------------------
DROP TABLE IF EXISTS `bb_users`;
CREATE TABLE `bb_users`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT 0,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 3,
  `user_permissions` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT 0,
  `user_birthday` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_lastpage` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_warnings` tinyint(4) NOT NULL DEFAULT 0,
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT 0,
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT 0,
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_lang` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `user_colour` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_unread_privmsg` int(4) NOT NULL DEFAULT 0,
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_full_folder` int(11) NOT NULL DEFAULT -3,
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_topic_sortby_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_post_sortby_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_notify_type` tinyint(4) NOT NULL DEFAULT 0,
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT 230271,
  `user_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `user_sig` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `user_reminded` tinyint(4) NOT NULL DEFAULT 0,
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username_clean`(`username_clean`) USING BTREE,
  INDEX `user_birthday`(`user_birthday`) USING BTREE,
  INDEX `user_email_hash`(`user_email_hash`) USING BTREE,
  INDEX `user_type`(`user_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bb_users
-- ----------------------------
INSERT INTO `bb_users` VALUES (1, 2, 1, '00000000000g13ydq8\nhwby9w000000\nhwby9w000000', 0, '', 1554647964, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'qprl2akowmaafq79', 1, 0, 0);
INSERT INTO `bb_users` VALUES (2, 3, 5, 'zik0zjzik0zjzik0zg\nhwby9w000000\nzik0zjzih7uo', 0, '127.0.0.1', 1554647964, 'admin', 'admin', '$2y$10$lk46w.4BKrp9RvRCM07wj.9u1fiUqm1DLmxXf2QmEloAx8HtrZIOu', 0, 'wangchenphp@sina.com', 332556341620, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 1, 'zh_cmn_hans', '', '|Y年 M j日| H:i', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a588rqi1pyzpr1xj', 1, 0, 0);
INSERT INTO `bb_users` VALUES (3, 2, 6, '', 0, '', 1554647967, 'AdsBot [Google]', 'adsbot [google]', '', 1554647967, '', 0, '', 0, 1554647967, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '150cwozm7m1u669v', 0, 0, 0);
INSERT INTO `bb_users` VALUES (4, 2, 6, '', 0, '', 1554647967, 'Alexa [Bot]', 'alexa [bot]', '', 1554647967, '', 0, '', 0, 1554647967, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8vtke46w86uhqaqm', 0, 0, 0);
INSERT INTO `bb_users` VALUES (5, 2, 6, '', 0, '', 1554647967, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1554647967, '', 0, '', 0, 1554647967, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'dxo2wiro8oqb65c6', 0, 0, 0);
INSERT INTO `bb_users` VALUES (6, 2, 6, '', 0, '', 1554647968, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1554647968, '', 0, '', 0, 1554647968, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ozyap5ad4hfy6n4y', 0, 0, 0);
INSERT INTO `bb_users` VALUES (7, 2, 6, '', 0, '', 1554647968, 'Baidu [Spider]', 'baidu [spider]', '', 1554647968, '', 0, '', 0, 1554647968, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ild759758nni4sxp', 0, 0, 0);
INSERT INTO `bb_users` VALUES (8, 2, 6, '', 0, '', 1554647968, 'Bing [Bot]', 'bing [bot]', '', 1554647968, '', 0, '', 0, 1554647968, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8gf0xkrnjcuccas3', 0, 0, 0);
INSERT INTO `bb_users` VALUES (9, 2, 6, '', 0, '', 1554647968, 'Exabot [Bot]', 'exabot [bot]', '', 1554647968, '', 0, '', 0, 1554647968, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ecvtx0ewqk60bm1t', 0, 0, 0);
INSERT INTO `bb_users` VALUES (10, 2, 6, '', 0, '', 1554647968, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1554647968, '', 0, '', 0, 1554647968, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3qht6sw9b9tnsxzc', 0, 0, 0);
INSERT INTO `bb_users` VALUES (11, 2, 6, '', 0, '', 1554647969, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1554647969, '', 0, '', 0, 1554647969, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'm8jbddgiy17cesgl', 0, 0, 0);
INSERT INTO `bb_users` VALUES (12, 2, 6, '', 0, '', 1554647969, 'Francis [Bot]', 'francis [bot]', '', 1554647969, '', 0, '', 0, 1554647969, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'xziu2pu47mtwg5ou', 0, 0, 0);
INSERT INTO `bb_users` VALUES (13, 2, 6, '', 0, '', 1554647969, 'Gigabot [Bot]', 'gigabot [bot]', '', 1554647969, '', 0, '', 0, 1554647969, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8p5xewvkazu37lec', 0, 0, 0);
INSERT INTO `bb_users` VALUES (14, 2, 6, '', 0, '', 1554647970, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1554647970, '', 0, '', 0, 1554647970, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5511e31t01vqwerd', 0, 0, 0);
INSERT INTO `bb_users` VALUES (15, 2, 6, '', 0, '', 1554647970, 'Google Desktop', 'google desktop', '', 1554647970, '', 0, '', 0, 1554647970, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '23g01c6zcpf69jk9', 0, 0, 0);
INSERT INTO `bb_users` VALUES (16, 2, 6, '', 0, '', 1554647970, 'Google Feedfetcher', 'google feedfetcher', '', 1554647970, '', 0, '', 0, 1554647970, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'p3euriu6ytcxoay5', 0, 0, 0);
INSERT INTO `bb_users` VALUES (17, 2, 6, '', 0, '', 1554647971, 'Google [Bot]', 'google [bot]', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'v3pllctga3wyr0m8', 0, 0, 0);
INSERT INTO `bb_users` VALUES (18, 2, 6, '', 0, '', 1554647971, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '14yve304ebb60x09', 0, 0, 0);
INSERT INTO `bb_users` VALUES (19, 2, 6, '', 0, '', 1554647971, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'xngdgi52nat4n39r', 0, 0, 0);
INSERT INTO `bb_users` VALUES (20, 2, 6, '', 0, '', 1554647971, 'IBM Research [Bot]', 'ibm research [bot]', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bev8u59rdrjo2dpp', 0, 0, 0);
INSERT INTO `bb_users` VALUES (21, 2, 6, '', 0, '', 1554647971, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'vpa2vuelb9u7u79o', 0, 0, 0);
INSERT INTO `bb_users` VALUES (22, 2, 6, '', 0, '', 1554647971, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1554647971, '', 0, '', 0, 1554647971, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'tqrjgmt34zmga3m2', 0, 0, 0);
INSERT INTO `bb_users` VALUES (23, 2, 6, '', 0, '', 1554647972, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9bf1wxgyv520jau6', 0, 0, 0);
INSERT INTO `bb_users` VALUES (24, 2, 6, '', 0, '', 1554647972, 'Metager [Bot]', 'metager [bot]', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'iqtm30jnr4nmjkx8', 0, 0, 0);
INSERT INTO `bb_users` VALUES (25, 2, 6, '', 0, '', 1554647972, 'MSN NewsBlogs', 'msn newsblogs', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6uybyncz7on1vrx2', 0, 0, 0);
INSERT INTO `bb_users` VALUES (26, 2, 6, '', 0, '', 1554647972, 'MSN [Bot]', 'msn [bot]', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'sa9m90xjeyqs3n0r', 0, 0, 0);
INSERT INTO `bb_users` VALUES (27, 2, 6, '', 0, '', 1554647972, 'MSNbot Media', 'msnbot media', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'jqzjndn8hujngjo6', 0, 0, 0);
INSERT INTO `bb_users` VALUES (28, 2, 6, '', 0, '', 1554647972, 'Nutch [Bot]', 'nutch [bot]', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'hvtqk39q53c0hm5d', 0, 0, 0);
INSERT INTO `bb_users` VALUES (29, 2, 6, '', 0, '', 1554647972, 'Online link [Validator]', 'online link [validator]', '', 1554647972, '', 0, '', 0, 1554647972, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'tay3fmn6qfaogfnx', 0, 0, 0);
INSERT INTO `bb_users` VALUES (30, 2, 6, '', 0, '', 1554647973, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'gadnmpf15r52wdv8', 0, 0, 0);
INSERT INTO `bb_users` VALUES (31, 2, 6, '', 0, '', 1554647973, 'Sensis [Crawler]', 'sensis [crawler]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'biajt841wz5himgj', 0, 0, 0);
INSERT INTO `bb_users` VALUES (32, 2, 6, '', 0, '', 1554647973, 'SEO Crawler', 'seo crawler', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ruwlepha2j1mwzg2', 0, 0, 0);
INSERT INTO `bb_users` VALUES (33, 2, 6, '', 0, '', 1554647973, 'Seoma [Crawler]', 'seoma [crawler]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'wvu6nh3d97dxdoy3', 0, 0, 0);
INSERT INTO `bb_users` VALUES (34, 2, 6, '', 0, '', 1554647973, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd7h1dnt2lo6xbjf7', 0, 0, 0);
INSERT INTO `bb_users` VALUES (35, 2, 6, '', 0, '', 1554647973, 'Snappy [Bot]', 'snappy [bot]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'pl0nus0xvqp51113', 0, 0, 0);
INSERT INTO `bb_users` VALUES (36, 2, 6, '', 0, '', 1554647973, 'Steeler [Crawler]', 'steeler [crawler]', '', 1554647973, '', 0, '', 0, 1554647973, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'jjxmbfmqsals6hp6', 0, 0, 0);
INSERT INTO `bb_users` VALUES (37, 2, 6, '', 0, '', 1554647974, 'Telekom [Bot]', 'telekom [bot]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b1279h64ponmym6k', 0, 0, 0);
INSERT INTO `bb_users` VALUES (38, 2, 6, '', 0, '', 1554647974, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'clizpd2ec700wucg', 0, 0, 0);
INSERT INTO `bb_users` VALUES (39, 2, 6, '', 0, '', 1554647974, 'Voyager [Bot]', 'voyager [bot]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4rzqaqr46f01twiq', 0, 0, 0);
INSERT INTO `bb_users` VALUES (40, 2, 6, '', 0, '', 1554647974, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'el7v94oc2340qsf5', 0, 0, 0);
INSERT INTO `bb_users` VALUES (41, 2, 6, '', 0, '', 1554647974, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2fh0pt6bxb8mmsgf', 0, 0, 0);
INSERT INTO `bb_users` VALUES (42, 2, 6, '', 0, '', 1554647974, 'W3C [Validator]', 'w3c [validator]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'v1um6jp1ub0gkiya', 0, 0, 0);
INSERT INTO `bb_users` VALUES (43, 2, 6, '', 0, '', 1554647974, 'YaCy [Bot]', 'yacy [bot]', '', 1554647974, '', 0, '', 0, 1554647974, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cpk6xzwr1fowjqdy', 0, 0, 0);
INSERT INTO `bb_users` VALUES (44, 2, 6, '', 0, '', 1554647975, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1554647975, '', 0, '', 0, 1554647975, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'q00qso4i0a0zzwty', 0, 0, 0);
INSERT INTO `bb_users` VALUES (45, 2, 6, '', 0, '', 1554647975, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1554647975, '', 0, '', 0, 1554647975, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '79bn1szcejp6xhr4', 0, 0, 0);
INSERT INTO `bb_users` VALUES (46, 2, 6, '', 0, '', 1554647975, 'Yahoo [Bot]', 'yahoo [bot]', '', 1554647975, '', 0, '', 0, 1554647975, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '5yxskk6fw0ljj79i', 0, 0, 0);
INSERT INTO `bb_users` VALUES (47, 2, 6, '', 0, '', 1554647975, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1554647975, '', 0, '', 0, 1554647975, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'zh_cmn_hans', 'UTC', '|Y年 M j日| H:i', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4oar892ri9w6dbf8', 0, 0, 0);

-- ----------------------------
-- Table structure for bb_warnings
-- ----------------------------
DROP TABLE IF EXISTS `bb_warnings`;
CREATE TABLE `bb_warnings`  (
  `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`warning_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_words
-- ----------------------------
DROP TABLE IF EXISTS `bb_words`;
CREATE TABLE `bb_words`  (
  `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bb_zebra
-- ----------------------------
DROP TABLE IF EXISTS `bb_zebra`;
CREATE TABLE `bb_zebra`  (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `zebra_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
