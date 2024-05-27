CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS cars;

-- Create the tables in the correct order
CREATE TABLE cars (
    car_id VARCHAR(20) NOT NULL,
    veh_id_no VARCHAR(20),
    manufacturer_model VARCHAR(50),
    year_ INT(4),
    colour VARCHAR(10),
    PRIMARY KEY(car_id)
);

CREATE TABLE customers (
    customer_id VARCHAR(10) NOT NULL,
    customer_name VARCHAR(40),
    phone_num VARCHAR(15),
    email VARCHAR(40),
    address VARCHAR(100),
    city VARCHAR(50),
    state CHAR(2),
    country CHAR(3),
    postal_code VARCHAR(10),
    PRIMARY KEY(customer_id)
);

CREATE TABLE salesperson (
    sales_person_id VARCHAR(20) NOT NULL,
    sales_person_name VARCHAR(40),
    company_store VARCHAR(40),
    PRIMARY KEY(sales_person_id)
);

CREATE TABLE invoices (
    invoice_id VARCHAR(15) NOT NULL,
    invoice_no INT,
    car_id VARCHAR(10),
    customer_id VARCHAR(10),
    date_ DATE,
    salesperson_id VARCHAR(20),
    PRIMARY KEY(invoice_id),
    FOREIGN KEY(car_id) REFERENCES cars(car_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(sales_person_id)
);


CREATE DATABASE lab_mysql;

-- Create the tables in the correct order
CREATE TABLE cars (
    car_id VARCHAR(20) NOT NULL,
    veh_id_no CHAR(20),
    manufacturer_model VARCHAR(50),
    year_ INT(4),
    colour CHAR(10),
    PRIMARY KEY(car_id)
);

CREATE TABLE customers (
    customer_id VARCHAR(10) NOT NULL,
    customer_name VARCHAR(40),
    phone_num VARCHAR(15),
    email VARCHAR(40),
    address VARCHAR(100),
    city VARCHAR(50),
    state CHAR(2),
    country CHAR(3),
    postal_code VARCHAR(10),
    PRIMARY KEY(customer_id)
);

CREATE TABLE salesperson (
    sales_person_id VARCHAR(20) NOT NULL,
    sales_person_name VARCHAR(40),
    company_store VARCHAR(40),
    PRIMARY KEY(sales_person_id)
);

CREATE TABLE invoices (
    invoice_id VARCHAR(15) NOT NULL,
    invoice_no INT,
    car_id VARCHAR(10),
    customer_id VARCHAR(10),
    date_ DATE,
    salesperson_id VARCHAR(20),
    PRIMARY KEY(invoice_id),
    FOREIGN KEY(car_id) REFERENCES cars(car_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(sales_person_id)
);


