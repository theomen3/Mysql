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
