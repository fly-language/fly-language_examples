CREATE DATABASE  IF NOT EXISTS `dbfly`;
USE `dbfly`;

--
-- Table structure for table `temperaturacomune`
--

DROP TABLE IF EXISTS `temperaturacomune`;

CREATE TABLE `temperaturacomune` (
  `id` char(255) NOT NULL,
  `temperatura` char(255) DEFAULT NULL,
  `comune` char(255) DEFAULT NULL,
  `provincia` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




LOCK TABLES `temperaturacomune` WRITE;

INSERT INTO `temperaturacomune` VALUES ('1','11',' Marcianise',' Caserta'),('10','14',' Battipaglia',' Salerno'),('11','13.5',' Eboli',' Salerno'),('12','12.6',' Maddaloni',' Caserta'),('13','13.3',' Mondragone',' Caserta'),('14','14',' Torre del Greco',' Napoli'),('15','13.5',' Casoria',' Napoli'),('2','14',' Napoli',' Napoli'),('3','9',' Fisciano',' Salerno'),('4','13',' Capua',' Caserta'),('5','13',' Afragola',' Napoli'),('6','11',' Nocera',' Salerno'),('7','12',' Aversa',' Caserta'),('8','12',' Acerra',' Napoli'),('9','10',' Salerno',' Salerno');

UNLOCK TABLES;

