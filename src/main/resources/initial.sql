DROP ALL OBJECTS DELETE FILES;

CREATE TABLE DEPARTMENT
(
  ID   INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  NAME VARCHAR(50)
);
CREATE UNIQUE INDEX ON DEPARTMENT (ID);

CREATE TABLE EMPLOYEE
(
  ID            INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  NAME          VARCHAR(50),
  DEPARTMENT_ID INTEGER,
  CONSTRAINT DEPARTMENT_ID FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT (ID)
);
CREATE UNIQUE INDEX ON EMPLOYEE (ID);
CREATE INDEX ON EMPLOYEE (DEPARTMENT_ID);

CREATE TABLE PROJECT
(
  ID   INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  NAME VARCHAR(50)
);
CREATE UNIQUE INDEX ON PROJECT (ID);

CREATE TABLE PROJECT_EMPLOYEE
(
  ID          INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  PROJECT_ID  INTEGER                            NOT NULL,
  EMPLOYEE_ID INTEGER                            NOT NULL,
  CONSTRAINT EMPLOYEE_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE (ID),
  CONSTRAINT PROJECT_FK FOREIGN KEY (PROJECT_ID) REFERENCES PROJECT (ID)
);
CREATE UNIQUE INDEX ON PROJECT_EMPLOYEE (ID);
CREATE INDEX ON PROJECT_EMPLOYEE (EMPLOYEE_ID);
CREATE INDEX ON PROJECT_EMPLOYEE (PROJECT_ID);

INSERT INTO department (name) VALUES ('IT department');
INSERT INTO department (name) VALUES ('Sales department');
INSERT INTO department (name) VALUES ('Financial department');
INSERT INTO department (name) VALUES ('Security department');
INSERT INTO department (name) VALUES ('HR department');

INSERT INTO employee (name, department_id) VALUES ('John', 1);
INSERT INTO employee (name, department_id) VALUES ('Greg', 1);
INSERT INTO employee (name, department_id) VALUES ('Jacob', 2);
INSERT INTO employee (name, department_id) VALUES ('Peter', 2);
INSERT INTO employee (name, department_id) VALUES ('Richard', 3);
INSERT INTO employee (name, department_id) VALUES ('Paul', 3);
INSERT INTO employee (name, department_id) VALUES ('Jared', 4);
INSERT INTO employee (name, department_id) VALUES ('Donald', 4);
INSERT INTO employee (name, department_id) VALUES ('Diana', 5);
INSERT INTO employee (name, department_id) VALUES ('Jennifer', 5);

insert into project(name) values('Project1');
insert into project(name) values('Project2');
insert into project(name) values('Project3');
insert into project(name) values('Project4');
insert into project(name) values('Project5');

insert into PROJECT_EMPLOYEE(PROJECT_ID, EMPLOYEE_ID) VALUES (1, 1);
insert into PROJECT_EMPLOYEE(PROJECT_ID, EMPLOYEE_ID) VALUES (1, 2);
insert into PROJECT_EMPLOYEE(PROJECT_ID, EMPLOYEE_ID) VALUES (1, 3);

insert into PROJECT_EMPLOYEE(PROJECT_ID, EMPLOYEE_ID) VALUES (2, 2);
insert into PROJECT_EMPLOYEE(PROJECT_ID, EMPLOYEE_ID) VALUES (3, 2);