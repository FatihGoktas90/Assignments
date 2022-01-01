<<<<<<< HEAD

/*===================================
Write a query to find the maximum duration among the tracks. 
Your query should include TrackId, Name, Milliseconds.
==================================*/

SELECT  TrackId,name,Milliseconds
FROM tracks
LIMIT 1;

/*===================================
Write a query to find the minimum duration among the tracks. 
Your query should include TrackId, Name, Milliseconds.
==================================*/

SELECT  TrackId,name,Milliseconds
FROM tracks
ORDER BY Milliseconds ASC
LIMIT 1;

/*===================================
Write a query to find the tracks whose bytes are higher than
 the average of the bytes of all tracks. Your query should
 include TrackId, Name, Bytes, general average and 
should be ordered by Bytes from highest to lowest.
 General average is the average of all tracks. 
 General average should repeat in every row.
 (Hint: You need to use two subqueries)
==================================*/

SELECT TrackId,Name, Bytes
FROM tracks
WHERE Bytes > (
        SELECT AVG(Bytes)
        FROM tracks)
ORDER BY Bytes DESC;

/*===========================
Write a query that returns the customers
 whose sales representatives are Jane Peacock 
 and Margaret Park. Your query should in
First Name and Last Name of the customers.

=============================*/

SELECT CustomerId,FirstName,LastName
FROM customers
WHERE SupportRepId = (SELECT EmployeeId
                    FROM employees
                    WHERE EmployeeId IN ("3","4"));



/*===========================
Rewrite the subquery above using the JOIN.

=============================*/

SELECT c.CustomerId,c.FirstName,c.LastName
FROM customers c
JOIN employees e 
ON c.SupportRepId=e.EmployeeId
WHERE e.EmployeeId IN ("3","4");


/*===========================
Create a table inside the chinook database. This table tracks the employees’ courses inside the organization. Your table should have the followings features:

               Name of the table: courses
               Columns:
                    CourseId (Primary Key)
                    CourseName (Cannot be null)
                    EmployeeId (Foreign Key - Refers to EmployeeId of employees table ) 
                    CoursePrice

=============================*/

CREATE TABLE courses(
    	Courseld INTEGER,
        CourseName TEXT NOT NULL,
        Employeeld INTERGER ,
        CoursePrice INTEGER ,
        PRIMARY KEY(Courseld),
        FOREIGN KEY (Employeeld) REFERENCES employees(EmployeeId)
        
        );


/*====================================

2. Insert at least 5 rows into the courses table. Your EmployeeId should contain the values of the EmployeeId column on the employees table. You’re free to choose any
 values for other columns (CourseId, CourseName, CoursePrice)

 =====================================*/

INSERT INTO courses VALUES(1, "CLARUSWAY",1, 7000 );
INSERT INTO courses VALUES(2, "DS",2, 5000 );
INSERT INTO courses VALUES(3, "FS",3, 6000 );
INSERT INTO courses VALUES(4, "CS",4, 8000 );
INSERT INTO courses VALUES(5, "WEB3.0",5, 10000 );

/*====================================

2. Delete the last row of your courses table.

 =====================================*/

DELETE FROM courses
WHERE Courseld=5;

SELECT *FROM courses;

/*====================================

Add a new column to your courses table named StartDate. The new column cannot be null.

 =====================================*/

ALTER TABLE courses
ADD StartDate TEXT DEFAULT 'Giriş Yapınız';



/*=====================================
Delete the last row of your courses table.

================================*/
ALTER TABLE courses
DROP COLUMN StartDate ;



/*=====================================
Delete the courses table.

================================*/

=======

/*===================================
Write a query to find the maximum duration among the tracks. 
Your query should include TrackId, Name, Milliseconds.
==================================*/

SELECT  TrackId,name,Milliseconds
FROM tracks
LIMIT 1;

/*===================================
Write a query to find the minimum duration among the tracks. 
Your query should include TrackId, Name, Milliseconds.
==================================*/

SELECT  TrackId,name,Milliseconds
FROM tracks
ORDER BY Milliseconds ASC
LIMIT 1;

/*===================================
Write a query to find the tracks whose bytes are higher than
 the average of the bytes of all tracks. Your query should
 include TrackId, Name, Bytes, general average and 
should be ordered by Bytes from highest to lowest.
 General average is the average of all tracks. 
 General average should repeat in every row.
 (Hint: You need to use two subqueries)
==================================*/

SELECT TrackId,Name, Bytes
FROM tracks
WHERE Bytes > (
        SELECT AVG(Bytes)
        FROM tracks)
ORDER BY Bytes DESC;

/*===========================
Write a query that returns the customers
 whose sales representatives are Jane Peacock 
 and Margaret Park. Your query should in
First Name and Last Name of the customers.

=============================*/

SELECT CustomerId,FirstName,LastName
FROM customers
WHERE SupportRepId = (SELECT EmployeeId
                    FROM employees
                    WHERE EmployeeId IN ("3","4"));



/*===========================
Rewrite the subquery above using the JOIN.

=============================*/

SELECT c.CustomerId,c.FirstName,c.LastName
FROM customers c
JOIN employees e 
ON c.SupportRepId=e.EmployeeId
WHERE e.EmployeeId IN ("3","4");


/*===========================
Create a table inside the chinook database. This table tracks the employees’ courses inside the organization. Your table should have the followings features:

               Name of the table: courses
               Columns:
                    CourseId (Primary Key)
                    CourseName (Cannot be null)
                    EmployeeId (Foreign Key - Refers to EmployeeId of employees table ) 
                    CoursePrice

=============================*/

CREATE TABLE courses(
    	Courseld INTEGER,
        CourseName TEXT NOT NULL,
        Employeeld INTERGER ,
        CoursePrice INTEGER ,
        PRIMARY KEY(Courseld),
        FOREIGN KEY (Employeeld) REFERENCES employees(EmployeeId)
        
        );


/*====================================

2. Insert at least 5 rows into the courses table. Your EmployeeId should contain the values of the EmployeeId column on the employees table. You’re free to choose any
 values for other columns (CourseId, CourseName, CoursePrice)

 =====================================*/

INSERT INTO courses VALUES(1, "CLARUSWAY",1, 7000 );
INSERT INTO courses VALUES(2, "DS",2, 5000 );
INSERT INTO courses VALUES(3, "FS",3, 6000 );
INSERT INTO courses VALUES(4, "CS",4, 8000 );
INSERT INTO courses VALUES(5, "WEB3.0",5, 10000 );

/*====================================

2. Delete the last row of your courses table.

 =====================================*/

DELETE FROM courses
WHERE Courseld=5;

SELECT *FROM courses;

/*====================================

Add a new column to your courses table named StartDate. The new column cannot be null.

 =====================================*/

ALTER TABLE courses
ADD StartDate TEXT DEFAULT 'Giriş Yapınız';



/*=====================================
Delete the last row of your courses table.

================================*/
ALTER TABLE courses
DROP COLUMN StartDate ;



/*=====================================
Delete the courses table.

================================*/

>>>>>>> 8c9181ba8a791c5ab7bee1881c4cc6cae688abca
DROP TABLE courses;