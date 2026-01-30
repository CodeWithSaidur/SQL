create database if not exists school;
use schooldb;
drop table if exists students;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no INT UNIQUE,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    class VARCHAR(5),
    section VARCHAR(2),
    dob DATE,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    address TEXT,
    guardian_name VARCHAR(100),
    guardian_phone VARCHAR(15),
    admission_date DATE,
    status ENUM('Active', 'Inactive', 'Passed', 'Dropped') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

use schooldb;
INSERT INTO students (
    roll_no,
    name,
    email,
    phone,
    class,
    section,
    dob,
    age,
    gender,
    address,
    guardian_name,
    guardian_phone,
    admission_date,
    status
) VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', '9876543201', '10', 'A', '2008-05-14', 16, 'Male', 'Delhi', 'Anil Sharma', '9876500001', '2022-04-10', 'Active'),
(102, 'Priya Singh', 'priya.singh@gmail.com', '9876543202', '10', 'A', '2008-08-21', 15, 'Female', 'Noida', 'Rakesh Singh', '9876500002', '2022-04-10', 'Active'),
(103, 'Aman Verma', 'aman.verma@gmail.com', '9876543203', '9', 'B', '2009-01-12', 15, 'Male', 'Ghaziabad', 'Suresh Verma', '9876500003', '2023-04-12', 'Active'),
(104, 'Sneha Gupta', 'sneha.gupta@gmail.com', '9876543204', '8', 'C', '2010-11-03', 14, 'Female', 'Gurgaon', 'Mahesh Gupta', '9876500004', '2023-04-15', 'Active'),
(105, 'Arjun Patel', 'arjun.patel@gmail.com', '9876543205', '7', 'A', '2011-07-19', 13, 'Male', 'Ahmedabad', 'Ketan Patel', '9876500005', '2024-04-05', 'Active'),

(106, 'Neha Mehta', 'neha.mehta@gmail.com', '9876543206', '9', 'A', '2009-02-22', 15, 'Female', 'Mumbai', 'Sanjay Mehta', '9876500006', '2023-04-12', 'Active'),
(107, 'Rohit Yadav', 'rohit.yadav@gmail.com', '9876543207', '8', 'B', '2010-06-18', 14, 'Male', 'Jaipur', 'Vijay Yadav', '9876500007', '2023-04-15', 'Active'),
(108, 'Ananya Iyer', 'ananya.iyer@gmail.com', '9876543208', '10', 'B', '2008-09-10', 15, 'Female', 'Chennai', 'Ramesh Iyer', '9876500008', '2022-04-10', 'Active'),
(109, 'Kunal Joshi', 'kunal.joshi@gmail.com', '9876543209', '7', 'C', '2011-12-01', 13, 'Male', 'Pune', 'Nitin Joshi', '9876500009', '2024-04-05', 'Active'),
(110, 'Pooja Nair', 'pooja.nair@gmail.com', '9876543210', '8', 'A', '2010-03-09', 14, 'Female', 'Kochi', 'Sunil Nair', '9876500010', '2023-04-15', 'Active'),

(111, 'Aditya Mishra', 'aditya.mishra@gmail.com', '9876543211', '9', 'C', '2009-07-25', 15, 'Male', 'Lucknow', 'Rajesh Mishra', '9876500011', '2023-04-12', 'Active'),
(112, 'Simran Kaur', 'simran.kaur@gmail.com', '9876543212', '10', 'C', '2008-10-30', 15, 'Female', 'Amritsar', 'Harpreet Kaur', '9876500012', '2022-04-10', 'Active'),
(113, 'Mohit Jain', 'mohit.jain@gmail.com', '9876543213', '8', 'B', '2010-01-05', 14, 'Male', 'Indore', 'Alok Jain', '9876500013', '2023-04-15', 'Active'),
(114, 'Riya Chatterjee', 'riya.ch@gmail.com', '9876543214', '7', 'B', '2011-04-17', 13, 'Female', 'Kolkata', 'Suman Chatterjee', '9876500014', '2024-04-05', 'Active'),
(115, 'Siddharth Roy', 'siddharth.roy@gmail.com', '9876543215', '9', 'A', '2009-11-11', 15, 'Male', 'Kolkata', 'Amit Roy', '9876500015', '2023-04-12', 'Active'),

(116, 'Nikita Desai', 'nikita.desai@gmail.com', '9876543216', '10', 'A', '2008-02-14', 16, 'Female', 'Surat', 'Pravin Desai', '9876500016', '2022-04-10', 'Active'),
(117, 'Varun Malhotra', 'varun.m@gmail.com', '9876543217', '8', 'C', '2010-08-08', 14, 'Male', 'Chandigarh', 'Deepak Malhotra', '9876500017', '2023-04-15', 'Active'),
(118, 'Isha Kapoor', 'isha.kapoor@gmail.com', '9876543218', '7', 'A', '2011-09-23', 13, 'Female', 'Delhi', 'Manoj Kapoor', '9876500018', '2024-04-05', 'Active'),
(119, 'Akash Das', 'akash.das@gmail.com', '9876543219', '9', 'B', '2009-05-06', 15, 'Male', 'Bhubaneswar', 'Prakash Das', '9876500019', '2023-04-12', 'Active'),
(120, 'Meera Pillai', 'meera.pillai@gmail.com', '9876543220', '8', 'A', '2010-12-19', 14, 'Female', 'Trivandrum', 'Ravi Pillai', '9876500020', '2023-04-15', 'Active'),

(121, 'Harsh Agarwal', 'harsh.agarwal@gmail.com', '9876543221', '10', 'B', '2008-06-02', 16, 'Male', 'Agra', 'Sanjay Agarwal', '9876500021', '2022-04-10', 'Active'),
(122, 'Tanya Bansal', 'tanya.b@gmail.com', '9876543222', '7', 'C', '2011-01-28', 13, 'Female', 'Meerut', 'Vikas Bansal', '9876500022', '2024-04-05', 'Active'),
(123, 'Ravi Kumar', 'ravi.kumar@gmail.com', '9876543223', '9', 'C', '2009-09-15', 15, 'Male', 'Patna', 'Ashok Kumar', '9876500023', '2023-04-12', 'Active'),
(124, 'Aditi Rao', 'aditi.rao@gmail.com', '9876543224', '8', 'B', '2010-04-04', 14, 'Female', 'Hyderabad', 'Srinivas Rao', '9876500024', '2023-04-15', 'Active'),
(125, 'Nikhil Saxena', 'nikhil.saxena@gmail.com', '9876543225', '10', 'C', '2008-12-07', 15, 'Male', 'Bareilly', 'Pankaj Saxena', '9876500025', '2022-04-10', 'Active');

use schooldb;
select * from students;

select count(*) AS total from students;

select name , class from  students;

select * from students where class = '10' and age='15';

select * from students where age between 10 and 15 order by age DESC;

select name, phone,  admission_date from students order by admission_date;

select name, age from students where age > '10';

select * from students where name like 'A%';


