# GUVI ZEN DATABASE MODEL TASK

[Relationship Between Tables](#relationship-between-tables)

## Create and Populate all tables

1. Run a local instance of SQL server.

2. To create and populate all tables there is a file called
   **RUN_THIS_CODE.sql** where it contains SQL code to create and populate all
   tables with dummy data.

## List of Tables

1. [Courses Table](#courses-table)
2. [Mentors Table](#mentors-table)
3. [Batches Table](#batches-table)
4. [Students Table](#students-table)

### Courses Table

1. This table is a stand alone table which has no references to other tables. It
   contains an unique id and name of a course.

```sql
CREATE TABLE courses (
    id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);
```

### Mentors Table

1. This is also a stand alone table which donot contain any references of other
   tables.

2. It contains id, name, email and password as columns.

```sql
CREATE TABLE mentors (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(60) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);
```

### Batches Table

1. This table has references of courses and mentors as a column named course_id
   and mentor_id.

2. Other than that it has batch_name, id and batch_duration columns

```sql
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
```

### Students Table

1. This table has references of batches as a column named batch_id.
2. Other than that it has id, name, email and password columns.

```sql
CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    batch_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(batch_id) REFERENCES batches(id)
);
```

## Relationship between tables

### One to Many Relationship

1. Batches and courses has one to many relation where each batch can have one
   course and each course can have many batches

2. Batches and mentors has one to many relation where each batch can have one
   mentor and each mentor can able to handle many batches.

3. Batches and students also have a one to many relationship where each student
   can be in one batch and each batch can have many students.
