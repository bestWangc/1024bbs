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

 Date: 01/05/2019 14:47:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_price
-- ----------------------------
DROP TABLE IF EXISTS `pp_price`;
CREATE TABLE `pp_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡类型',
  `price` int(10) NOT NULL COMMENT '价格',
  `time` int(11) NOT NULL COMMENT '天数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_price
-- ----------------------------
INSERT INTO `pp_price` VALUES (1, 'day', 2, 1);
INSERT INTO `pp_price` VALUES (2, 'week', 12, 7);
INSERT INTO `pp_price` VALUES (3, 'month', 32, 30);
INSERT INTO `pp_price` VALUES (4, 'threeMonth', 62, 90);
INSERT INTO `pp_price` VALUES (5, 'year', 200, 365);
INSERT INTO `pp_price` VALUES (6, 'forever', 428, -1);

SET FOREIGN_KEY_CHECKS = 1;
