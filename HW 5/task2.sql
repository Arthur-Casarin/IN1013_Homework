-- 1
SELECT SUM(bill_total) AS Income
FROM restBill;
-- 2
SELECT SUM(bill_total) AS "Feb Income"
FROM restBill
WHERE (bill_date > 160200 and bill_date < 160300);
-- 3
SELECT AVG(bill_total) AS "Average Income"
FROM restBill;
-- 4
SELECT MIN(no_of_seats) AS Min, MAX(no_of_seats) AS Max, AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = 'Blue';
-- 5
SELECT COUNT(DISTINCT table_no) AS "Distinct Tables"
FROM restBill
WHERE (waiter_no = 004 or waiter_no = 006)