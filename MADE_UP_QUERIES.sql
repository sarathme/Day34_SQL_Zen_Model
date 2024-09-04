-- FIND NO OF STUDENTS IN BATCH itaque

SELECT batch_name, COUNT(*) AS students_count FROM batches
JOIN students ON batches.id = students.batch_id
WHERE batch_name = "itaque"
GROUP BY batch_name;


-- Find the batch with the most students enrolled:

    SELECT 
        batch_name, COUNT(*) AS students_count
    FROM
        batches
    JOIN students ON batches.id = students.batch_id
    GROUP BY batch_name
    ORDER BY students_count DESC
    LIMIT 1;
    
-- List all students along with their batch name, mentor name, and course name:


SELECT students.name AS student_name, batches.batch_name, mentors.name AS mentor_name, courses.course_name
FROM students
JOIN batches ON students.batch_id = batches.id
JOIN mentors ON batches.mentor_id = mentors.id
JOIN courses ON batches.course_id = courses.id;