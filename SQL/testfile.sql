use cs332h25;

/*Generic template*/
/*INSERT INTO Table VALUES ('NULL','NULL', 'NULL','NULL','NULL','NULL');*/
/*Generic template*/
/*INSERT INTO Table VALUES ('NULL','NULL', 'NULL','NULL','NULL','NULL');*/


/*Student (starting from order of word document)*/
INSERT INTO Student VALUES ('891079149','Bart', 'Lemming','742 Evergreen Terrace','7076422822','942');
INSERT INTO Student VALUES ('891014398','Kathy', 'Gomez','837 Amherst Drive','9495999370','942');
INSERT INTO Student VALUES ('891008652','Matthew', 'Murdock','7999 Fisk Lane','4152009035','653');
INSERT INTO Student VALUES ('891052446','Katherine', 'Edwards','8488 Beacon Street','9162781201','942');
INSERT INTO Student VALUES ('891094508','Robert', 'Speedwagon','7514 Ogre Street','9495079847','653');
INSERT INTO Student VALUES ('891041765','Raymond', 'Baker','103 Tanglewood Street','9094679824','653');
INSERT INTO Student VALUES ('891026552','Gary', 'Oak','10 Pallet Lane','7149218668','942');
INSERT INTO Student VALUES ('891019075','Janet', 'Coleman','132 Winchester Street','6262451974','653');
INSERT INTO Student VALUES ('891041506','Jesse', 'Pinkman','9809 Margo Street','5051433369','942');
INSERT INTO Student VALUES ('891074213','David', 'Hayter','661 Snake Road','9168014085','653');


/*Department*/
INSERT INTO Department VALUES ('942','7146813588', 'Computer Science','CS-513','504986954');
INSERT INTO Department VALUES ('653','7146809883', 'Mathematics','MH-602','416863807');


/*Professors*/
INSERT INTO Professors VALUES ('416863807','Maryellen Francois','714','5251047','25 College Street','Fullerton','CA','92831','F','Professor','$103,730');
INSERT INTO Professors VALUES ('504986954','Ken Masters','714','2721624','77 South Bison Street','Anaheim','CA','92801','M','Professor','$106,209');
INSERT INTO Professors VALUES ('648051456','Mei Zhou','714','8267012','299 Blizzard Road','Cypress','CA','90630','F','Assistant Professor','$81,350');


/*ProfessorDegrees*/
INSERT INTO ProfessorDegrees VALUES ('416863807','653');
INSERT INTO ProfessorDegrees VALUES ('504986954','942');
INSERT INTO ProfessorDegrees VALUES ('648051456','942');


/*Minor*/
INSERT INTO Minor VALUES ('942','891008652');
INSERT INTO Minor VALUES ('653','891026552');
INSERT INTO Minor VALUES ('653','891014398');
INSERT INTO Minor VALUES ('653','891079149');
INSERT INTO Minor VALUES ('942','891019075');


/*Course*/
INSERT INTO Course VALUES ('14313','Calculus I', 'NULL','Calculus For Dummies','3','653');
INSERT INTO Course VALUES ('68806','Calculus II', '14313','Fundamentals of Calculus','4','653');
INSERT INTO Course VALUES ('36840','Intro to Programming', 'NULL','Learn You a Haskell','3','942');
INSERT INTO Course VALUES ('29542','Algorithm Engineering', '36840','The Algorithm Design Manual','5','942');


/*Section - course number, section number, room, meeting, begtime, endtime, Noofseats, professor ssn*/
INSERT INTO Section VALUES('14313','93','MH-355','Tues/Thurs','1:00 pm','2:15 pm','30','416863807');
INSERT INTO Section VALUES('14313','49','MH-355','Mon/Weds','4:00 pm','5:15 pm','30','416863807');
INSERT INTO Section VALUES('68806','61','MH-461','Mon/Weds','10:00 am','11:15 am','25','416863807');
INSERT INTO Section VALUES('36840','52','CS-486','Tues/Thurs','1:00 pm','2:15 pm','40','504986954');
INSERT INTO Section VALUES('36840','03','CS-486','Mon/Weds','9:00 am','11:15 am','40','648051456');
INSERT INTO Section VALUES('36840','76','CS-441','Tues/Thurs','9:00 am','11:15 am','40','648051456');
INSERT INTO Section VALUES('29542','17','CS-285','Mon/Weds','7:00 PM',' 9:45 PM','20','50498695');
INSERT INTO Section VALUES('29542','83','CS-285','Sat','10:00 am','1:00 pm','20','504986954');


/* Enrollment  course number, section number, student CWID, grades*/
INSERT INTO Enrollment VALUES ('14313','49','891079149','B');
INSERT INTO Enrollment VALUES ('36840','52','891079149','B');
INSERT INTO Enrollment VALUES ('29542','83','891079149','C');
INSERT INTO Enrollment VALUES ('14313','93','891014398','A');
INSERT INTO Enrollment VALUES ('68806','61','891014398','B');
INSERT INTO Enrollment VALUES ('36840','76','891014398','B');
INSERT INTO Enrollment VALUES ('14313','49','891008652','F');
INSERT INTO Enrollment VALUES ('36840','03','891008652','C');
INSERT INTO Enrollment VALUES ('29542','83','891008652','D');
INSERT INTO Enrollment VALUES ('29542','17','891052446','A');
INSERT INTO Enrollment VALUES ('36840','03','891094508','A');
INSERT INTO Enrollment VALUES ('29542','83','891094508','A');
INSERT INTO Enrollment VALUES ('68806','61','891094508','A');
INSERT INTO Enrollment VALUES ('14313','49','891041765','B');
INSERT INTO Enrollment VALUES ('68806','61','891041765','A');
INSERT INTO Enrollment VALUES ('29542','17','891041765','F');
INSERT INTO Enrollment VALUES ('36840','52','891026552','B');
INSERT INTO Enrollment VALUES ('68806','61','891026552','B');
INSERT INTO Enrollment VALUES ('29542','83','891026552','B');
INSERT INTO Enrollment VALUES ('14313','49','891041506','C');
INSERT INTO Enrollment VALUES ('68806','61','891041506','D');
INSERT INTO Enrollment VALUES ('36840','52','891041506','A');
INSERT INTO Enrollment VALUES ('14313','49','891019075','A');
INSERT INTO Enrollment VALUES ('68806','61','891019075','B');
INSERT INTO Enrollment VALUES ('14313','49','891074213','W');




