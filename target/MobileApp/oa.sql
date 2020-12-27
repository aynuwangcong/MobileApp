/*
Navicat MySQL Data Transfer

Source Server         : localhost1
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-12-22 21:10:58
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `user` VALUES ('aaa', '222', '王聪聪', null);
INSERT INTO `user` VALUES ('cong', '111', '王聪聪', '学生');
INSERT INTO `user` VALUES ('wang', '123456', '王聪聪', '系统管理员');
INSERT INTO `user` VALUES ('www', '111', '王聪聪', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `mobil_phone` varchar(255) DEFAULT NULL,
  `family_phone` varchar(255) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `MSN` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '184804310', '王聪聪', '男', '18', '财务部', '经理', '1283291715@qq.com', '18348325647', '18237232965', '4500110', '1999-05-12', 'mm', '河南省安阳市', '暂无');
INSERT INTO `users` VALUES ('2', '157134125', '王小聪', '男', '19', '财务部', '经理', '123456@email.com', '18348325642', '18348325647', '18348325647', '1999-05-13', 'mm', '北京市朝阳区', '暂无');
INSERT INTO `users` VALUES ('3', '184804311', '张三', '男', '19', '信息部', '总监', '1283291715@qq.com', '18348325647', '18348325647', '18348325647', '1999-05-13', 'mm', '海南省三亚市', '暂无');
INSERT INTO `users` VALUES ('4', '184804256', '李四', '男', '20', '组织部', '总监', '1283291715@qq.com', '18348325643', '18348325647', '18348325647', '1999-05-13', 'mm', '天津市', '暂无');
INSERT INTO `users` VALUES ('5', '184852627', '王二', '男', '21', '财务部', '员工', '1283291715@qq.com', '18348325644', '18348325647', '18348325647', '1999-05-15', 'mm', '北京市朝阳区', '暂无');
INSERT INTO `users` VALUES ('6', '184526485', '张三', '女', '19', '财务部', '老总', '', '18348325645', '', '', '', '', '', '');
INSERT INTO `users` VALUES ('7', '184527851', '张三', '女', '18', '信息部', '总监', '', '18348325641', '', '', '', '', '', '');
INSERT INTO `users` VALUES ('9', '222', '张三', '男', '19', '财务部', '员工', '', '18348325644', '', '', '', '', '', '');
