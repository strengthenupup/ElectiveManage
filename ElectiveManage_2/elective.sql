/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : elective

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-20 13:22:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `C_Id` int(11) NOT NULL AUTO_INCREMENT,
  `C_Name` varchar(255) DEFAULT NULL,
  `C_Time` varchar(255) DEFAULT NULL,
  `C_Place` varchar(255) DEFAULT NULL,
  `C_Credit` varchar(255) DEFAULT NULL,
  `C_Teacher` varchar(255) DEFAULT NULL,
  `C_No` varchar(255) DEFAULT NULL,
  `C_LimitNum` varchar(255) DEFAULT NULL,
  `C_ResidueNum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', 'Web综合应用和开发', '（第2-11周）周一5.6', '瓯江7号楼', '4', '潘俊', '1001', '30', '29');
INSERT INTO `course` VALUES ('3', 'SSH框架', '周四（5-6节）', '瓯江7号楼', '4', '邹董董', '1002', '30', '29');

-- ----------------------------
-- Table structure for electcourse
-- ----------------------------
DROP TABLE IF EXISTS `electcourse`;
CREATE TABLE `electcourse` (
  `Ec_Id` int(11) NOT NULL AUTO_INCREMENT,
  `C_No` varchar(255) DEFAULT NULL,
  `C_Name` varchar(255) DEFAULT NULL,
  `S_No` varchar(255) DEFAULT NULL,
  `S_Name` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Ec_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of electcourse
-- ----------------------------
INSERT INTO `electcourse` VALUES ('1', '1001', 'Web综合应用和开发', '16219111222', '罗世超', '100');
INSERT INTO `electcourse` VALUES ('2', '1002', 'SSH框架', '16219111222', '罗世超', '0');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `M_Id` int(11) NOT NULL AUTO_INCREMENT,
  `M_Name` varchar(255) DEFAULT NULL,
  `M_Pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`M_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admit', 'admit');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `S_Id` int(11) NOT NULL AUTO_INCREMENT,
  `S_No` varchar(255) DEFAULT NULL,
  `S_Name` varchar(255) DEFAULT NULL,
  `S_Sex` varchar(255) DEFAULT NULL,
  `S_Age` varchar(255) DEFAULT NULL,
  `S_Collage` varchar(255) DEFAULT NULL,
  `S_Department` varchar(255) DEFAULT NULL,
  `S_Pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '16219111222', '罗世超', '男', '18', '数信学院', '计算机科学与技术', '123456');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `T_Id` int(11) NOT NULL AUTO_INCREMENT,
  `T_No` varchar(255) DEFAULT NULL,
  `T_Name` varchar(255) DEFAULT NULL,
  `T_Sex` varchar(255) DEFAULT NULL,
  `T_Age` varchar(255) DEFAULT NULL,
  `T_Collage` varchar(255) DEFAULT NULL,
  `T_Pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`T_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2', '16219233', '潘俊', '男', '28', '数信学院', '123456');
