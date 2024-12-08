1--
CREATE VIEW samsBills AS
SELECT rs.first_name, rs.surname, rb.bill_date, rb.cust_name, rb.bill_total
FROM restBill rb
JOIN restStaff rs ON rb.waiter_no = rs.staff_no
WHERE rs.first_name = 'Sam' AND rs.surname = 'Pitt';

2--
SELECT * FROM samsBills WHERE bill_total > 400;

3--
SELECT * FROM samsBills WHERE bill_total > 400;

4--
CREATE VIEW teamTotals AS
SELECT CONCAT(hs.first_name, ' ', hs.surname) AS headwaiter_name, SUM(rb.bill_total) AS total_sum
FROM restBill rb
JOIN restStaff ws ON rb.waiter_no = ws.staff_no
JOIN restStaff hs ON ws.headwaiter = hs.staff_no
GROUP BY hs.staff_no;



