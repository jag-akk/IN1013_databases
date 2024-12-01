
1--

SELECT DISTINCT rb.cust_name
FROM restBill rb
WHERE rb.bill_total > 450.00
  AND rb.waiter_no IN (
      SELECT rs.staff_no FROM restStaff rs
      WHERE rs.headwaiter = (
          SELECT staff_no
          FROM restStaff
          WHERE first_name = 'Charles'
      )
  );

2--
SELECT rs.first_name, rs.surname
FROM restStaff rs
WHERE rs.staff_no = (
    SELECT headwaiter FROM restStaff
    WHERE staff_no = (
        SELECT waiter_no FROM restBill
        WHERE cust_name = 'Nerida Smith' AND bill_date = 160111
    )
);

3--
SELECT cust_name
FROM restBill WHERE bill_total = (
    SELECT MIN(bill_total)
    FROM restBill
);

4--
SELECT rs.first_name, rs.surname
FROM restStaff rs
WHERE rs.staff_no NOT IN (
    SELECT DISTINCT waiter_no
    FROM restBill
);

5--
SELECT rb.cust_name, hs.first_name AS headwaiter_first_name, hs.surname AS headwaiter_surname, rt.room_name
FROM restBill rb
JOIN restRest_table rt ON rb.table_no = rt.table_no
JOIN restStaff ws ON rb.waiter_no = ws.staff_no
JOIN restStaff hs ON ws.headwaiter = hs.staff_no
WHERE rb.bill_total = (
    SELECT MAX(bill_total)
    FROM restBill
);
