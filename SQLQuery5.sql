CREATE TABLE Teachers(
Teachers_ID int primary key,
First_name varchar(50),
Last_name varchar(50),
Email varchar(60) unique,
Phone_number int ,
Hiredate date);

CREATE TABLE Teachers_Details(
Teachers_DetailsID int primary key ,
Teachers_ID int unique,
Adress varchar(50),
Birthdate date,
Gender bit,
FOREIGN KEY(Teachers_ID) REFERENCES Teachers(Teachers_ID));


CREATE TABLE Courses(
Courses_ID int primary key,
Course_name varchar(50),
Credits int,
Teachers_ID int,
FOREIGN KEY (Teachers_ID)REFERENCES Teachers(Teachers_ID));

CREATE TABLE Students(
Student_ID int primary key,
firstname varchar(40),
lastname varchar(40),
Email varchar(40) unique,
Enrollmentdate date );


CREATE TABLE Enrollment(
Student_ID int ,
Course_ID int ,
EnrollmentDtae date,
PRIMARY KEY (Student_ID,Course_ID),
FOREIGN KEY(Student_ID)REFERENCES Students(Student_ID));


INSERT INTO Teachers(Teachers_ID,First_name,Last_name,Email,Phone_number,Hiredate)
VALUES (1, 'a', 'aa', 'a@vfgbnj', '07895', '2022-05-12'),
       (2, 'b', 'bb', 'b@cvbnkl', '06546', '2020-06-16'),
	   (3, 'c', 'cc', 'c@yvbhjm', '04651', '2021-02-22'),
	   (4, 'd', 'dd', 'd@xdcfgv', '03258', '2025-04-02'),
	   (5, 'e', 'ee', 'e@xfdcgv', '04567', '2020-07-15');


 INSERT INTO Teachers_Details (Teachers_DetailsID, Teachers_ID, Adress, Birthdate, Gender) 
VALUES
(1, 1, '123 Elm St, Springfield', '1980-06-15', 'M'),
(2, 2, '456 Oak St, Rivertown', '1985-09-23', 'F'),
(3, 3, '789 Pine St, Hillcrest', '1978-11-30', 'M'),
(4, 4, '101 Maple St, Greenfield', '1990-03-19', 'F'),
(5, 5, '202 Birch St, Lakeview', '1995-12-05', 'M');


INSERT INTO Courses (Courses_ID, Course_name, Credits,Teachers_ID)
VALUES
(1, 'Mathematics 101', 3, 1),
(2, 'Physics 101', 4, 2),
(3, 'Computer Science 101', 3, 3),
(4, 'History 101', 3, 4),
(5, 'English 101', 2, 5);

INSERT INTO Students (Student_ID, firstname, lastname, Email, Enrollmentdate)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '2023-09-01'),
(2, 'Bob', 'Martinez', 'bob.martinez@example.com', '2023-08-20'),
(3, 'Charlie', 'Lee', 'charlie.lee@example.com', '2023-07-15'),
(4, 'Diana', 'Taylor', 'diana.taylor@example.com', '2023-06-10'),
(5, 'Ethan', 'Moore', 'ethan.moore@example.com', '2023-09-05');

INSERT INTO Enrollment (Student_ID, Course_ID, EnrollmentDtae)
VALUES
(1, 1, '2023-09-01'),
(1, 3, '2023-09-01'),
(2, 2, '2023-08-20'),
(3, 1, '2023-07-15'),
(3, 4, '2023-07-15');


select * from Teachers;
select * from Teachers_Details;
select * from Courses;
select * from Students;
select * from Enrollment; 