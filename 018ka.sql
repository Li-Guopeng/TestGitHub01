/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.28 : Database - 018ka
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`018ka` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `018ka`;

/*Table structure for table `cardp` */

DROP TABLE IF EXISTS `cardp`;

CREATE TABLE `cardp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodId` int(11) NOT NULL,
  `cardPInfo` varchar(20) NOT NULL,
  `isSale` int(11) NOT NULL DEFAULT '1',
  `addDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cardp` */

/*Table structure for table `complain` */

DROP TABLE IF EXISTS `complain`;

CREATE TABLE `complain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `comType` int(11) NOT NULL DEFAULT '0',
  `comCause` varchar(20) NOT NULL,
  `customerQQ` varchar(20) NOT NULL,
  `customerPhone` varchar(20) NOT NULL,
  `comStatus` int(11) NOT NULL DEFAULT '0',
  `comDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `complain` */

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valueType` varchar(20) NOT NULL,
  `valueId` int(11) NOT NULL,
  `valueName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `data` */

/*Table structure for table `discount` */

DROP TABLE IF EXISTS `discount`;

CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `pof` int(11) NOT NULL,
  `remark` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discount` */

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `valueId` int(11) NOT NULL,
  `goodName` varchar(20) NOT NULL,
  `repCount` int(11) NOT NULL,
  `price` double NOT NULL,
  `saleOut` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `goodLink` varchar(20) NOT NULL,
  `goodCost` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

/*Table structure for table `goodscategory` */

DROP TABLE IF EXISTS `goodscategory`;

CREATE TABLE `goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `valueId` int(11) NOT NULL,
  `valueName` varchar(20) NOT NULL,
  `categoryLink` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goodscategory` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transDate` datetime NOT NULL,
  `goodId` int(11) NOT NULL,
  `payWay` int(11) NOT NULL,
  `customerInfo` varchar(20) NOT NULL,
  `orderStatus` int(11) NOT NULL DEFAULT '0',
  `orderMoney` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `settelment` */

DROP TABLE IF EXISTS `settelment`;

CREATE TABLE `settelment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settleDate` datetime NOT NULL,
  `serviceCharge` double NOT NULL,
  `settleMoney` double NOT NULL,
  `settleStatus` int(11) NOT NULL DEFAULT '1',
  `userId` int(11) NOT NULL,
  `endMoney` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `settelment` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `idCard` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `emailStatus` int(11) NOT NULL DEFAULT '0',
  `oneLogin` int(11) NOT NULL DEFAULT '0',
  `payFor` varchar(20) DEFAULT NULL,
  `payMethod` int(11) NOT NULL DEFAULT '0',
  `payCode` varchar(20) DEFAULT NULL,
  `accountAddress` varchar(20) DEFAULT NULL,
  `clearingForm` int(11) NOT NULL DEFAULT '1',
  `settleJui` int(11) NOT NULL DEFAULT '1',
  `shopLiink` varchar(20) NOT NULL,
  `userQQ` varchar(20) DEFAULT NULL,
  `shopName` varchar(20) NOT NULL,
  `repType` int(11) NOT NULL DEFAULT '0',
  `userImg` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
