use cs332h25; 


CREATE TABLE IF NOT EXISTS Student (
CWID numeric(9) NOT NULL,
SFName varchar(20),
SLName varchar(20),
SAddr varchar(30),
STele numeric(10),
DeptMajor numeric(5), 
PRIMARY KEY (CWID)
);


CREATE TABLE IF NOT EXISTS Department (
DNO numeric(3) NOT NULL,
DTele numeric(10),
DName varchar(20),
DLocation varchar(6),
DeptPSSN numeric(9), 
PRIMARY KEY(DNO)
);


CREATE TABLE IF NOT EXISTS Professors (
PSSN numeric(9) NOT NULL,
PName varchar(20),
Area numeric(3),
ProfPhone numeric(7),
PAddr varchar(30),
City varchar(15),
State char(2),
Zip numeric(5),
Sex enum('M', 'F'),
Title varchar(20),
Salary long,
PRIMARY KEY(PSSN)
);


CREATE TABLE IF NOT EXISTS Course (
CorNo numeric(5) NOT NULL,
CorTitle varchar(20),
Prereq numeric(5),
Textbook varchar(50),
Units numeric(1),
CorDNO numeric(3),
PRIMARY KEY (CorNo)
);


CREATE TABLE IF NOT EXISTS Section (
SCorNo numeric(5) NOT NULL,
SecNo numeric(2) NOT NULL,
Room varchar(6),
Meeting enum('Mon/Weds', 'Tues/Thurs', 'Fri', 'Sat'),
BegTime time,
EndTime time,
NoofSeats tinyint unsigned, 
SPSSN numeric(9),
FOREIGN KEY (SCorNo) REFERENCES Course(CorNo)
);


CREATE TABLE IF NOT EXISTS ProfessorDegrees (
DegPSSN numeric(9) NOT NULL,
Degree varchar(20) NOT NULL,
FOREIGN KEY (DegPSSN) REFERENCES Professor(PSSN)
);


CREATE TABLE IF NOT EXISTS Minor (
MDNo numeric(3) NOT NULL,
MCWID numeric(9) NOT NULL,
FOREIGN KEY (MDNo) REFERENCES Department(DNO),
FOREIGN KEY (MCWID) REFERENCES Student(CWID)
);


CREATE TABLE IF NOT EXISTS Enrollment (
ECorNo numeric(5) NOT NULL,
ESecNo numeric(2) NOT NULL,
ECWID numeric(9) NOT NULL,
Grades enum ('A', 'A-', 'B+','B', 'B-', 'C+', 'C', 'C-', 'D', 'F', 'W'),
FOREIGN KEY (ECorNo) REFERENCES Course(CorNo),
FOREIGN KEY (ESecNo) REFERENCES Section(SecNo),
FOREIGN KEY (ECWID) REFERENCES Student(CWID)
);