-- 1
SELECT first_name, surname, bill_date, COUNT(*) AS 'Number of bills'
FROM restStaff
INNER JOIN restBill
ON waiter_no = staff_no
GROUP BY staff_no, bill_date
HAVING COUNT(*) > 1;
-- 2
SELECT room_name, COUNT(table_no) AS 'Number of tables with 7+ seats'
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;
-- 3
SELECT room_name, SUM(bill_total) AS 'Bill total per table'
FROM restBill B
INNER JOIN restRest_table RT
ON B.table_no = RT.table_no
GROUP BY room_name;
-- 4
SELECT S1.first_name, S1.surname, SUM(bill_total) AS 'Bill Total per headwaiter'
FROM restStaff S1
INNER JOIN restStaff S2
ON S1.staff_no = S2.headwaiter
INNER JOIN restBill
ON S2.staff_no = waiter_no
GROUP BY S1.staff_no
ORDER BY SUM(bill_total) DESC;
-- 5
SELECT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400.00;
-- 6
SELECT first_name, surname, COUNT(*) AS 'Number of bills'
FROM restStaff
INNER JOIN restBill
ON waiter_no = staff_no
GROUP BY staff_no, bill_date
HAVING COUNT(*) > 2;