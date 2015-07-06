CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL DEFAULT '2',
  `USER_LAST_NAME` varchar(45) DEFAULT NULL,
  `USER_FIRST_NAME` varchar(45) DEFAULT NULL,
  `USER_EMAIL` varchar(200) NOT NULL,
  `USER_PHONE` varchar(45) DEFAULT NULL,
  `USER_ZIPCODE` varchar(45) DEFAULT NULL,
  `USER_MIDDLE_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
);

CREATE TABLE `fda_data` (
  `FDA_DATA_ID` int(11) NOT NULL,
  `FDA_DATA_CD` varchar(20) NOT NULL,
  `FDA_DATA_DESC` varchar(512) DEFAULT NULL,
  `FDA_DATA_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`FDA_DATA_ID`)
);

INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (101,'DEVICE','x-ray','x-ray');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (102,'DEVICE','Nebulizer','Angioplasty balloon');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (103,'DEVICE','Cannula','Cannula');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (104,'DEVICE','Bandage','Bandage');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (105,'DEVICE','Dynamometer','Dynamometer');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (106,'DEVICE','Keratoscope','Keratoscope');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (107,'DEVICE','Ophthalmoscope','Ophthalmoscope');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (108,'DEVICE','Otoscope','Otoscope');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (109,'DEVICE','Scalpel','Scalpel');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (110,'DEVICE','Stethoscope','Stethoscope');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (111,'DEVICE','Stretcher','Stretcher');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (112,'DEVICE','Wheelchair','Wheelchair');
INSERT INTO `fda_data` (`FDA_DATA_ID`,`FDA_DATA_CD`,`FDA_DATA_DESC`,`FDA_DATA_NAME`) VALUES (113,'DEVICE','Angioscope','Angioscope');

CREATE TABLE `preferences` (
  `PREFERENCES_ID` int(11) NOT NULL,
  `PREFERENCES_FDA_DATA_ID` int(11) DEFAULT NULL,
  `PREFERENCES_USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PREFERENCES_ID`),
  KEY `PREFERENCES_USER_FK_idx` (`PREFERENCES_USER_ID`),
  KEY `PREFERENCES_FDA_DATA_FK_idx` (`PREFERENCES_FDA_DATA_ID`),
  CONSTRAINT `PREFERENCES_FDA_DATA_FK` FOREIGN KEY (`PREFERENCES_FDA_DATA_ID`) REFERENCES `fda_data` (`FDA_DATA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PREFERENCES_USER_FK` FOREIGN KEY (`PREFERENCES_USER_ID`) REFERENCES `user` (`USER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


