/*!!!! WELCOME TO ADDRESS BOOK SERVICE !!!! */

   CREATE DATABASE  address_book_service

   USE  address_book_service


    CREATE TABLE address_book (
  id INT PRIMARY KEY IDENTITY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NOT NULL,
  zip VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(100) NOT NULL
)

SELECT * FROM address_book

INSERT INTO address_book VALUES('Aakanksha','Pandey','Sector-7','Bhilai','CG','490006','908765323','aakan@gmail.com'),
								('Divya','Mishra','Block2','Lucknow','UP','490566','90845723','divya@gmail.com'),
								('Shivam','Tripathi','Area -8/11','Bhopal','MP','370006','903456323','shivam@gmail.com')



UPDATE address_book SET address = '456 New Lucknow', zip = '67890', 
phone_number = '5555678', email = 'divya612@gmail.com'
WHERE first_name = 'Divya' AND last_name = 'Mishra'

UPDATE address_book SET address = '456 New Bihar', zip = '78990', 
phone_number = '987537', email = 'aakansha12@gmail.com'
WHERE first_name = 'Aakanksha' AND last_name = 'Pandey';

DELETE FROM address_book WHERE first_name = 'Shivam'

INSERT INTO address_book VALUES('Ritu','Pandey','Sector-2','Bhilai','CG','456786','90456723','ritu@gmail.com'),
                               ('Shivay','Sharma','Sector-c','Bhilai','CG','456445','984839433','shivay@.com')


SELECT * FROM address_book WHERE city = 'Bhilai'      /* search by city */
SELECT * FROM address_book WHERE state = 'MP'        /* search by state */
SELECT DISTINCT city FROM address_book              /* distinct values */
SELECT DISTINCT state FROM address_book


SELECT * FROM address_book

SELECT city, COUNT(*) FROM address_book GROUP BY city /* by group by count city */ 
SELECT state, COUNT(*) as count FROM address_book GROUP BY state /* by group by count state or by as we give name to column */ 

SELECT * FROM address_book WHERE city = 'Bhilai' ORDER BY first_name ASC /* with order by sort person name for given city */