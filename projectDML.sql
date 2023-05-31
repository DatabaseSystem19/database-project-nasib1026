-- Selecting all rows from USER table
SELECT * FROM USERS;

-- Selecting all rows from GLOCUSE table
SELECT * FROM GLUCOSE;

-- Selecting all rows from VITAMIN table
SELECT * FROM VITAMIN;

-- Selecting all rows from PROTEIN table
SELECT * FROM PROTEIN;

-- Selecting all rows from WATER table
SELECT * FROM WATER;

-- Selecting all rows from NEED table
SELECT * FROM NEED;

-- Adding vitamin D to table
ALTER TABLE VITAMIN ADD vit_D NUMBER(4,1);

-- changing data type
ALTER TABLE USERS MODIFY height FLOAT;

-- Renaming a column 
ALTER TABLE USERS RENAME COLUMN age TO user_age;

-- Dropping Vitamin D column
ALTER TABLE VITAMIN DROP COLUMN vit_D;

-- Selecting height and weight from USER table for users with age between 18 and 22
SELECT height, weight FROM USERS WHERE user_age BETWEEN 18 AND 22;

-- Selecting the average value of G_need from NEED table
SELECT AVG(NVL(G_need, 0)) FROM NEED;

-- Counting the number of rows in USER table
SELECT COUNT(*) FROM USERS;

-- Selecting G_need, P_need, and W_need from NEED table for the maximum age in NEED table
SELECT G_need, P_need, W_need FROM NEED WHERE age = (SELECT MAX(age) FROM NEED);

-- Joining GLUCOSE and PROTEIN tables on the id column and selecting G_take, G_upper, P_take, and P_upper
SELECT g.G_take, g.G_upper, p.P_take, p.P_upper FROM GLUCOSE g JOIN PROTEIN p USING (id);

-- Performing a natural join between GLUCOSE and PROTEIN tables and selecting id, G_take, G_upper, P_take, and P_upper
SELECT id, g.G_take, g.G_upper, p.P_take, p.P_upper FROM GLUCOSE g NATURAL JOIN PROTEIN p;

-- Performing a left outer join between VITAMIN and WATER tables and selecting vit_A, vit_B, vit_C, W_take, and W_upper
SELECT v.vit_A, v.vit_B, v.vit_C, w.W_take, w.W_upper FROM VITAMIN v LEFT OUTER JOIN WATER w ON v.id = w.id;

-- Performing a right outer join between VITAMIN and WATER tables and selecting vit_A, vit_B, vit_C, W_take, and W_upper
SELECT v.vit_A, v.vit_B, v.vit_C, w.W_take, w.W_upper FROM VITAMIN v RIGHT OUTER JOIN WATER w ON v.id = w.id;

-- Performing a full outer join between VITAMIN and WATER tables and selecting vit_A, vit_B, vit_C, W_take, and W_upper
SELECT v.vit_A, v.vit_B, v.vit_C, w.W_take, w.W_upper FROM VITAMIN v FULL OUTER JOIN WATER w ON v.id = w.id;

-- Updating the W_upper value to 2.6 in WATER table for id 201
UPDATE WATER SET W_upper = 2.6 WHERE id = 201;

-- Selecting all rows from WATER table
SELECT * FROM WATER;

-- Deleting the row from WATER table with id 204
DELETE FROM WATER WHERE id = 204;

-- Selecting all rows from WATER table
SELECT * FROM WATER;

-- Renaming a column 
ALTER TABLE USERS RENAME COLUMN user_age TO age;


