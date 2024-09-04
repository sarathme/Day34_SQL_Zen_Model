CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    batch_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(batch_id) REFERENCES batches(id)
);