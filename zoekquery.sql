DROP VIEW IF EXISTS `koppel`;
CREATE VIEW koppel AS

SELECT * from customer
JOIN interest ON customer.CustomerID = interest.CustomerIDInterest
JOIN timeslot ON customer.CustomerID = timeslot.CustomerIDtimeslot;


SELECT a.CustomerID, a.timeslot1, a.boksen, a.FirstName, b.FirstName FROM koppel a
  JOIN koppel b
    ON a.customerID <> b.CustomerID
    AND (a.preferredgender = b.gender
    OR a.preferredgender = 'beide')
    AND (b.preferredgender = a.gender
    OR b.preferredgender = 'beide')
    AND (a.timeslot1 = 1 AND b.timeslot1 = 1
         OR a.timeslot2 = 1 AND b.timeslot2 = 1
         OR a.timeslot3 = 1 AND b.timeslot3 = 1
         OR a.timeslot4 = 1 AND b.timeslot4 = 1
         OR a.timeslot5 = 1 AND b.timeslot5 = 1
         OR a.timeslot6 = 1 AND b.timeslot6 = 1
         OR a.timeslot7 = 1 AND b.timeslot7 = 1
         OR a.timeslot8 = 1 AND b.timeslot8 = 1
         OR a.timeslot9 = 1 AND b.timeslot9 = 1
         OR a.timeslot10 = 1 AND b.timeslot10 = 1
         OR a.timeslot11 = 1 AND b.timeslot11 = 1
         OR a.timeslot12 = 1 AND b.timeslot12 = 1
         OR a.timeslot13 = 1 AND b.timeslot13 = 1
         OR a.timeslot14 = 1 AND b.timeslot14 = 1
         OR a.timeslot15 = 1 AND b.timeslot15 = 1
         OR a.timeslot16 = 1 AND b.timeslot16 = 1
         OR a.timeslot17 = 1 AND b.timeslot17 = 1
         OR a.timeslot18 = 1 AND b.timeslot18 = 1
         OR a.timeslot19 = 1 AND b.timeslot19 = 1
         OR a.timeslot20 = 1 AND b.timeslot20 = 1
         OR a.timeslot21 = 1 AND b.timeslot21 = 1)
     AND (a.boksen = 1 AND b.boksen = 1 
          OR a.fitness = 1 AND b.fitness = 1
          OR a.hardlopen = 1 AND b.hardlopen = 1
          OR a.tennis = 1 AND b.tennis = 1
          OR a.squash = 1 AND b.squash = 1
          OR a.wandelen = 1 AND b.wandelen = 1
          OR a.wielrennen = 1 AND b.wielrennen = 1 
          OR a.zwemmen = 1 AND b.zwemmen = 1);
      
      
-------------------------------------------------------------------------------------------------------------------------      
          
DROP VIEW IF EXISTS `koppel`;
CREATE VIEW koppel AS

SELECT * from customer
JOIN interest ON customer.CustomerID = interest.CustomerIDInterest
JOIN timeslot ON customer.CustomerID = timeslot.CustomerIDtimeslot;

SELECT a.CustomerID, a.timeslot, a.boksen, a.FirstName, b.FirstName FROM koppel a
  JOIN koppel b
    ON a.customerID <> b.CustomerID
    AND (a.preferredgender = b.gender
    OR a.preferredgender = 'beide')
    AND (b.preferredgender = a.gender
    OR b.preferredgender = 'beide')
    AND a.timeslot = b.timeslot
    AND a.boksen = b.boksen 
;
