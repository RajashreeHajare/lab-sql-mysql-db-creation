CREATE TABLE users (
    id int(10) NOT NULL,
    name_ VARCHAR(20),
    email VARCHAR(40),
    PRIMARY KEY(id)
);

INSERT INTO users (id, name_, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');

-- Drop existing tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS users;

-- Create the cars table
CREATE TABLE cars (
    car_id VARCHAR(10) NOT NULL,
    veh_id_no VARCHAR(20),
    manufacturer_model VARCHAR(50),
    year_ INT(4),
    colour VARCHAR(10),
    PRIMARY KEY(car_id)
);

-- Create the customers table
CREATE TABLE customers (
    customer_id VARCHAR(10) NOT NULL,
    customer_name VARCHAR(40),
    phone_num VARCHAR(25),
    email VARCHAR(40),
    address VARCHAR(100),
    city VARCHAR(50),
    state CHAR(20),
    country CHAR(30),
    postal_code VARCHAR(10),
    PRIMARY KEY(customer_id)
);

-- Create the salesperson table
CREATE TABLE salesperson (
    sales_person_id VARCHAR(20) NOT NULL,
    sales_person_name VARCHAR(40),
    company_store VARCHAR(40),
    PRIMARY KEY(sales_person_id)
);

-- Create the invoices table
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

-- Inserting data into cars table
INSERT INTO cars (car_id, veh_id_no, manufacturer_model, year_, colour) VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo V60 Cross Country', 2019, 'Gray');

-- Inserting data into customers table
INSERT INTO customers (customer_id, customer_name, phone_num, email, address, city, state, country, postal_code) VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Inserting data into salesperson table
INSERT INTO salesperson (sales_person_id, sales_person_name, company_store) VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Miami'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- Inserting data into invoices table
INSERT INTO invoices (invoice_id, invoice_no, car_id, customer_id, date_, salesperson_id) VALUES
(1, 852399038, 1, '20001', '2018-08-22', '00003'),
(2, 731166526, 3, '30001', '2018-12-31', '00005'),
(3, 271135104, 2, '10001', '2019-01-22', '00007');