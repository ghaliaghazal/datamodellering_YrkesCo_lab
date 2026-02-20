SELECT * FROM "Class";
SELECT * FROM "ProgramLeader"; 

SELECT "Class" .class_id, 
"ProgramLeader".first_name, "ProgramLeader".last_name
FROM "Class"
JOIN "ProgramLeader" ON "Class".leader_id = "ProgramLeader".leader_id;