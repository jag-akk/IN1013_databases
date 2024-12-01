1--
SELECT DISTINCT rs.first_name, rs.surname
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
WHERE rb.cust_name = 'Tanya Singh';

2--
SELECT room_date
FROM restRoom_management rm
JOIN restStaff rs ON rm.headwaiter = rs.staff_no
WHERE rs.first_name = 'Charles' AND rm.room_name = 'Green' AND room_date BETWEEN 160201 AND 160229;


3--
SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs WHERE rs.headwaiter = (
    SELECT headwaiter FROM restStaff WHERE first_name = 'Zoe' AND surname = 'Ball'
);


4--
SELECT rb.cust_name, rb.bill_total, rs.first_name, rs.surname
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no ORDER BY rb.bill_total DESC;

5--
SELECT DISTINCT rs.first_name, rs.surname FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
WHERE rb.table_no IN (
    SELECT DISTINCT rb1.table_no
    FROM restBill rb1
    WHERE rb1.bill_no IN (14, 17)
);

6--
SELECT DISTINCT rs.first_name, rs.surname
FROM restRoom_management rm
JOIN restStaff rs ON (rm.headwaiter = rs.staff_no OR rs.headwaiter = rm.headwaiter)
WHERE rm.room_name = 'Blue' AND rm.room_date = 160312;
