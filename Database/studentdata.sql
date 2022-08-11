/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.30-log : Database - studentdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentdata` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `studentdata`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(25) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `staff` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`cId`,`course`,`amount`,`staff`) values 
(1,'Java','3000','Dr. Ali rcih'),
(2,'Python','6000','Prof. Akash'),
(3,'C++','1500','Dr. Nawaz'),
(4,'Angular','2000','prof. Shahnawaz'),
(5,'C#','2500','Saba'),
(6,'Ruby','500','hanah'),
(7,'Reactjs','4000','Aliza'),
(8,'Javascript','7000','Namman'),
(9,'Mathematics','4500','Kitey');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stdId` int(11) NOT NULL AUTO_INCREMENT,
  `stdName` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `payment` varchar(25) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stdId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`stdId`,`stdName`,`email`,`course`,`payment`,`pic`) values 
(1,'Aisyah','Aisyah@gmail.com','Java','1500','s1.jpg'),
(2,'alia','alia@gmail.com','python','6778','s2.jpg'),
(3,'mira','mira@gmail.com','Angular','7788','s3.jpg'),
(4,'	Rachel','Rachel@gmail.com','Java','6666','s4.jpg'),
(5,'Cabe','cabe@gmail.com','Math','6688','s5.jpg'),
(6,'jam','jam@gmail.com','Chemistry','7777','s6.jpg'),
(7,'jamsoa','jamsoa@gmail.com','Physics','6000','s7.jpg'),
(8,'Kalms','kalms@gmail.com','Biology','5000','s7.jpg'),
(9,'malik','malik@gmail.com','Database','7000','s8.jpg'),
(10,'rimis','rimis@gmail.com','HR','6050','s9.jpg');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tName` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`tId`,`tName`,`email`,`course`,`pic`) values 
(1,'Dr.Chin Vun Jack','vin@gmail.com','Java','t1.jpg'),
(2,'Prof. Hus Ajak','hus@gmail.com','Python','t2.jpg'),
(3,'Assistant Took','took@gmail.com','C++','t3.jpg'),
(4,'Dr. Ahmed','ahmed@gmail.com','Full Stack ','t4.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
