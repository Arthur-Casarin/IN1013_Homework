-- 1
CREATE VIEW samsBills
AS (SELECT first_name, surname, bill_date, cust_name, bill_total
  FROM (SELECT *
    FROM restStaff
    WHERE first_name = 'Sam') S
  INNER JOIN restBill
  ON waiter_no = staff_no);
-- 2
SELECT * FROM samsBills WHERE bill_total > 400.00;
-- 3
CREATE VIEW roomTotals
AS (SELECT room_name, SUM(bill_total) AS total_sum
  FROM restRest_table RT
  INNER JOIN restBill B
  ON RT.table_no = B.table_no
  GROUP BY room_name);
-- 4
CREATE VIEW teamTotals
AS (SELECT CONCAT(S1.first_name, ' ', S1.surname) AS headwaiter_name, SUM(bill_total) AS total_sum
  FROM restStaff S1
  INNER JOIN restStaff S2
  ON S1.staff_no = S2.headwaiter
  INNER JOIN restBill
  ON S2.staff_no = waiter_no
  WHERE S1.headwaiter IS NULL
  GROUP BY headwaiter_name);
