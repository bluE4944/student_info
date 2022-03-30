/*
Navicat MySQL Data Transfer

Source Server         : xmf
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : student_info

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2022-03-30 12:36:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `clazz`
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `clazz_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `teacher_id` int(11) unsigned NOT NULL,
  `clazz_time` varchar(255) NOT NULL,
  `clazz_start` date DEFAULT NULL,
  `clazz_end` date DEFAULT NULL,
  PRIMARY KEY (`clazz_id`),
  KEY `fk_student_clazz` (`student_id`),
  KEY `fk_teacher_clazz` (`teacher_id`),
  CONSTRAINT `fk_student_clazz` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `fk_teacher_clazz` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `course_theme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `hours`
-- ----------------------------
DROP TABLE IF EXISTS `hours`;
CREATE TABLE `hours` (
  `hours_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `hours_total` int(11) NOT NULL,
  `hours_remian` int(11) NOT NULL,
  PRIMARY KEY (`hours_id`),
  KEY `fk_student_hours` (`student_id`),
  CONSTRAINT `fk_student_hours` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hours
-- ----------------------------

-- ----------------------------
-- Table structure for `parent`
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent` (
  `parent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `parent_named` varchar(255) NOT NULL,
  `parent_phone` varchar(255) NOT NULL,
  PRIMARY KEY (`parent_id`),
  KEY `fk_student_parent` (`student_id`),
  CONSTRAINT `fk_student_parent` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_number` int(11) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `student_birthday` date NOT NULL,
  `student_sex` varchar(1) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1001', '小兄弟', '2020-06-28', '男');
INSERT INTO `student` VALUES ('2', '1002', '张三', '2020-06-28', '男');
INSERT INTO `student` VALUES ('3', '1003', '赵四', '2020-06-28', '男');
INSERT INTO `student` VALUES ('4', '1004', '王五', '2020-06-29', '女');
INSERT INTO `student` VALUES ('5', '1005', '赵六', '2020-06-29', '女');
INSERT INTO `student` VALUES ('6', '1006', '不到', '2020-06-29', '女');
INSERT INTO `student` VALUES ('7', '1007', '母鸡', '2020-06-29', '男');
INSERT INTO `student` VALUES ('8', '1008', 'gaio', '2020-06-29', '男');
INSERT INTO `student` VALUES ('9', '1009', '带哥', '2020-06-29', '女');
INSERT INTO `student` VALUES ('10', '1010', '雅虎', '2020-06-29', '女');
INSERT INTO `student` VALUES ('11', '1011', '黑恶虎', '2020-06-29', '女');

-- ----------------------------
-- Table structure for `student_sign`
-- ----------------------------
DROP TABLE IF EXISTS `student_sign`;
CREATE TABLE `student_sign` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `sign_time` datetime NOT NULL,
  PRIMARY KEY (`sign_id`),
  KEY `fk_student_studentSign` (`student_id`),
  KEY `fk_course_studentSign` (`course_id`),
  CONSTRAINT `fk_course_studentSign` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_student_studentSign` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) NOT NULL,
  `teacher_phone` varchar(255) DEFAULT NULL,
  `teacher_email` varchar(255) DEFAULT NULL,
  `teacher_birthday` date DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '12345678911', '123456789@qq.com', '123456', '0');
INSERT INTO `user` VALUES ('2', '小老弟', '12345678910', null, '123456', '1');
