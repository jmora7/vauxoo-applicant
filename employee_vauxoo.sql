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

INSERT INTO employee VALUES (1,'Jorge','Mora');
INSERT INTO employee VALUES (2,'Barbara','Lozada');
INSERT INTO employee VALUES (3,'Cesar','Manrique');
INSERT INTO employee VALUES (4,'Jose','Rodriguez');

INSERT INTO employee_department VALUES (1,'','');
INSERT INTO employee_department VALUES (2,'','');
INSERT INTO employee_department VALUES (3,'','');
INSERT INTO employee_department VALUES (4,'','');
INSERT INTO employee_department VALUES (5,'','');
INSERT INTO employee_department VALUES (6,'','');

INSERT INTO employee_department_assignation VALUES (1,1);
INSERT INTO employee_department_assignation VALUES (2,6);
INSERT INTO employee_department_assignation VALUES (3,1);
INSERT INTO employee_department_assignation VALUES (4,3);

-- ...


