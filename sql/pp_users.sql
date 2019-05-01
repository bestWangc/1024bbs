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

 Date: 01/05/2019 14:47:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_users
-- ----------------------------
DROP TABLE IF EXISTS `pp_users`;
CREATE TABLE `pp_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录帐号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `vip_dayline` int(11) NOT NULL COMMENT '会员截止日期',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX ```account```(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_users
-- ----------------------------
INSERT INTO `pp_users` VALUES (1, '1024admin', 'e98fd6c5d2ec07a4da1b3840d4eafac9', -1, '888888@sina.com', 1555826448);

SET FOREIGN_KEY_CHECKS = 1;
