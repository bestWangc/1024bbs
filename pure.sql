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

 Date: 13/04/2019 11:33:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_article
-- ----------------------------
DROP TABLE IF EXISTS `pp_article`;
CREATE TABLE `pp_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章内容',
  `torrent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '磁力连接',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_block
-- ----------------------------
DROP TABLE IF EXISTS `pp_block`;
CREATE TABLE `pp_block`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版块title',
  `introduce` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版块介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_block
-- ----------------------------
INSERT INTO `pp_block` VALUES (1, '亞洲無碼原創區', '發布亞洲最新無修正資訊片，亞洲無碼大聯盟');
INSERT INTO `pp_block` VALUES (2, '亞洲有碼原創區', '發布亞洲最新有修正資訊片');
INSERT INTO `pp_block` VALUES (3, '中字原創區', '發布各類中文字幕成人資訊片');
INSERT INTO `pp_block` VALUES (4, '歐美原創區', '發布純正的歐美成人資訊片');
INSERT INTO `pp_block` VALUES (5, '國產原創區', '發布純正的國產成人，三級資訊片');
INSERT INTO `pp_block` VALUES (6, '動漫原創區', '發布任何H動畫漫畫');
INSERT INTO `pp_block` VALUES (7, '成人文學交流區', '發布成人文章小說');

-- ----------------------------
-- Table structure for pp_kalman
-- ----------------------------
DROP TABLE IF EXISTS `pp_kalman`;
CREATE TABLE `pp_kalman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kalman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡密',
  `day` int(3) NOT NULL COMMENT '卡密对应天数',
  `create_time` int(11) NOT NULL COMMENT '卡密创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_order
-- ----------------------------
DROP TABLE IF EXISTS `pp_order`;
CREATE TABLE `pp_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `amount` int(5) NOT NULL COMMENT '金额',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流水编号',
  `way` tinyint(1) NOT NULL COMMENT '充值方式,0-微信,1-支付宝',
  `status` tinyint(1) NOT NULL COMMENT '充值状态，2- 未付款，0-失败，1-成功',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值返回json',
  `created_time` int(11) NOT NULL,
  `updated_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '卡密购买订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_users
-- ----------------------------
DROP TABLE IF EXISTS `pp_users`;
CREATE TABLE `pp_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录帐号',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `vip_dayline` int(3) NOT NULL COMMENT '会员天数',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX ```account```(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
