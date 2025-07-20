# **CREATING TABLE OR DATABASE**
```sql
-- creating a database named startersql
CREATE DATABASE startersql;

-- tells the dbms that currently all query will run on this startersql database
USE startersql;


-- create table named users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    gender ENUM('male', 'female', 'other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- help to show to schema
-- * defines all attributes
SELECT * FROM users;

-- selecting only two attributes id and name from users table
SELECT id, name FROM users;

-- rename the users table to programmers
RENAME TABLE users TO programmers;

-- inserting a new column named is_active and set it's properties to the user table
ALTER TABLE users add column is_active boolean default true;

-- removing a column (is_active) from table users
ALTER TABLE users DROP COLUMN is_active;
```
