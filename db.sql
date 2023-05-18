/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - logistics
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`logistics` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `logistics`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `bookings` */

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `logname` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `desti` varchar(100) DEFAULT NULL,
  `kgs` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `bookings` */

insert  into `bookings`(`id`,`username`,`logname`,`source`,`desti`,`kgs`,`amount`,`status`) values (2,'shiva','dileep','Hyderabad','Vijayawada','100','20000','Accepted');

/*Table structure for table `logistics` */

DROP TABLE IF EXISTS `logistics`;

CREATE TABLE `logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `logistics` */

insert  into `logistics`(`id`,`username`,`password`,`email`,`mobile`,`address`,`dob`,`gender`,`image`,`status`) values (1,'dileep','123','shivakrish5573@gmail.com','08121893257','malaysian township, KPHB','11/05/1990','MALE','shiva.jpg','waiting');

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `logname` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `desti` varchar(100) DEFAULT NULL,
  `dp1` varchar(100) DEFAULT NULL,
  `dp2` varchar(100) DEFAULT NULL,
  `dp3` varchar(100) DEFAULT NULL,
  `dp4` varchar(100) DEFAULT NULL,
  `kgs` int(100) DEFAULT NULL,
  `co` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `route` */

insert  into `route`(`id`,`logname`,`source`,`desti`,`dp1`,`dp2`,`dp3`,`dp4`,`kgs`,`co`) values (1,'dileep','Hyderabad','Vijayawada','Choutuppal','Suryapet','Koda','Nandigama',9900,200);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`,`mobile`,`address`,`dob`,`gender`,`image`,`status`) values (2,'shiva','123','shivakrish5573@gmail.com','08121893257','malaysian township, KPHB','11/09/1990','MALE','4.png','waitng');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
