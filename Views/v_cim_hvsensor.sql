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

/*Table structure for table `v_cim_hvsensor` */

DROP TABLE IF EXISTS `v_cim_hvsensor`;

/*!50001 DROP VIEW IF EXISTS `v_cim_hvsensor` */;
/*!50001 DROP TABLE IF EXISTS `v_cim_hvsensor` */;

/*!50001 CREATE TABLE  `v_cim_hvsensor`(
 `ClientID` int(10) ,
 `LocationID` int(10) ,
 `hvhid` int(10) ,
 `namespace` varchar(45) ,
 `classname` varchar(45) ,
 `HVEName` varchar(255) ,
 `DeviceName` text ,
 `hvhname` varchar(45) ,
 `Property` varchar(45) ,
 `PValue` text 
)*/;

/*View structure for view v_cim_hvsensor */

/*!50001 DROP TABLE IF EXISTS `v_cim_hvsensor` */;
/*!50001 DROP VIEW IF EXISTS `v_cim_hvsensor` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cim_hvsensor` AS select `v1`.`ClientID` AS `ClientID`,`v1`.`LocationID` AS `LocationID`,`v1`.`hvhid` AS `hvhid`,`v1`.`namespace` AS `namespace`,`v1`.`classname` AS `classname`,`v1`.`HVEName` AS `HVEName`,`v1`.`Value` AS `DeviceName`,`v1`.`hvhname` AS `hvhname`,`v2`.`HVPName` AS `Property`,`v2`.`Value` AS `PValue` from (`v_hvcimdata` `v1` join `v_hvcimdata` `v2` on((`v1`.`HVPName` = 'Caption'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
