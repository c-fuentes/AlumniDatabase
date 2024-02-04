--A listing of all donors who have donated with name, grad date, major, and a total amt, the report will be sorted in descending order of the total donated amt
SELECT firstname, lastname, major, yearof,  SUM(totalnum) AS "Total Donated Amount"
FROM Alumni JOIN DegreeEarned USING(AlumniID) JOIN Donations USING(AlumniID)
GROUP BY(firstname, lastname, major, yearof)
ORDER BY("Total Donated Amount") DESC;

/*A list of the specified area and year of graduation, each alumnus's name, e-mail address, the degree earned, work phone number, home phone number, 
and linkden who graduated between 2000 and 2020
*/
SELECT yearOf, firstname, lastname, email, areaname, workphone, homephone, linkedin
FROM Alumni JOIN DegreeEarned USING(AlumniID) JOIN Degree USING(DegreeID)
WHERE yearOf BETWEEN 2000 AND 2020;

--A list of alumni who work in Norfolk Southern with name, join date, title, and salary range
SELECT firstname, lastname, datejoined, jobtitle, salary
FROM Alumni A JOIN AlumniEmployment AE ON(A.alumniID = AE.alumni_alumniID) JOIN Company USING(CompanyID)
WHERE CompanyName = 'Norfolk Southern';

--Find all alumni whose expertise in 'Database' and 'Software Development'
SELECT Alumni.*
FROM Alumni 
WHERE alumniID IN(
  SELECT alumniID
  FROM AExpertise JOIN Expertise USING(exID) 
  WHERE exName = 'Database'
)
AND alumniID IN(
  SELECT alumniID
  FROM AExpertise JOIN Expertise USING(exID) 
  WHERE exName = 'Software Development');

--Find all alumni who mentor current CSU student, list alumni name and student name
SELECT a.firstname AS "Alumni FirstName", a.lastname AS "Alumni LastName", csu.firstname AS "Student FirstName", csu.lastname AS "Student LastName" 
FROM Alumni a, Mentor, CSUStudents csu
WHERE a.alumniID = mentor.alumniID AND mentor.csustudentID = csu.csustudentID; 
