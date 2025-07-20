CREATE DATABASE startersql;
USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    gender ENUM('male', 'female', 'other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;


-- rename the users table to programmers
RENAME TABLE users TO programmers;

SELECT * FROM programmers;

-- rerenaming the the table programmers to users
RENAME TABLE programmers to users;

SELECT * FROM users;


-- inserting a new column to the user table
ALTER TABLE users add column is_active boolean default true;

-- delete a column from table
ALTER TABLE users DROP COLUMN is_active;

-- change the type of attribute
ALTER TABLE users MODIFY COLUMN gender ENUM('male', 'female', 'transgender', 'other');

-- change the position of column
alter table users MODIFY column date_of_birth DATE first;
alter table users modify column email VARCHAR(30) after id;
