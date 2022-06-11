/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : ssmbuild

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 28/05/2022 22:17:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bookID` int(10) NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书名',
  `bookCounts` int(11) NOT NULL COMMENT '数量',
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  INDEX `bookID`(`bookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'MySQL', 10, '从删库到跑路');
INSERT INTO `books` VALUES (2, 'Linux', 5, '从进门到进牢');
INSERT INTO `books` VALUES (3, '红楼一梦', 1, '由来同一梦,休笑世人痴');
INSERT INTO `books` VALUES (4, '水浒传', 11, '好好');
INSERT INTO `books` VALUES (6, '论语', 10, '孔子语录');
INSERT INTO `books` VALUES (7, '孟子', 10, '孟子语录');
INSERT INTO `books` VALUES (8, '大学', 10, '老子语录');
INSERT INTO `books` VALUES (9, '面向对象分析', 10, '建模分析');
INSERT INTO `books` VALUES (10, '编译原理', 10, '中国编译');
INSERT INTO `books` VALUES (11, '机器学习', 10, '学习机器人语言');
INSERT INTO `books` VALUES (12, '密码编码学与网络完全', 10, '如何保护自己的密码');
INSERT INTO `books` VALUES (13, '钢铁是怎样练成的', 10, '如何锻造钢铁');
INSERT INTO `books` VALUES (14, '十宗罪', 10, '恐怖杀人手法大全');
INSERT INTO `books` VALUES (15, '你的眼界决定高度', 10, '任正非带你走进商业帝国');
INSERT INTO `books` VALUES (16, '盗墓笔记之七星鲁王宫', 10, '三叔带你走进不一样的世界');
INSERT INTO `books` VALUES (17, '鬼吹灯之精绝古城', 10, '神秘西域的故事');

SET FOREIGN_KEY_CHECKS = 1;
