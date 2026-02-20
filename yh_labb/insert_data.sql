INSERT INTO "Campus" (campus_id, location) VALUES
(1, 'Stockholm'),
(2, 'Göteborg');

INSERT INTO "Program" (program_id, program_name, description) VALUES
(1, 'Data Engineer' , 'YH program inom data'), 
(2, 'Systemutvecklare' , 'YH program inom systemutveckling');

INSERT INTO "Course" (course_id, course_name, course_code, credits, description)
VALUES
(1, 'Datamodellering', 'DM25', 20, 'Grundläggande datamodellering'),
(2, 'Databaser', 'DB25', 30, 'SQL och databashantering');


INSERT INTO "ProgramCourse" (program_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1);
  
INSERT INTO "Student" (student_id, first_name, last_name, email, class_id, person_id) VALUES
(1, 'Alice', 'Andersson', 'alice.andersson@yh.se', 1, 1),
(2, 'Bob', 'Bergström', 'bob.bergstrom@yh.se', 2, 2),
(3, 'Charlie', 'Carlsson', 'charlie.carlsson@yh.se', 1, 3); 

INSERT INTO "Class" (class_id, program_id, leader_id, campus_id, start_date) VALUES
(1, 1, 1, 1, '2024-09-01'),
(2, 2, 2, 2, '2024-09-01');

INSERT INTO "Instractor" (instructor_id, first_name, last_name, email, company_id, person_id) VALUES
(1, 'David', 'Dahl', 'david.dahl@yh.se', 1, 4);
(2, 'Eva', 'Eriksson', 'eva.eriksson@yh.se', 2, 5);

INSERT INTO "CourseInstructor" (course_id, instructor_id) VALUES
(1, 1),
(2, 2);

INSERT INTO "Company" (company_id, name, org_number, f_tax, address, email, phone_number, hourly_rate) VALUES
(1, 'Tech Solutions', 'ITT', TRUE, 'Stockholm', 'tech@yh.se', '070-1234567', 150.00),
(2, 'Data Analytics Inc.', 'Data Analysis', FALSE, 'Göteborg', 'data@yh.se', '070-9876543', 120.00);


INSERT INTO "ProgramLeader" (leader_id, first_name, last_name, email, person_id) VALUES
(1, 'Fiona', 'Fransson', 'fiona.fransson@yh.se', 1),
(2, 'Gustav', 'Gustafsson', 'gustav.gustafsson@yh.se', 2);

INSERT INTO "PersonalInfo" (person_id, personal_number) VALUES
(1, '19900101-1234'),
(2, '19900202-2345'),
(3, '19900303-3456');