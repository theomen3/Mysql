SELECT customer.CustomerID, interest.interest, timeslot.timeslot
FROM customer
    INNER JOIN interest ON customer.CustomerID = interest.CustomerIDInterest
    INNER JOIN timeslot ON customer.CustomerID = timeslot.CustomerIDtimeslot
    WHERE interest.interest = 'fietsen' 
    AND timeslot.timeslot = '13'
;
