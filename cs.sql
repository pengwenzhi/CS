# Host: localhost  (Version 5.7.20)
# Date: 2021-06-01 21:19:32
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `email` varchar(32) NOT NULL,
  `is_user` varchar(4) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#


#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pubtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "comment"
#

