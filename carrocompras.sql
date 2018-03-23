# Host: localhost  (Version 5.5.24-log)
# Date: 2018-03-23 16:42:40
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "producto"
#

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `codigoproducto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(18,2) NOT NULL,
  `imagen` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigoproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "producto"
#

INSERT INTO `producto` VALUES (1,'camiseta 1',18.04,'1.png');
