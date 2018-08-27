/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100014
 Source Host           : localhost:3306
 Source Schema         : lefeng

 Target Server Type    : MySQL
 Target Server Version : 100014
 File Encoding         : 65001

 Date: 27/08/2018 16:48:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('SNP黑珍珠精华面膜', 98.00, 1, 'http://a2.vimage1.com/upload/merchandise/pdc/273/051/1029430240039051273/15/8809237828027-5.jpg', 1);
INSERT INTO `car` VALUES ('纳豆面膜10片', 68.00, 1, 'http://a2.vimage1.com/upload/merchandise/pdc/897/064/8876108217786064897/4/4713575084776-5.jpg', 3);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('SNP黑珍珠精华面膜', 'http://a2.vimage1.com/upload/merchandise/pdc/273/051/1029430240039051273/15/8809237828027-5.jpg', 98.00, 1);
INSERT INTO `goods` VALUES ('MILATTE黑熊家族熊猫亮白眼贴', 'http://a2.vimage1.com/upload/merchandise/pdc/918/462/1039281927239462918/3/8809087939195-5.jpg', 89.00, 2);
INSERT INTO `goods` VALUES ('纳豆面膜10片', 'http://a2.vimage1.com/upload/merchandise/pdc/897/064/8876108217786064897/4/4713575084776-5.jpg', 68.00, 3);
INSERT INTO `goods` VALUES ('IT°S SKIN 晶钻蜗牛霜60ml', 'http://a2.vimage1.com/upload/merchandise/pdc/857/161/1092480633767161857/18/8809241887782-5.jpg', 279.00, 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 21, 'http://a2.vimage1.com/upload/merchandise/pdc/273/051/1029430240039051273/15/8809237828027-5.jpg');
INSERT INTO `users` VALUES ('1', '1', 22, NULL);
INSERT INTO `users` VALUES ('1', '1', 23, NULL);
INSERT INTO `users` VALUES ('1', '1', 24, NULL);

SET FOREIGN_KEY_CHECKS = 1;
