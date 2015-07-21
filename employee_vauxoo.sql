-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);

CREATE TABLE employee_department (
	id INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(140)
);

CREATE TABLE employee_department_assignation (
	id_employee INTEGER PRIMARY KEY,
    id_department INTEGER NOT NULL,
    FOREIGN KEY (id_employee) REFERENCES employee ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_department) REFERENCES employee_department ON DELETE CASCADE ON UPDATE CASCADE
);


-- ...
