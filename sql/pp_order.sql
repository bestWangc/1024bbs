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

 Date: 01/05/2019 14:47:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pp_order
-- ----------------------------
DROP TABLE IF EXISTS `pp_order`;
CREATE TABLE `pp_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(5) NOT NULL COMMENT '金额',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流水编号',
  `way` tinyint(1) NOT NULL COMMENT '充值方式,0-微信,1-支付宝',
  `status` tinyint(1) NOT NULL COMMENT '充值状态，2- 未付款，0-失败，1-成功',
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值返回json',
  `created_time` int(11) NOT NULL,
  `updated_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '卡密购买订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_order
-- ----------------------------
INSERT INTO `pp_order` VALUES (6, 2, NULL, '2019050199519753', 1, 2, NULL, 1556679996, NULL);
INSERT INTO `pp_order` VALUES (7, 2, NULL, '2019050198521015', 1, 2, NULL, 1556680059, NULL);
INSERT INTO `pp_order` VALUES (8, 2, NULL, '2019050110010010', 1, 2, NULL, 1556680173, NULL);
INSERT INTO `pp_order` VALUES (9, 2, NULL, '2019050110152975', 1, 2, NULL, 1556680222, NULL);
INSERT INTO `pp_order` VALUES (10, 2, NULL, '2019050148484950', 1, 2, NULL, 1556680288, NULL);
INSERT INTO `pp_order` VALUES (11, 2, NULL, '2019050154984852', 1, 2, NULL, 1556680374, NULL);
INSERT INTO `pp_order` VALUES (12, 2, NULL, '2019050197551024', 1, 2, NULL, 1556680426, NULL);
INSERT INTO `pp_order` VALUES (13, 2, NULL, '2019050154535557', 1, 2, NULL, 1556682550, NULL);
INSERT INTO `pp_order` VALUES (14, 428, NULL, '2019050153101102', 1, 2, NULL, 1556683253, NULL);
INSERT INTO `pp_order` VALUES (15, 2, NULL, '2019050155100485', 1, 2, NULL, 1556685447, NULL);

SET FOREIGN_KEY_CHECKS = 1;
