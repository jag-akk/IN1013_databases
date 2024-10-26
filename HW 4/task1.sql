DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petname VARCHAR (20) PRIMARY KEY,
  owner VARCHAR (45),
  species VARCHAR (45),
  gender CHAR(1) CHECK(gender in('M', 'F')),
  birth INT(8),
  death INT(8)
);

CREATE TABLE petEvent (
  eventID INT AUTO_INCREMENT PRIMARY KEY,
  petname VARCHAR (20),
  eventdate INT(8),
  eventtype VARCHAR (15),
  remark VARCHAR (255),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);