CREATE DATABASE employee;
USE employee;
-- going to create three table Departments,location,employee.
CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL
);
CREATE TABLE location (
location_id INT PRIMARY KEY,
location_name VARCHAR(100) NOT NULL
);
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
	Employee_name VARCHAR(100) NOT NULL,
    Gender ENUM('M', 'F'),
    Age INT,
    Hire_date DATE,
    Designation VARCHAR(150),
    Salary DECIMAL(10,2),
    department_id INT,
    location_id INT,
    
    FOREIGN KEY(department_id) REFERENCES Departments(Department_id),
    FOREIGN KEY(location_id) REFERENCES location(location_id)
    );
    
    SELECT * FROM Departments;
    SELECT * FROM location;
    SELECT * FROM employees;
    
    -- going to add email column in employee table
    ALTER TABLE employee 
    ADD email VARCHAR(150);
    
-- going to increase degignation datatype lenght using modify IN EMPLOYEE TABLE
    ALTER TABLE employee
    MODIFY Designation VARCHAR(250);
    
-- GOING TO DROP AGE COLUMN IN EMLOYEE TABLE
    ALTER TABLE employee
    DROP COLUMN Age;
    
-- going to rename Hire_date to date_of_joining from employee table
    ALTER TABLE employee
    RENAME COLUMN Hire_date TO date_of_joining;
    
    -- Rename the "Departments" table to "Departments_Info" from department table
    RENAME TABLE Departments TO Departments_Info;
    
    -- RENAME TABLE Location TO Locations from location table
    RENAME TABLE location to locations;
    
    -- going to truncate emplployee table
    TRUNCATE TABLE employee;
    
    -- goin g to drop employee table and database
    DROP TABLE employee;
    DROP DATABASE employee;
    
    
    -- going to recreate the database
    CREATE DATABASE employee;
    USE employee;
    
    -- going to create all 3 table using some special constrains
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE

    );

CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
    );
    
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender ENUM('F', 'M'),
    age INT CHECK (age >= 18),
    Hire_date DATE DEFAULT (CURRENT_DATE),
    Designation VARCHAR(250),
    Salary DECIMAL(10,2),
    department_id INT,
    location_id INT,
    
    FOREIGN KEY(department_id) REFERENCES Departments(Department_id),
    FOREIGN KEY(location_id) REFERENCES location(location_id)
    );
    
    
    
 



    
 