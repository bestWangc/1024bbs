/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 193.112.108.190:3306
 Source Schema         : pure

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 01/05/2019 14:47:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_block
-- ----------------------------
DROP TABLE IF EXISTS `pp_block`;
CREATE TABLE `pp_block`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版块title',
  `introduce` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版块介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_block
-- ----------------------------
INSERT INTO `pp_block` VALUES (3, '最新合集', '發布新片合集');
INSERT INTO `pp_block` VALUES (5, '亞洲無碼', '發布亞洲最新有修正資訊片');
INSERT INTO `pp_block` VALUES (7, '歐美新片', '發布純正的歐美成人資訊片');
INSERT INTO `pp_block` VALUES (14, '唯美寫真', '發佈美圖寫真');
INSERT INTO `pp_block` VALUES (15, '自拍偷拍', '發佈網友自拍偷拍');
INSERT INTO `pp_block` VALUES (16, '露出激情', '發佈網友露出激情');
INSERT INTO `pp_block` VALUES (17, '成人小說', '成人文學作品');
INSERT INTO `pp_block` VALUES (21, '絲襪美腿', '發佈絲襪美腿系列');
INSERT INTO `pp_block` VALUES (106, '動漫卡通', '發布任何H動畫漫畫');

SET FOREIGN_KEY_CHECKS = 1;
