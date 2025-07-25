
/* 
JOINS
*/
CREATE TABLE TBL_Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

INSERT INTO TBL_Students (student_id, name, age) VALUES
(1, 'Alice', 20),
(2, 'Bob', 22),
(3, 'Charlie', 21),
(4, 'Diana', 23);

select* from TBL_Students;
CREATE TABLE TBL_Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES TBL_Students(student_id)
);

INSERT INTO TBL_Enrollments (enrollment_id, student_id, course) VALUES
(101, 1, 'Math'),
(102, 1, 'Physics'),
(103, 2, 'Chemistry'),
(104, 4, 'Math');
select* from TBL_Enrollments;
-- INNER JOIN
SELECT TBL_Students.*, TBL_Enrollments.*
FROM TBL_Students
INNER JOIN
TBL_Enrollments
ON TBL_Students.student_id = TBL_Enrollments.student_id
-- FULL OUTER JOIN
SELECT TBL_Students.*, TBL_Enrollments.*
FROM TBL_Students
FULL OUTER JOIN
TBL_Enrollments
ON TBL_Students.student_id = TBL_Enrollments.student_id

CREATE TABLE TBL_EMPLOYEE(
EMP_ID INT PRIMARY KEY,
E_NAME VARCHAR(100),
DEPARTMENT VARCHAR(100),
MANAGER_ID INT NULL,
FOREIGN KEY (MANAGER_ID) REFERENCES TBL_EMPLOYEE(EMP_ID)
);
INSERT INTO TBL_EMPLOYEE (EMP_ID, E_NAME, DEPARTMENT, MANAGER_ID)
VALUES
(1, 'Alice', 'HR', NULL),        -- Top-level manager
(2, 'Bob', 'Finance', 1),
(3, 'Charlie', 'IT', 1),
(4, 'David', 'Finance', 2),
(5, 'Eve', 'IT', 3),
(6, 'Frank', 'HR', 1);
SELECT * FROM TBL_EMPLOYEE
SELECT E.EMP_ID AS EMPLOYEE_ID, E.E_NAME, E.DEPARTMENT, M.E_NAME AS 'MANAGER_NAME', M.EMP_ID AS MANAGER_ID
FROM TBL_EMPLOYEE AS E
LEFT OUTER JOIN
TBL_EMPLOYEE AS M ON E.MANAGER_ID = M.EMP_ID

ALTER TABLE EMPLOYEE 
ADD CONSTRAINT FK_EMPLOYEE FOREIGN KEY (MANAGER_ID)
REFERENCES EMPLOYEE(EMP_ID)


/* 
PROBLEM 2
*/
DROP TABLE TBL_YEAR;
Create table TBL_YEAR (
ID INT,
YR INT,
NPV INT
);
Create table TBL_QUERIES(
ID INT,
YR INT
);
INSERT INTO TBL_YEAR(ID,YR,NPV) VALUES
(1,2018,100),
(7,2020,30),
(13,2019,40),
(1,2019,113),
(2,2008,121),
(3,2009,12),
(11,2020,99),
(7,2019,0);

insert into TBL_QUERIES(ID,YR) values 
(1,2019),
(2,2008),
(3,2009),
(7,2018),
(7,2019),
(7,2020),
(13,2019);

SELECT ISNULL(Y.NPV,0)
FROM TBL_QUERIES AS Q
LEFT OUTER JOIN
TBL_YEAR AS Y
ON 
Y.ID = Q.ID
AND 
Y.YR = Q.YR
