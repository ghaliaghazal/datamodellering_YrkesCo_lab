CREATE TABLE "Course" (
  "course_id" INTEGER PRIMARY KEY,
  "course_name" VARCHAR(50) NOT NULL,
  "course_code" VARCHAR(50) NOT NULL,
  "description" TEXT NOT NULL,
  "credits" SMALLINT NOT NULL
);

CREATE TABLE "PersonalInfo" (
  "person_id" INTEGER PRIMARY KEY,
  "personal_number" VARCHAR(50) NOT NULL
);

CREATE TABLE "Program" (
  "program_id" INTEGER PRIMARY KEY,
  "program_name" VARCHAR(100) NOT NULL,
  "description" TEXT
);

CREATE TABLE "ProgramCourse" (
  "program_id" INTEGER NOT NULL,
  "course_id" INTEGER NOT NULL
);

CREATE TABLE "ProgramLeader" (
  "leader_id" INTEGER PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "person_id" INTEGER NOT NULL
);

CREATE TABLE "Company" (
  "company_id" INTEGER PRIMARY KEY,
  "name" VARCHAR(100) NOT NULL,
  "org_number" VARCHAR(50) NOT NULL,
  "f_tax" BOOLEAN NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "email" VARCHAR(255),
  "phone_number" VARCHAR(50),
  "hourly_rate" NUMERIC(5,2)
);

CREATE TABLE "Instructor" (
  "instructor_id" INTEGER PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  "company_id" INTEGER,
  "person_id" INTEGER NOT NULL
);

CREATE TABLE "Class" (
  "class_id" INTEGER PRIMARY KEY,
  "program_id" INTEGER NOT NULL,
  "leader_id" INTEGER NOT NULL,
  "campus_id" INTEGER NOT NULL,
  "start_date" DATE NOT NULL
);

CREATE TABLE "Student" (
  "student_id" INTEGER PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "class_id" INTEGER NOT NULL,
  "person_id" INTEGER NOT NULL
);

CREATE TABLE "CourseInstructor" (
  "course_id" INTEGER NOT NULL,
  "instructor_id" INTEGER NOT NULL
);

CREATE TABLE "Campus" (
  "campus_id" INTEGER PRIMARY KEY,
  "location" VARCHAR(100) NOT NULL
);

CREATE UNIQUE INDEX ON "ProgramCourse" ("program_id", "course_id");

CREATE UNIQUE INDEX ON "CourseInstructor" ("course_id", "instructor_id");

ALTER TABLE "ProgramCourse" ADD FOREIGN KEY ("program_id") REFERENCES "Program" ("program_id");

ALTER TABLE "ProgramCourse" ADD FOREIGN KEY ("course_id") REFERENCES "Course" ("course_id");

ALTER TABLE "ProgramLeader" ADD FOREIGN KEY ("person_id") REFERENCES "PersonalInfo" ("person_id");

ALTER TABLE "Instructor" ADD FOREIGN KEY ("company_id") REFERENCES "Company" ("company_id");

ALTER TABLE "Instructor" ADD FOREIGN KEY ("person_id") REFERENCES "PersonalInfo" ("person_id");

ALTER TABLE "Class" ADD FOREIGN KEY ("program_id") REFERENCES "Program" ("program_id");

ALTER TABLE "Class" ADD FOREIGN KEY ("leader_id") REFERENCES "ProgramLeader" ("leader_id");

ALTER TABLE "Class" ADD FOREIGN KEY ("campus_id") REFERENCES "Campus" ("campus_id");

ALTER TABLE "Student" ADD FOREIGN KEY ("class_id") REFERENCES "Class" ("class_id");

ALTER TABLE "Student" ADD FOREIGN KEY ("person_id") REFERENCES "PersonalInfo" ("person_id");

ALTER TABLE "CourseInstructor" ADD FOREIGN KEY ("course_id") REFERENCES "Course" ("course_id");

ALTER TABLE "CourseInstructor" ADD FOREIGN KEY ("instructor_id") REFERENCES "Instructor" ("instructor_id");
