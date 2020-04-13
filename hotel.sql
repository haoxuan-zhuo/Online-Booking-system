drop database if exists hotel;
create database hotel;
use hotel;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hotelroom(hotel information)
-- ----------------------------
DROP TABLE IF EXISTS `hotelroom`;
CREATE TABLE `hotelroom`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ownername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, -- room establish time --
  `room_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, -- total room --
  `room_ava` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, -- avaliable room --
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,  
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for owner(hotel owner)
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ownername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, -- email --
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `clientname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, -- email --
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reservation(order table)
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `starttime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `client` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `clientname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
