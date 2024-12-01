-- 1
SELECT first_name
FROM restStaff
INNER JOIN restBill
ON staff_no = waiter_no
WHERE cust_name = 'Tanya Singh';
-- 2
SELECT room_date
FROM restRoom_management RM
INNER JOIN restStaff
ON RM.headwaiter = staff_no
WHERE room_date < 160300 and room_date > 160200 and first_name = 'Charles';
-- 3
SELECT S2.first_name
FROM restStaff S1
INNER JOIN restStaff S2
ON S1.headwaiter = S2.headwaiter
WHERE S1.first_name = 'Zoe' and S1.surname = 'Ball';
-- 4
SELECT cust_name, bill_total, first_name
FROM restBill
INNER JOIN restStaff
ON waiter_no = staff_no
ORDER BY bill_total DESC;
-- 5
SELECT S1.first_name, S1.surname
FROM restStaff S1
INNER JOIN restStaff S2
ON S1.headwaiter = S2.headwaiter
INNER JOIN restBill
ON waiter_no = S2.staff_no
WHERE bill_no = 00014 or bill_no = 00017;
-- 6
SELECT first_name, surname
FROM restStaff S
INNER JOIN restRoom_management RM
ON RM.headwaiter = S.headwaiter or RM.headwaiter = staff_no
WHERE room_name = 'Blue' and room_date = 160312;