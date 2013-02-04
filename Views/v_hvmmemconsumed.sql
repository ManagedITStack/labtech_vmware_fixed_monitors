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

/*Table structure for table `v_hvmmemconsumed` */

DROP TABLE IF EXISTS `v_hvmmemconsumed`;

/*!50001 DROP VIEW IF EXISTS `v_hvmmemconsumed` */;
/*!50001 DROP TABLE IF EXISTS `v_hvmmemconsumed` */;

/*!50001 CREATE TABLE  `v_hvmmemconsumed`(
 `CategoryName` varchar(45) ,
 `CounterName` varchar(45) ,
 `Value` bigint(10) ,
 `HVHID` int(10) ,
 `HVMName` varchar(255) 
)*/;

/*View structure for view v_hvmmemconsumed */

/*!50001 DROP TABLE IF EXISTS `v_hvmmemconsumed` */;
/*!50001 DROP VIEW IF EXISTS `v_hvmmemconsumed` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hvmmemconsumed` AS select `vmcounter`.`CategoryName` AS `CategoryName`,`vmcounter`.`CounterName` AS `CounterName`,`vmcounter`.`Value` AS `Value`,`hvmconfig`.`HVHID` AS `HVHID`,`hvmconfig`.`HVMName` AS `HVMName` from (`vmcounter` left join `hvmconfig` on((`vmcounter`.`HVHId` = `hvmconfig`.`HVHID`))) where ((`vmcounter`.`CategoryName` like '%memory') and (`vmcounter`.`CounterName` like '%consumed')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
