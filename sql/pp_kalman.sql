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

 Date: 01/05/2019 14:47:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_kalman
-- ----------------------------
DROP TABLE IF EXISTS `pp_kalman`;
CREATE TABLE `pp_kalman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kalman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '卡密',
  `day` int(11) NOT NULL COMMENT '卡密截止日期',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '卡密创建时间',
  `query_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '查询密码',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_kalman
-- ----------------------------
INSERT INTO `pp_kalman` VALUES (1, 'afdasdf', 1, 1, 1556349350, '', '0');
INSERT INTO `pp_kalman` VALUES (9, '08f35bf4fa0f8ac07070785920c7e5fe', 1, 1, 1556682550, 'test4', '2019050154535557');
INSERT INTO `pp_kalman` VALUES (10, '8337e4717d06f4e837c83fb25eea73af', -1, 1, 1556683254, 'tttttt', '2019050153101102');
INSERT INTO `pp_kalman` VALUES (11, 'c4c7da3386de6b84f957f6fca687bb8c', 1556771847, 1, 1556685448, 'ggggg', '2019050155100485');

SET FOREIGN_KEY_CHECKS = 1;
