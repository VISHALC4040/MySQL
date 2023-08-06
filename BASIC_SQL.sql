-- CREATE A TEST DATABASE
CREATE DATABASE TEST;

USE TEST;

CREATE TABLE TBL_ORDER (
REF_NO CHAR(14) NOT NULL,
ORD_DTE DATE NOT NULL, 
CUST_NAME VARCHAR(50) NOT NULL,
CATEGORY VARCHAR(20) NOT NULL,
PRODUCT VARCHAR(20) NOT NULL,
SALES NUMERIC(18, 5),
PROFIT FLOAT
)

SELECT * FROM TBL_ORDER;

INSERT INTO TBL_ORDER VALUES
('CA-2012-124891', '2012-7-31', 'Rick Hansen', 'Technology', 'Accessories', 2309.65, 762.1845),
('CA-2014-135909', '2014-10-14', 'Jane Waco', 'Office Supplies', 'Binders', 5083.96, 1906.485), 
('CA-2012-116638', '2012-1-28', 'Joseph Holt', 'Furniture', 'Tables', 4297.644, -1862.3124), 
('CA-2014-143567', '2014-3-11', 'Thomas Boland', 'Technology', 'Accessories', 2249.91, 517.4793), 
('CA-2011-154627', '2011-10-29', 'Sue Ann Reed', 'Technology', 'Phones', 2735.952, 341.994), 
('CA-2013-159016', '2013-11-3', 'Karen Ferguson', 'Technology', 'Phones', 4158.912, 363.9048), 
('CA-2012-139731', '2012-10-15', 'Joel Eaton', 'Furniture', 'Chairs', 2453.43, -350.49), 
('CA-2011-168494', '2011-12-12', 'Nora Preis', 'Furniture', 'Tables', 3610.848, 135.4068), 
('CA-2011-160766', '2011-9-14', 'Darrin Martin', 'Technology', 'Machines', 2799.96, 1371.9804), 
('US-2014-168116', '2014-11-5', 'Grant Thornton', 'Technology', 'Machines', 7999.98, -3839.9904), 
('CA-2011-116904', '2011-9-23', 'Sanjit Chand', 'Office Supplies', 'Binders', 9449.95, 4630.4755), 
('US-2012-163825', '2012-6-16', 'Lena Creighton', 'Office Supplies', 'Binders', 3050.376, 1143.891), 
('US-2014-135013', '2014-7-25', 'Harold Ryan', 'Technology', 'Copiers', 2399.96, 839.986), 
('CA-2012-111829', '2012-3-19', 'Fred Hopkins', 'Technology', 'Copiers', 3149.93, 1480.4671), 
('CA-2014-129021', '2014-8-24', 'Patrick Brill', 'Technology', 'Phones', 4367.896, 327.5922), 
('CA-2012-114811', '2012-8-11', 'Keith Dawkins', 'Technology', 'Machines', 4643.8, 2229.024), 
('CA-2013-143805', '2013-12-2', 'Jonathan Doherty', 'Office Supplies', 'Appliances', 2104.55, 694.5015), 
('CA-2012-145352', '2012-3-16', 'Christopher Martinez', 'Office Supplies', 'Binders', 6354.95, 3177.475), 
('CA-2014-138289', '2014-1-17', 'Andy Reiter', 'Office Supplies', 'Binders', 5443.96, 2504.2216), 
('CA-2014-118892', '2014-8-18', 'Tom Prescott', 'Furniture', 'Chairs', 4416.174, -630.882), 
('US-2012-163825', '2012-6-16', 'Lena Creighton', 'Office Supplies', 'Binders', 3050.376, 1143.891), 
('CA-2012-114811', '2012-8-11', 'Keith Dawkins', 'Technology', 'Machines', 4643.8, 2229.024);

SELECT * FROM TBL_ORDER;
-- 1. LIST ALL ORDERS IN ASCENDING OR DESCENDING ORDER OF SALES

SELECT * FROM TBL_ORDER ORDER BY SALES DESC;

-- 2. LIST ALL THE CUSTOMERS IN ASCENDING ORDER OF CATEGORY AND DESCENDING ORDER BY SALES

SELECT CUST_NAME,CATEGORY,SALES  FROM TBL_ORDER ORDER BY CATEGORY,SALES DESC;

-- 3. 3 DISPLAY ONLY UNIQUE RECORDS FROM THE ORDERS TABLE

SELECT distinct * FROM TBL_ORDER; 

-- 4.DISPLAY UNIQUE COMBINATIONS OF CATEGORY AND PRODUCT ARRANGED IN A PROPER ORDER

SELECT distinct CATEGORY, PRODUCT FROM TBL_ORDER ORDER BY CATEGORY,PRODUCT;

-- 5. WHICH ORDERS ARE GIVING LOSS TO THE COMPANY?
DESCRIBE TBL_ORDER;

SELECT * FROM TBL_ORDER WHERE PROFIT <0;

-- 6. WHICH ARE THE ORDERS THAT BELONG TO TECHNOLOGY CATEGORY

SELECT * FROM TBL_ORDER WHERE CATEGORY= 'Technology';

-- 7. are there any orders from technology category where products are sold at loss

SELECT * FROM TBL_ORDER WHERE PROFIT<0 AND CATEGORY='Technology';

-- 8. WHICH ARE THE ORDERS WHERE TABLES, PHONE AND APPLIANCES ARE SOLD

SELECT * FROM TBL_ORDER WHERE PRODUCT IN('Tables','Phones','Appliances');


