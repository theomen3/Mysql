DROP TABLE IF EXISTS `timeslot`, `Interest`, `users`
;

	

	CREATE TABLE `users` (
	  CustomerID      INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	  firstname       VARCHAR(255) NOT NULL,
	  lastname        VARCHAR(255) NOT NULL,
    preposition     VARCHAR(255) NOT NULL,
	  email           VARCHAR(255) NOT NULL,
	  username        VARCHAR(255) NOT NULL,
	  phonenumber     VARCHAR(20) NOT NULL,
	  gender          VARCHAR(6) NOT NULL,
    password        VARCHAR(255) NOT NULL,
	  birthdate       DATE NOT NULL,
	  preferredgender VARCHAR(10) NOT NULL)	  
;

	

	

	CREATE TABLE `interest` (
	  CustomerIDinterest  INT(10),
	  Boksen      BOOLEAN,
	  Fitness     BOOLEAN,
	  Hardlopen   BOOLEAN,
	  Tennis      BOOLEAN,
	  Squash      BOOLEAN,
	  Wandelen    BOOLEAN,
	  Wielrennen  BOOLEAN,
	  Zwemmen     BOOLEAN,  
	  CONSTRAINT
	    PRIMARY KEY InterestPK (CustomerIDinterest, Boksen),

	  CONSTRAINT
	    FOREIGN KEY InterestFK (CustomerIDinterest)
	    REFERENCES Customer (CustomerID))
	;
                           
	CREATE TABLE `timeslot`  (
	  CustomerIDtimeslot   INT(10),
	  Timeslot1     BOOLEAN,
	  Timeslot2     BOOLEAN,
	  Timeslot3     BOOLEAN,
	  Timeslot4     BOOLEAN,
	  Timeslot5     BOOLEAN,
	  Timeslot6     BOOLEAN,
	  Timeslot7     BOOLEAN,
	  Timeslot8     BOOLEAN,
	  Timeslot9     BOOLEAN,
	  Timeslot10    BOOLEAN,
	  Timeslot11    BOOLEAN,
	  Timeslot12    BOOLEAN,
	  Timeslot13    BOOLEAN,
	  Timeslot14    BOOLEAN,
	  Timeslot15    BOOLEAN,
	  Timeslot16    BOOLEAN,
	  Timeslot17    BOOLEAN,
	  Timeslot18    BOOLEAN,
	  Timeslot19    BOOLEAN,
	  Timeslot20    BOOLEAN,
	  Timeslot21    BOOLEAN,
  
	CONSTRAINT
	    PRIMARY KEY TimeslotPK (CustomerIDtimeslot, Timeslot1),	
	  
    CONSTRAINT
	    FOREIGN KEY TimeslotFK (CustomerIDtimeslot)
	    REFERENCES Customer (CustomerID))
	;
