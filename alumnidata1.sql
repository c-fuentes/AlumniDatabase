INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000001, 'John', 'Doe', 'Computer Science', 'johndoe1@yahoo.com', 4040001001);
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000002, 'Jane', 'Foster', 'Computer Science', 'janefoster2@gmail.com', 4042561031);
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000003, 'Luke', 'Forester', 'Information Technology', 'lukeforester@gmail.com', 4042561037);
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000008, 'Izumi', 'Curtis', 'Science', 'ACurtis@gmail.com', 4046754394);   
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES (00000000009, 'Trisha', 'Elrick', 'Professional Studies', 'TElrick@gmail.com', 4046784434);
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000004, 'Jonathan', 'Arnold', 'Marketing', 'JonArnold@gmail.com', 4702231657);    
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000005, 'Vince', 'Jackson', 'Finance', 'VJackson@gmail.com', 4043558647);    
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000006, 'Joey', 'Staples', 'Graphic Design', 'JStaples@gmail.com', 4785343283);    
INSERT INTO Alumni(AlumniID, firstName, lastName, major, email, homePhone) 
    VALUES(00000000007, 'Lenny', 'Joseph', 'Cybersecurity', 'LennyJoe@gmail.com', 4702325564);
    
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9000712345, 'Edward', 4702341567, 'BBA', 'Business', 'Elrick');
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9000712357, 'Patrick', 4709874512, 'MS', 'Chemistry', 'Starfish');
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9005483743, 'Ling', 4702341567, 'BA', 'Arts', 'Yao');    
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9008864353, 'Alphonse', 4042341567, 'BS', 'Science', 'Elrick');
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9000435643, 'Riza', 4788741567, 'BCJ', 'Criminal Justice', 'Hawkeye');    
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9003432944, 'Roy', 4706593843, 'BS', 'Chemistry', 'Mustang');   
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9005503345, 'Winry', 4046694485, 'BPS', 'Professional Studies', 'Rockbell');    
INSERT INTO CSUStudents(CSUStudentID, firstName, phoneNum, Type, Major, lastName) 
    VALUES (9000806553, 'Maes', 4709161234, 'BE', 'Education', 'Hughes');

INSERT INTO Mentor(mentorID, education, AlumniID, CSUStudentID) 
    VALUES (00000000001, 'Data Structures', 00000000002, 9000712345);
INSERT INTO Mentor(mentorID, education, AlumniID, CSUStudentID) 
    VALUES (00000000002, 'Data Structures', 00000000002, 9000712357);
INSERT INTO Mentor(mentorID, education, AlumniID, CSUStudentID)     
    VALUES (00000000003, 'Science', 00000000008, 9008864353);
INSERT INTO Mentor(mentorID, education, AlumniID, CSUStudentID) 
    VALUES (00000000004, 'Professional Studies', 00000000009, 9005503345);

INSERT INTO Expertise(ExID, exName) VALUES (000001, 'Database');
INSERT INTO Expertise(ExID, exName) VALUES (000002, 'Software Development');
INSERT INTO Expertise(ExID, exName) VALUES (000003, 'Sales Management');
INSERT INTO Expertise(ExID, exName) VALUES (000004, 'Industrial Design');
INSERT INTO Expertise(ExID, exName) VALUES (000005, 'Network Security');
INSERT INTO Expertise(ExID, exName) VALUES (000006, 'Sociology');
INSERT INTO Expertise(ExID, exName) VALUES (000007, 'Mechanical Engineering');

INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000002, 000002);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000002, 000001);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000001, 000001);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000003, 000002);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000004, 000003);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000006, 000004);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000007, 000005);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000009, 000006);
INSERT INTO aExpertise(AlumniID, ExID) VALUES (00000000008, 000007);

INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000001, 'Main Street Table', 'SGA Information Tabling', '07-NOV-2023');
INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000002, 'Virtual', 'The Color of Money: Uses and Limitations', '07-NOV-2023');
INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000003, 'Clayton State Blvd', 'Business Leaders of Tomorrow', '01-APR-2023');
INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000004, 'Clayton State Blvd', 'CIMS', '06-MAR-2023');    
INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000005, 'West Peachtree St', 'Cyber Hackathon', '05-JUN-2023');
INSERT INTO Event(eID, eLocation, eName, eDate) 
    VALUES(000006, 'Virtual', 'Industry Advancement', '12-AUG-2023');

INSERT INTO invitation(eID, AlumniID) VALUES (000001, 00000000001);
INSERT INTO invitation(eID, AlumniID) VALUES (000001, 00000000002);
INSERT INTO invitation(eID, AlumniID) VALUES (000002, 00000000001);
INSERT INTO invitation(eID, AlumniID) VALUES (000002, 00000000002);
INSERT INTO invitation(eID, AlumniID) VALUES (000003, 00000000004);
INSERT INTO invitation(eID, AlumniID) VALUES (000003, 00000000005);
INSERT INTO invitation(eID, AlumniID) VALUES (000004, 00000000003);
INSERT INTO invitation(eID, AlumniID) VALUES (000004, 00000000001);
INSERT INTO invitation(eID, AlumniID) VALUES (000004, 00000000002);
INSERT INTO invitation(eID, AlumniID) VALUES (000004, 00000000007);
INSERT INTO invitation(eID, AlumniID) VALUES (000005, 00000000007);
INSERT INTO invitation(eID, AlumniID) VALUES (000006, 00000000006);

INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00007, 'Computer Science, BS');
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00009, 'Information Technology, BS');
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00010, 'Marketing, BS');    
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00011, 'Finance, BS');    
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00004, 'Graphic Design, BS');   
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00013, 'Mechanical Engineering, BS');    
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00008, 'Cybersecurity, BS');   
INSERT INTO Degree(DegreeID, AreaName) 
    VALUES(00015, 'Professional Studies, BS');

INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00007, 00000000002, 2019);
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00007, 00000000001, 2016);
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00009, 00000000003, 2022);
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00010, 00000000004, 2020);
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00011, 00000000005, 2019);
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00004, 00000000006, 2018);   
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00013, 00000000008, 2015);    
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00008, 00000000007, 2019);    
INSERT INTO DegreeEarned(DegreeID, AlumniID, YearOf) 
    VALUES (00015, 00000000009, 2017);

INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (01, 700, 'CSCI', 0);
INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (02, 0, 'IT', 1);
INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (03, 1000, 'ARTS', 2);
INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (04, 500, 'HEAL', 3);
INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (05, 100, 'BUS', 4);
INSERT INTO Funds(FundID, donationAmount, Dept, lakeConnect) VALUES (06, 2500, 'MATH', 5);

INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00002, '11-OCT-2023', 300, 00000000001, 01);
INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00003, '11-NOV-2023', 200, 00000000001, 02);
INSERT INTO Donations(DonationId, Date_1, totalNum, AlumniID, FundID) 
    VALUES (00001, '12-OCT-2022', 400, 00000000002, 01);
INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00004, '12-NOV-2023', 500, 00000000008, 04);
INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00006, '09-SEP-2023', 250, 00000000005, 05);
INSERT INTO Donations(DonationId, Date_1, totalNum, AlumniID, FundID) 
    VALUES (00005, '15-JUN-2022', 475, 00000000004, 05);
INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00009, '01-APR-2023', 1000, 00000000009, 04);
INSERT INTO Donations(DonationId, date_1, totalNum, AlumniID, FundID) 
    VALUES (00007, '16-SEP-2023', 600, 00000000007, 05);
INSERT INTO Donations(DonationId, Date_1, totalNum, AlumniID, FundID) 
    VALUES (00008, '20-AUG-2023', 700, 00000000006, 06);

INSERT INTO Company(CompanyID, CompanyName, CompanyLocation, CompanySize) 
    VALUES (001, 'ATandT', '208 South Akard St, Dallas, TX 75201', 160700);
INSERT INTO Company(CompanyID, CompanyName, CompanyLocation, CompanySize) 
    VALUES (002, 'Clayton State University', '2000 Clayton State Blvd, Morrow, GA 30260', NULL);
INSERT INTO Company(CompanyID, CompanyName, CompanyLocation, CompanySize) 
    VALUES (004, 'Southern Company', '30 Ivan Allen Blvd, Atlanta, GA 30308', 27000);
INSERT INTO Company(CompanyID, CompanyName, CompanyLocation, CompanySize) 
    VALUES (005, 'Aflac', '1932 Wynnton Rd, Columbus, GA 31999', 13000);
INSERT INTO Company(CompanyID, CompanyName, CompanyLocation, CompanySize) 
    VALUES (003, 'Norfolk Southern', '650 West Peachtree St, Atlanta, GA 30308', 19300);
    
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000001, 001, '02-JUN-2016', 75000, '15-MAR-2018', 'Junior Developer');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000001, 001, '15-MAR-2018', 90000, null, 'Software Developer');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000002, 002, '06-AUG-2019', 70000, null, 'IT Specialist');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000008, 004, '24-OCT-2019', 70000, null, 'Mechanical Engineer');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000009, 002, '13-APR-2017', 68000, null, 'Sociologist');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000004, 003, '11-AUG-2020', 65000, null, 'Marketing Manager');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000005, 002, '15-FEB-2015', 80000, null, 'Financial Supervisor');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000006, 001, '09-OCT-2021', 78000, null, 'Graphic Designer');
INSERT INTO AlumniEmployment(Alumni_AlumniID, CompanyID, dateJoined, Salary, dateLeft, jobTitle) 
    VALUES (00000000007, 003, '01-NOV-2018', 85000, null, 'Cybersecurity Expert');

