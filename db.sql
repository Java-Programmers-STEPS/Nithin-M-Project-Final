/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.27-MariaDB : Database - librarymanagementsystemfinal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`librarymanagementsystemfinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `librarymanagementsystemfinal`;

/*Table structure for table `addbook` */

DROP TABLE IF EXISTS `addbook`;

CREATE TABLE `addbook` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(50) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publication` varchar(50) NOT NULL,
  `course` varchar(10) NOT NULL,
  `price` int(7) NOT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `addbook` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(50) NOT NULL,
  `course` varchar(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `age` varchar(10) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `Confirmpassword` varchar(12) NOT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `admin` */

insert  into `admin`(`studentid`,`studentname`,`course`,`gender`,`age`,`mobile`,`address`,`email`,`PASSWORD`,`Confirmpassword`) values 
(1,'nithin','btech','male','2003-10-04',2147483647,'abcdkjgghj','nithin@gmail.com','Nithin123','Nithin123');

/*Table structure for table `penalty` */

DROP TABLE IF EXISTS `penalty`;

CREATE TABLE `penalty` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL,
  `course` varchar(10) NOT NULL,
  `price` int(7) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `days` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `penalty` date NOT NULL,
  `penaltyamount` int(7) NOT NULL,
  `reason` varchar(1000) NOT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `penalty` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
