
drop database if exists Greenspace;
create database if not exists Greenspace;
use Greenspace;
CREATE TABLE services (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    description MEDIUMTEXT,
    cost DECIMAL(10,2)
);

CREATE TABLE history_types (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50)
);

CREATE TABLE countries (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE states_provinces (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

CREATE TABLE clients (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    country_id INT NOT NULL, 
     FOREIGN KEY (country_id) REFERENCES countries(id),
    state_province_id INT NOT NULL, 
     FOREIGN KEY (state_province_id) REFERENCES states_provinces(id),
    city VARCHAR(50),
    address VARCHAR(50),
    address2 VARCHAR(50),
    postal_code VARCHAR(12),
    phone_number VARCHAR(20),
    email VARCHAR(150)
);

CREATE TABLE sales_orders (
    id INT PRIMARY KEY auto_increment,
    client_id INT,
     FOREIGN KEY (client_id) REFERENCES clients(id),
    order_date DATETIME NOT NULL,
    invoice_date DATETIME,
    comments LONGTEXT
);

CREATE TABLE sales_order_services (
    id INT PRIMARY KEY auto_increment,
    sales_order_id INT NOT NULL,
     FOREIGN KEY (sales_order_id) REFERENCES sales_orders(id),
    service_id INT NOT NULL,
     FOREIGN KEY (service_id) REFERENCES services(id),
    client_id INT NOT NULL,
     FOREIGN KEY (client_id) REFERENCES clients(id),
    quantity DECIMAL(10,2),
    discount DECIMAL(10,2),
    service_schedule_date DATETIME,
    extra_information LONGTEXT
);

CREATE TABLE sales_order_service_history (
    id INT PRIMARY KEY auto_increment,
    sales_order_service_id INT NOT NULL,
     FOREIGN KEY (sales_order_service_id) REFERENCES sales_order_services(id),
    history_type_id INT NOT NULL,
     FOREIGN KEY (history_type_id) REFERENCES history_types(id),
    entry_date DATETIME,
    notes LONGTEXT
);



