
/*!50001 DROP TABLE IF EXISTS `v_hvcimdata` */;
/*!50001 DROP VIEW IF EXISTS `v_hvcimdata` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hvcimdata` AS select `hvhost`.`ClientID` AS `ClientID`,`hvhost`.`LocationID` AS `LocationID`,`hvhost`.`HVHID` AS `hvhid`,`hvhconfig`.`HVHName` AS `hvhname`,`cim_hv_classes`.`NameSpace` AS `namespace`,`cim_hv_classes`.`ClassName` AS `classname`,`cim_hv_properties`.`CIMElement` AS `HVEName`,`cim_hv_properties`.`CIMProperty` AS `HVPName`,`cim_hv_properties`.`CIMValue` AS `Value` from (((`cim_hv_properties` left join `cim_hv_classes` on((`cim_hv_properties`.`ClassID` = `cim_hv_classes`.`ClassID`))) left join `hvhconfig` on((`cim_hv_properties`.`HVHID` = `hvhconfig`.`HVHID`))) left join `hvhost` on((`hvhconfig`.`HVHID` = `hvhost`.`HVHID`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
