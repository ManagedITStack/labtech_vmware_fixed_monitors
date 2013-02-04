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

/*Table structure for table `v_hvhmemconsumed` */

DROP TABLE IF EXISTS `v_hvhmemconsumed`;

/*!50001 DROP VIEW IF EXISTS `v_hvhmemconsumed` */;
/*!50001 DROP TABLE IF EXISTS `v_hvhmemconsumed` */;

/*!50001 CREATE TABLE  `v_hvhmemconsumed`(
 `CategoryName` varchar(45) ,
 `CounterName` varchar(45) ,
 `Value` bigint(10) ,
 `MemoryGranted` bigint(10) ,
 `HostName` varchar(45) ,
 `HVHID` int(10) 
)*/;

/*View structure for view v_hvhmemconsumed */

/*!50001 DROP TABLE IF EXISTS `v_hvhmemconsumed` */;
/*!50001 DROP VIEW IF EXISTS `v_hvhmemconsumed` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hvhmemconsumed` AS select `hvcounter`.`CategoryName` AS `CategoryName`,`hvcounter`.`CounterName` AS `CounterName`,`hvcounter`.`Value` AS `Value`,`hvcounter`.`Value` AS `MemoryGranted`,`hvhconfig`.`HVHName` AS `HostName`,`hvhconfig`.`HVHID` AS `HVHID` from (`hvcounter` left join `hvhconfig` on((`hvcounter`.`HVHId` = `hvhconfig`.`HVHID`))) where ((`hvcounter`.`CategoryName` like '%memory') and (`hvcounter`.`CounterName` like '%consumed')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
