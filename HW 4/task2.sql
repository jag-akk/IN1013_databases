show databases;
USE pet_database;
DESC petPet;
DESC petEvent;
SELECT *FROM petEvent;
--task1
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

--task2
INSERT INTO petPet(petname, owner, species, gender, birth, death) val
ues ('Hammy','Diane', 'hamster', 'M', '2020-10-30', NULL);
--task3
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES ('Fluffy', '2020-10-15', 'litter', '5 kittens, 2 male, 3 female');
 --task4
UPDATE petEvent SET petname= 'Claws' WHERE petname = 'Slim' AND eventtype= 'vet' AND remark = 'broken rib';

--task5
UPDATE petPet SET death='2020-09-01' WHERE petname='Puffball';

--task6
SELECT petname FROM petPet WHERE owner= 'Harold';
DELETE FROM petEvent WHERE petname IN (SELECT petname FROM petPet WHERE owner = 'Harold' and petname='Buffy');
DELETE FROM petPet WHERE owner = 'Harold' and species='dog';
   