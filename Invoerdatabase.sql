--Zo voeg je iets toe aan customer tabel

INSERT INTO `customer` --(FirstName,LastName,SEX,BirthDate,PreferredSex) Voeg dit toe indien er geen ID nodig is
VALUES ('Frans', 'Jadus', 'man', '1993-07-09', 'man');
VALUES (2, 'Nick', 'Sluiters', 'man', '1993-07-19', 'vrouw');

INSERT INTO `customer`
VALUES (3, 'Jurger', 'Papjes', 'man', '1980-08-12', 'vrouw');

INSERT INTO `customer`
VALUES (4, 'Joost', 'Dinges', 'man', '1960-05-11', 'man');

INSERT INTO `customer`
VALUES (5, 'Stijn', 'Ookiets', 'man', '1988-07-11', 'man');

--Zo voeg je iets toe aan interest tabel

INSERT INTO `interest`
VALUES (2, 'fietsen');

INSERT INTO `interest`
VALUES (3, 'fietsen');

INSERT INTO `interest`
VALUES (4, 'wandelen');

INSERT INTO `interest`
VALUES (5, 'fietsen');

--Zo voeg je iets toe aan timeslot tabel

INSERT INTO `timeslot`
VALUES (2, '12');

INSERT INTO `timeslot`
VALUES (3, '13');

INSERT INTO `timeslot`
VALUES (4, '13');

INSERT INTO `timeslot`
VALUES (5, '13');


