CREATE VIEW koppel AS

SELECT * from customer
JOIN interest ON customer.CustomerID = interest.CustomerIDInterest
JOIN timeslot ON customer.CustomerID = timeslot.CustomerIDtimeslot


SELECT a.CustomerID, a.timeslot, a.interest, a.FirstName, b.FirstName FROM koppel a
  JOIN koppel b
    ON a.interest = b.interest
    AND a.timeslot = b.timeslot
    AND a.customerID <> b.CustomerID
    AND (a.preferredgender = b.gender
    OR a.preferredgender = 'beide')
    AND (b.preferredgender = a.gender
    OR b.preferredgender = 'beide')
    AND (a.timeslot1 = b.timeslot1
         OR a.timeslot2 = b.timeslot2
         OR a.timeslot3 = b.timeslot3
         OR a.timeslot4 = b.timeslot4
         OR a.timeslot5 = b.timeslot5
         OR a.timeslot6 = b.timeslot6
         OR a.timeslot7 = b.timeslot7
         OR a.timeslot8 = b.timeslot8
         OR a.timeslot9 = b.timeslot9
         OR a.timeslot10 = b.timeslot10
         OR a.timeslot11 = b.timeslot11
         OR a.timeslot12 = b.timeslot12
         OR a.timeslot13 = b.timeslot13
         OR a.timeslot14 = b.timeslot14
         OR a.timeslot15 = b.timeslot15
         OR a.timeslot16 = b.timeslot16
         OR a.timeslot17 = b.timeslot17
         OR a.timeslot18 = b.timeslot18
         OR a.timeslot19 = b.timeslot19
         OR a.timeslot20 = b.timeslot20
         OR a.timeslot21 = b.timeslot21)
     AND (a.boksen = b.boksen OR
          a.fitness = b.fitness OR
          a.hardlopen = b.hardlopen OR
          a.tennis = b.tennis OR
          a.squash = b.squash OR
          a.wandelen = b.wandelen OR
          a.wielrennen = b.wielrennen OR
          a.zwemmen = b.zwemmen);
