DROP DATABASE IF EXISTS burgers_db;

CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers(
    id INT NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR(30) NULL,
    devoured BOOLEAN, 
    PRIMARY KEY (id)
);

CREATE TABLE rol(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NULL,
    salary DECIMAL(5, 2),
    department_id INT REFERENCES deparment (id),
    PRIMARY KEY (id)
);

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NULL,
    role_id INT REFERENCES rol (id),
    manager_id INT REFERENCES employee (id),
    PRIMARY KEY (id)
);