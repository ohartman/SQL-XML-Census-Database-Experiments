CREATE TABLE RECORD (
    Year_ INT NOT NULL,
    Record_number INT NOT NULL,
    IND1950 INT(3),
    Urban_Rural BOOLEAN,
    State_code INT(2),
    County_code INT(4),
    PRIMARY KEY(Record_number)
);

CREATE TABLE YEAR (
    Year_ INT NOT NULL,
    Key_ INT NOT NULL,
    PRIMARY KEY(Year_))
);

INSERT INTO RECORD VALUES(1900, 13, 999,TRUE, 01, 10);
INSERT INTO RECORD VALUES(1900, 134, 999,TRUE, 01, 10);
INSERT INTO RECORD VALUES(1910, 1031, 999,TRUE, 01, 20);
INSERT INTO RECORD VALUES(1920, 2913, 999,FALSE, 02, 550);
INSERT INTO RECORD VALUES(1930, 3013, 999,FALSE, 02, 550);
INSERT INTO RECORD VALUES(1930, 3030, 100,FALSE, 02, 500);

INSERT INTO YEAR_ VALUES(1900, 1);
INSERT INTO YEAR_ VALUES(1910, 1001);
INSERT INTO YEAR_ VALUES(1920, 2001);
INSERT INTO YEAR_ VALUES(1930, 3001);

Select * from Record order by year_ DESC;
Select * from Record where year_ = 1900;
Select * from Record where Urban_Rural = TRUE;
Select * from Record where State_code != 01;
Select * from Record where IND1950 != 999;

Select * from Census where Year_ != 1900;
Select * from Census where Key_ <= 1001;