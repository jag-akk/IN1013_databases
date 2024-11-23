--task2
-- 1
SELECT SUM(bill_total) AS Income 
FROM restBill;


-- 2
SELECT SUM(bill_total) AS `Feb Income`
FROM restbill
WHERE bill_date BETWEEN 160201 AND 160229;


-- 3
SELECT AVG(bill_total) 
FROM restbill 
WHERE table_no = 2;



-- 4
SELECT MIN(no_of_seats) AS Min, 
       MAX(no_of_seats) AS Max, 
       AVG(no_of_seats) AS Avg 
FROM restrest_table 
WHERE room_name = 'Blue';


-- 5
SELECT COUNT(DISTINCT table_no) AS DistinctTables
FROM restBill
WHERE waiter_no IN (002, 004);


