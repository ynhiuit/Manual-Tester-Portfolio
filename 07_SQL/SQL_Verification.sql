/*
=========================================
Project : BookStore
Module  : Login
Author  : Yen Nhi
Purpose : SQL Verification after Login Testing
=========================================
*/

/*
----------------------------------------------------------
Assumed Database Schema
----------------------------------------------------------
Table: Users

Columns:
- UserID        : INT
- FullName      : VARCHAR(100)
- Email         : VARCHAR(100)
- Password      : VARCHAR(255)
- Status        : VARCHAR(20)
- FailedLogin   : INT
- LockUntil     : DATETIME
- RememberMe    : BIT
- LastLogin     : DATETIME

Note:
This table is assumed for SQL verification purposes only.
The actual database schema may vary depending on the system.
----------------------------------------------------------
*/

----------------------------------------------------------
-- SQL01 - Verify user exists
----------------------------------------------------------

SELECT *
FROM Users
WHERE Email = 'user01@gmail.com';

----------------------------------------------------------
-- SQL02 - Verify user's full name
----------------------------------------------------------

SELECT FullName
FROM Users
WHERE Email = 'user01@gmail.com';

----------------------------------------------------------
-- SQL03 - Verify account status
----------------------------------------------------------

SELECT Status
FROM Users
WHERE Email = 'user01@gmail.com';

----------------------------------------------------------
-- SQL04 - Verify user ID
----------------------------------------------------------

SELECT UserID
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL05 - Verify Login Failure
----------------------------------------------------------
SELECT FailedLogin
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL06 - Verify Login Failure - The value must increase after each failed login attempt.
----------------------------------------------------------
SELECT FailedLogin
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL07 - Verify a locked account
----------------------------------------------------------
SELECT LockUntil
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL08 -  Verify account status after lock
----------------------------------------------------------
SELECT Status
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL09 - Verify password
----------------------------------------------------------
SELECT Password
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL10 - Verify password length
----------------------------------------------------------
SELECT LENGTH(Password)
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL11 - Verify Remember Me
----------------------------------------------------------
SELECT RememberMe
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL12 
----------------------------------------------------------
SELECT LastLogin
FROM Users
WHERE Email='user01@gmail.com';

----------------------------------------------------------
-- SQL13 - Verify User
----------------------------------------------------------
SELECT COUNT(*)
FROM Users;

----------------------------------------------------------
-- SQL14
----------------------------------------------------------
SELECT *
FROM Users
ORDER BY UserID;

----------------------------------------------------------
-- SQL15
----------------------------------------------------------
SELECT *
FROM Users
WHERE Status='Active';

----------------------------------------------------------
-- SQL16
----------------------------------------------------------
SELECT *
FROM Users
WHERE Status='Locked';

----------------------------------------------------------
-- SQL17
----------------------------------------------------------
SELECT *
FROM Users
WHERE FailedLogin>0;

----------------------------------------------------------
-- SQL18
----------------------------------------------------------
SELECT *
FROM Users
WHERE LockUntil IS NOT NULL;

----------------------------------------------------------
-- SQL19
----------------------------------------------------------
SELECT *
FROM Users
WHERE Email LIKE '%gmail.com';

----------------------------------------------------------
-- SQL20
----------------------------------------------------------
SELECT UserID, FullName, Email, Status
FROM Users;

