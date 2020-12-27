/*
Navicat MySQL Data Transfer

Source Server         : localhost1
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : duplicate

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-12-18 17:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classes`
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `classes_id` int(11) NOT NULL AUTO_INCREMENT,
  `classes_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`classes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of classes
-- ----------------------------

-- ----------------------------
-- Table structure for `classes_message`
-- ----------------------------
DROP TABLE IF EXISTS `classes_message`;
CREATE TABLE `classes_message` (
  `classes_id` int(11) NOT NULL AUTO_INCREMENT,
  `classes_name` char(255) DEFAULT NULL,
  `c_usual_total_score` double DEFAULT NULL,
  `c_usual_average_score` double DEFAULT NULL,
  `c_exam_total_score` double DEFAULT NULL,
  `c_exam_average_score` double DEFAULT NULL,
  `c_total_total_score` double DEFAULT NULL,
  `c_total_average_score` double DEFAULT NULL,
  PRIMARY KEY (`classes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of classes_message
-- ----------------------------

-- ----------------------------
-- Table structure for `corse_grade`
-- ----------------------------
DROP TABLE IF EXISTS `corse_grade`;
CREATE TABLE `corse_grade` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` char(255) DEFAULT NULL,
  `course_name` char(255) DEFAULT NULL,
  `s_usual_score` double DEFAULT NULL,
  `s_exam_score` double DEFAULT NULL,
  `s_total_score` double DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of corse_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` char(255) DEFAULT NULL,
  `course_time` char(255) DEFAULT NULL,
  `course_score` char(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) DEFAULT NULL,
  `student_name` char(255) DEFAULT NULL,
  `student_age` int(11) DEFAULT NULL,
  `student_sex` char(255) DEFAULT NULL,
  `university` char(255) DEFAULT NULL,
  `classes_name` char(255) DEFAULT NULL,
  `telphone` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '184804310', '王聪聪', '20', '男', '安阳师范大学', 'JAVA3班', '18348325641');
INSERT INTO `student` VALUES ('2', '184804311', '王小聪', '20', '女', '安阳师范大学', 'JAVA4班', '18348325642');
INSERT INTO `student` VALUES ('3', '184804312', '王大聪', '18', '男', '安阳师范大学', 'JAVA3班', '18348325643');
INSERT INTO `student` VALUES ('26', '184804313', '王聪明', '18', '女', '安阳师范大学', 'JAVA3班', '18348325644');
INSERT INTO `student` VALUES ('27', '184804314', '张三', '19', '男', '安阳师范大学', 'JAVA3班', '18348325645');
INSERT INTO `student` VALUES ('28', '184804320', '李四', '18', '女', '安阳师范大学', 'JAVA3班', '18348325646');
INSERT INTO `student` VALUES ('29', '184804333', '王聪聪', '18', '男', '安阳师范大学', 'JAVA3班', '18348325647');

-- ----------------------------
-- Table structure for `student_message`
-- ----------------------------
DROP TABLE IF EXISTS `student_message`;
CREATE TABLE `student_message` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` char(255) DEFAULT NULL,
  `student_sex` char(255) DEFAULT NULL,
  `classes_name` char(255) DEFAULT NULL,
  `course_name` char(255) DEFAULT NULL,
  `s_usual_score` double DEFAULT NULL,
  `s_exam_score` double DEFAULT NULL,
  `s_total_score` double DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184804311 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of student_message
-- ----------------------------
INSERT INTO `student_message` VALUES ('184804310', '王聪聪', '男', 'JAVA3班', '框架技术', '90', '90', '95');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` char(255) NOT NULL DEFAULT '',
  `password` char(255) DEFAULT NULL,
  `name` char(255) DEFAULT NULL,
  `flag` char(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('cong', '222', '王聪聪', null);
INSERT INTO `user` VALUES ('wang', '123456', '王聪聪', '系统管理员');
