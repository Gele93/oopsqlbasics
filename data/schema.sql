DROP TABLE IF EXISTS CAR;
DROP TABLE IF EXISTS OWNER;

CREATE TABLE OWNER (ID INT NOT NULL,
NAME CHAR(30) NOT NULL,
CITY CHAR(30),
BALANCE INT,
PRIMARY KEY(ID));

CREATE TABLE CAR (ID INT NOT NULL,
PLATE CHAR(7) NOT NULL UNIQUE,
MODEL CHAR(10),
COLOR CHAR(10),
MADE_YEAR INT,
PRICE INT,
OWNER_ID INT,
PRIMARY KEY(ID),
FOREIGN KEY(OWNER_ID)
REFERENCES OWNER(ID));

INSERT INTO OWNER VALUES(1, 'John Doo','Miskolc', 0);
INSERT INTO OWNER VALUES(2, 'Kovacs Janos' ,'Eger', 0);
INSERT INTO OWNER VALUES(3, 'Kozak Imre', 'Baja', 0);
INSERT INTO OWNER VALUES(4, 'Dobo Kata' , 'Kecskemét', 0);

INSERT INTO CAR VALUES (1,'bhk546','Fiat','blue',1989, 100000,1);
INSERT INTO CAR VALUES (2,'jdv742','Ford','white',2004, 900000,1);
INSERT INTO CAR VALUES (3,'lst495','Ford','yellow',2010, 2000000,2);
INSERT INTO CAR VALUES (4,'dfg332','Opel','red',1992, 1500000,NULL);
INSERT INTO CAR VALUES (5,'ccv352','Skoda','green',2010, 456789,3);
INSERT INTO CAR VALUES (6,'lgt555','BMW','grey',2023, 15000000.2);
INSERT INTO CAR VALUES (7,'cia987','Seat','red',2002, 2700000);
INSERT INTO CAR VALUES (8,'kgb387','Ferrari','red',2012, 45000000.3);
INSERT INTO CAR VALUES (9,'erf987','Zastava','red-blue', 1975, NULL,4);
INSERT INTO CAR VALUES (10,'wtc987','Mercedes','white',2022, 21000000,4);