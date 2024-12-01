-- 1
SELECT cust_name
FROM restBill
WHERE bill_total > 450.00 and waiter_no IN (
  SELECT staff_no
  FROM restStaff
  WHERE headwaiter IN (
    SELECT staff_no
    FROM restStaff
    WHERE first_name = 'Charles'));
-- 2
SELECT first_name, surname
FROM restStaff
WHERE staff_no IN (
  SELECT headwaiter
  FROM restStaff
  WHERE staff_no IN (
    SELECT waiter_no
    FROM restBill
    WHERE cust_name LIKE 'Nerida%' and bill_date = 160111));
-- 3
SELECT cust_name
FROM restBill
WHERE bill_total IN (
  SELECT MIN(bill_total)
  FROM restBill);
-- 4
SELECT first_name
FROM restStaff
WHERE staff_no NOT IN (
  SELECT waiter_no
  FROM restBill);
-- 5
SELECT cust_name, first_name, surname, room_name
FROM restBill B
INNER JOIN restStaff 
ON waiter_no = staff_no
INNER JOIN restRest_table RT
ON B.table_no = RT.table_no
WHERE bill_total IN (
  SELECT MAX(bill_total)
  FROM restBill);