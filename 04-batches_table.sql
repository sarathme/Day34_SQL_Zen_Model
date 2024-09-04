CREATE TABLE batches (
    batch_name VARCHAR(20) NOT NULL,
    batch_duration INT NOT NULL,
    id INT NOT NULL AUTO_INCREMENT,
    mentor_id INT,
    course_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (mentor_id) REFERENCES mentors(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);