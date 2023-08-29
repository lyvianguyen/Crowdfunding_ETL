CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_anme VARCHAR(50) NOT NULL,
	email VARCHAR(30) NOT NULL UNIQUE); 

SELECT * FROM contacts;


CREATE TABLE category(
	category_id VARCHAR(30) PRIMARY KEY,
	category VARCHAR(50) NOT NULL);
	
SELECT * FROM category;


CREATE TABLE subcategory(
	subcategory_id VARCHAR(30) PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL);

SELECT * FROM subcategory;


CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(50),
	goal REAL NOT NULL,
	pledged REAL NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL, 
	country VARCHAR(50) NOT NULL,
	currency VARCHAR(100) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR(30) NOT NULL REFERENCES subcategory(subcategory_id));

SELECT * FROM campaign;
