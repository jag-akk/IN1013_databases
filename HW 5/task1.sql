--task1.sql
-- 1
SELECT bill_date, bill_total 
FROM restbill 
WHERE cust_name = 'Bob Crow';


-- 2
SELECT DISTINCT cust_name 
FROM restbill 
WHERE SUBSTRING_INDEX(cust_name, ' ', -1) = 'Smith' 
ORDER BY cust_name DESC;


-- 3
SELECT DISTINCT cust_name 
FROM restbill 
WHERE SUBSTRING_INDEX(cust_name, ' ', -1) LIKE '%C%';


-- 4
SELECT first_name 
FROM restStaff 
WHERE headwaiter IS NULL;


-- 5
SELECT * 
FROM restBill 
WHERE bill_date BETWEEN 160201 AND 160229;


-- 6
SELECT DISTINCT bill_date 
FROM restBill 
WHERE bill_date BETWEEN 150101 AND 151231 
ORDER BY bill_date ASC;
