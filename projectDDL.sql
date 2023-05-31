
DROP TABLE NEED;
DROP TABLE WATER;
DROP TABLE PROTEIN;
DROP TABLE VITAMIN;
DROP TABLE GLUCOSE;
DROP TABLE USERS;

CREATE TABLE USERS (
    name VARCHAR(10),
    id INTEGER NOT NULL,
    age NUMBER(2,1),
    height FLOAT,
    weight INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE GLUCOSE (
    id INTEGER,
    G_take NUMBER(4,1),
    G_upper NUMBER(4,1),
    FOREIGN KEY (id) REFERENCES USERS(id) ON DELETE CASCADE
);

CREATE TABLE VITAMIN (
    id INTEGER,
    vit_A NUMBER(4,1),
    vit_C NUMBER(4,1),
    vit_B NUMBER(4,1),
    FOREIGN KEY (id) REFERENCES USERS(id) ON DELETE CASCADE
);

CREATE TABLE PROTEIN (
    id INTEGER,
    P_take NUMBER(4,1),
    P_upper NUMBER(4,1),
    FOREIGN KEY (id) REFERENCES USERS(id) ON DELETE CASCADE
);

CREATE TABLE WATER (
    id INTEGER NOT NULL,
    W_take NUMBER(2,1),
    W_upper NUMBER(2,1),
    FOREIGN KEY (id) REFERENCES USERS(id) ON DELETE CASCADE
);

CREATE TABLE NEED (
    age INTEGER NOT NULL,
    G_need NUMBER(4,1),
    P_need NUMBER(4,1),
    W_need NUMBER(2,1)
);

describe USERS;
describe GLOCUSE;
describe VITAMIN;
describe PROTEIN;
describe WATER;
describe NEED;

-- Inserting into USERS table
INSERT INTO USERS VALUES ('John', 205, 30, 6.0, 90);
INSERT INTO USERS VALUES ('Sarah', 206, 25, 5.5, 70);
INSERT INTO USERS VALUES ('Michael', 207, 40, 6.2, 85);
INSERT INTO USERS VALUES ('Emily', 208, 28, 5.6, 68);
INSERT INTO USERS VALUES ('David', 209, 35, 5.9, 78);
INSERT INTO USERS VALUES ('Emma', 210, 32, 5.7, 72);
INSERT INTO USERS VALUES ('Daniel', 211, 27, 5.8, 75);
INSERT INTO USERS VALUES ('Olivia', 212, 29, 5.4, 67);
INSERT INTO USERS VALUES ('James', 213, 33, 6.1, 80);
INSERT INTO USERS VALUES ('Sophia', 214, 31, 5.3, 65);

-- Inserting into GLUCOSE table
INSERT INTO GLUCOSE VALUES (205, 220.5, 245.8);
INSERT INTO GLUCOSE VALUES (206, 230.2, 255.1);
INSERT INTO GLUCOSE VALUES (207, 215.3, 240.6);
INSERT INTO GLUCOSE VALUES (208, 225.7, 250.4);
INSERT INTO GLUCOSE VALUES (209, 212.9, 237.5);
INSERT INTO GLUCOSE VALUES (210, 218.6, 242.3);
INSERT INTO GLUCOSE VALUES (211, 209.8, 234.1);
INSERT INTO GLUCOSE VALUES (212, 222.4, 247.3);
INSERT INTO GLUCOSE VALUES (213, 213.5, 238.6);
INSERT INTO GLUCOSE VALUES (214, 227.1, 253.7);

-- Inserting into VITAMIN table
INSERT INTO VITAMIN VALUES (205, 200, 100, 500.2);
INSERT INTO VITAMIN VALUES (206, 205, 95, 520.8);
INSERT INTO VITAMIN VALUES (207, 198, 103, 490.5);
INSERT INTO VITAMIN VALUES (208, 203, 98, 510.1);
INSERT INTO VITAMIN VALUES (209, 195, 106, 480.3);
INSERT INTO VITAMIN VALUES (210, 201, 102, 495.7);
INSERT INTO VITAMIN VALUES (211, 193, 110, 470.6);
INSERT INTO VITAMIN VALUES (212, 207, 94, 525.3);
INSERT INTO VITAMIN VALUES (213, 196, 105, 485.9);
INSERT INTO VITAMIN VALUES (214, 209, 92, 530.6);

-- Inserting into PROTEIN table
INSERT INTO PROTEIN VALUES (205, 100.1, 140.0);
INSERT INTO PROTEIN VALUES (206, 95.8, 135.2);
INSERT INTO PROTEIN VALUES (207, 103.2, 144.7);
INSERT INTO PROTEIN VALUES (208, 98.6, 138.5);
INSERT INTO PROTEIN VALUES (209, 106.5, 149.0);
INSERT INTO PROTEIN VALUES (210, 102.3, 143.2);
INSERT INTO PROTEIN VALUES (211, 110.7, 155.3);
INSERT INTO PROTEIN VALUES (212, 94.9, 133.5);
INSERT INTO PROTEIN VALUES (213, 105.4, 147.7);
INSERT INTO PROTEIN VALUES (214, 92.7, 130.1);

-- Inserting into WATER table
INSERT INTO WATER VALUES (205, 1.7, 2.5);
INSERT INTO WATER VALUES (206, 1.8, 2.6);
INSERT INTO WATER VALUES (207, 1.6, 2.4);
INSERT INTO WATER VALUES (208, 1.9, 2.7);
INSERT INTO WATER VALUES (209, 1.5, 2.3);
INSERT INTO WATER VALUES (210, 1.7, 2.5);
INSERT INTO WATER VALUES (211, 1.4, 2.2);
INSERT INTO WATER VALUES (212, 1.8, 2.6);
INSERT INTO WATER VALUES (213, 1.6, 2.4);
INSERT INTO WATER VALUES (214, 1.9, 2.7);

-- Inserting into NEED table
INSERT INTO NEED VALUES (24, 320.9, 300.8, 2.8);
INSERT INTO NEED VALUES (25, 305.7, 280.2, 2.5);
INSERT INTO NEED VALUES (26, 335.2, 310.5, 2.9);
INSERT INTO NEED VALUES (27, 312.6, 290.1, 2.6);
INSERT INTO NEED VALUES (28, 327.4, 320.3, 2.7);
INSERT INTO NEED VALUES (29, 299.8, 280.7, 2.4);
INSERT INTO NEED VALUES (30, 345.6, 200.9, 3.0);
INSERT INTO NEED VALUES (31, 318.1, 295.4, 2.8);
INSERT INTO NEED VALUES (32, 332.7, 305.2, 2.9);
INSERT INTO NEED VALUES (33, 295.3, 275.6, 2.3);



