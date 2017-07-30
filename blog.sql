# Host: localhost  (Version: 5.5.53)
# Date: 2017-07-30 21:42:48
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blog_user"
#

DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "blog_user"
#

INSERT INTO `blog_user` VALUES (1,'admin','eyJpdiI6ImJoRndCZlp6NVFBVlJHVzVxUzA0MVE9PSIsInZhbHVlIjoiTXhqVndjVmdnT3cxU2hWViszTmJMUT09IiwibWFjIjoiOGE0ZjViZjQxNmYwNDA0MDc1OGRiZjM3ZmYwOGJlZDBkMTBmMTQ0OTdjN2EwNjQzYTg5NTQwMjUyNDA1ZTBmNCJ9',NULL,NULL);
