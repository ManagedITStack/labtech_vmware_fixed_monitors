/*
SQLyog Community v9.32 GA
MySQL - 5.5.25 : Database - labtech
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`labtech` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `labtech`;

/*Table structure for table `v_hvmdisk` */

DROP TABLE IF EXISTS `v_hvmdisk`;

/*!50001 DROP VIEW IF EXISTS `v_hvmdisk` */;
/*!50001 DROP TABLE IF EXISTS `v_hvmdisk` */;

/*!50001 CREATE TABLE  `v_hvmdisk`(
 `VMName` varchar(255) ,
 `HVHID` int(10) ,
 `HVSSize` varchar(45) ,
 `HVSFreeSize` varchar(45) ,
 `HVDiskPath` varchar(45) ,
 `PercentDiskFree` double ,
 `VMInstanceID` varchar(255) 
)*/;

/*View structure for view v_hvmdisk */

/*!50001 DROP TABLE IF EXISTS `v_hvmdisk` */;
/*!50001 DROP VIEW IF EXISTS `v_hvmdisk` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hvmdisk` AS select `hvmconfig`.`HVMName` AS `VMName`,`hvstoragedisk`.`HVHID` AS `HVHID`,`hvstoragedisk`.`HVSSize` AS `HVSSize`,`hvstoragedisk`.`HVSFreeSize` AS `HVSFreeSize`,`hvstoragedisk`.`HVDiskPath` AS `HVDiskPath`,(`hvstoragedisk`.`HVSFreeSize` / `hvstoragedisk`.`HVSSize`) AS `PercentDiskFree`,`hvstoragedisk`.`VMInstanceID` AS `VMInstanceID` from (`hvmconfig` left join `hvstoragedisk` on((`hvmconfig`.`HVHID` = `hvstoragedisk`.`HVHID`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
