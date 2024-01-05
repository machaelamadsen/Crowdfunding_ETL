--DROP TABLE Campaign;
--DROP TABLE Category;
--DROP TABLE Subcategory;
--DROP TABLE Contacts;


--create and define tables
CREATE TABLE Category (
    category_id VARCHAR(10) NOT NULL,
    category VARCHAR(45) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(45) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
    contact_id INTEGER NOT NULL,
	first_name VARCHAR(45),
	last_name VARCHAR(45),
	email VARCHAR(50),
	PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(45),
    description VARCHAR(100),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(30),
    backers_count INTEGER,
    country VARCHAR(45),
    currency VARCHAR(45),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    PRIMARY KEY(cf_id),
    FOREIGN KEY(contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY(category_id) REFERENCES Category (category_id),
    FOREIGN KEY(subcategory_id) REFERENCES Subcategory (subcategory_id)
);

--Check that tables were created and that csv files were imported

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Contacts;

SELECT * FROM Campaign;