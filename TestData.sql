
use Greenspace;

INSERT INTO countries ( name) VALUES 
('Canada'), 
('USA');

INSERT INTO states_provinces (name, country_id) VALUES 
('Ontario', 1), 
('Quebec', 1), 
('British Columbia', 1),
('California', 2), 
('New York', 2), 
('Florida', 2),
('Alberta',1),
('Manitoba',1),
('Nova Scotia',1),
('Nunavut',1),
('New Brunswick',1),
('Yukon',1),
('Texas',2),
('Ohio',2),
('Alaska',2),
('Hawaii',2),
('Alabama',2),
('Utah',2);

INSERT INTO clients ( name, country_id, state_province_id, city, address, postal_code, phone_number, email) VALUES 
('Chris Joseph', 1, 1, 'Toronto', '123 Main St.', 'M1M 1M1', ' (416) 555-1234', 'chrisjose@outlook.com'),
('Bob singleton', 2, 4, 'Los Angeles', '456 Elm St.', '90001', ' (310) 555-5678', 'sigton@gmaill.com'),
('Tamara Jarvis', 2, 6, 'Miami', '605 Sed st', 'V56 9GM', '(732) 364-0289', 'ut.sem.nulla@aol.couk'),
('Deanna Beer', 2, 17, 'Montgomery', '2077 Frosty Lane', '36103', '(334) 201-3763', 'deanna_beer@hotmail.com'),
('Rolando Howe', 1, 2, 'Montreal', '2047 Aspen Court', 'H1A 1K5', '(514) 417-2559', 'rolando_howe73@hotmail.com'),
('Joaquin Walker', 1, 9, 'Halifax', '112 White Oak Drive', 'B0E 0A9', '(782) 412-3440', 'joaquin.walker@yahoo.com'),
('Wilfrid Hills', 1, 7, 'Calgary', '940 Cimmaron Road', 'T1Y 1C2', '(403) 302-5239', 'wilfrid.hills5@gmail.com'),
('Theron Romaguera', 2, 13, 'Houston', '1949 Williams Mine Road', '77001', '(281) 642-9904', 'theron.romaguera@gmail.com'),
('Celestino Padberg', 2, 18, 'Salt Lake City', '3597 Davisson Street', '84043', '(385) 905-8171', 'celestino_padberg@gmail.com'),
('Lavonne Schneider', 1, 10, 'Iqaluit', '378 Lost Creek Road', 'X0C 0E0', '(867) 737-2315', 'lavonne.schneider@gmail.com'),
('Samantha Park', 1, 5, 'Vancouver', '789 Oak St.', 'V6B 2A5', '(604) 555-7890', 'sam.park@gmail.com'),
('Thomas Gray', 2, 12, 'Dallas', '3456 Magnolia Ave', '75201', '(469) 555-1234', 'tgray@yahoo.com'),
('Melissa Williams', 2, 14, 'Phoenix', '9876 Pine St', '85001', '(602) 555-6789', 'm.williams@hotmail.com'),
('Juan Ramirez', 2, 8, 'Orlando', '4567 Orange Ave', '32801', '(407) 555-9012', 'juan.ramirez@gmail.com'),
('Avery Johnson', 2, 4, 'Los Angeles', '1234 Sunset Blvd', '90001', '(323) 555-5678', 'avery.johnson@yahoo.com'),
('Hannah Lee', 1, 3, 'Ottawa', '5678 Maple Dr', 'K1A 0B1', '(613) 555-4321', 'hannah.lee@gmail.com'),
('Jackie Chen', 1, 1, 'Toronto', '910 Yonge St', 'M5B 2H1', '(416) 555-2468', 'jchen@hotmail.com'),
('Nina Patel', 2, 11, 'Atlanta', '2468 Peachtree St', '30301', '(404) 555-1357', 'nina.patel@gmail.com'),
('Ricardo Ortiz', 2, 16, 'San Francisco', '369 Lombard St', '94133', '(415) 555-8642', 'ricardo.ortiz@yahoo.com'),
('Zachary Nguyen', 2, 15, 'Seattle', '1010 Pike St', '98101', '(206) 555-7890', 'zach.nguyen@gmail.com');

INSERT INTO services (name, description, cost) VALUES 
('Oil Change', 'Replace engine oil and oil filter', 49.99),
('Tire Rotation', 'Rotate tires and check tire pressure', 29.99),
('Brake Service', 'Replace brake pads and inspect brake system', 199.99),
('Engine Tune-Up', 'Replace spark plugs and perform diagnostic tests', 149.99),
('Wiper Blades Replacement', 'Replace wiper blades with new ones', 37.99),
('Battery Replacement', 'Detach old battery, install the new battery', 249.99),
('Air Filter Replacement', 'Replace air filter and check air intake', 39.99),
('Coolant Flush', 'Drain old coolant, flush system, refill with new coolant', 129.99),
('Transmission Service', 'Drain old fluid, replace filter, refill with new fluid', 179.99),
('Fuel System Cleaning', 'Clean fuel injectors and throttle body', 99.99),
('Power Steering Service', 'Drain old fluid, refill with new fluid and inspect system', 89.99),
('Radiator Repair', 'Inspect and repair leaks, flush and refill with new coolant', 299.99),
('Alignment Service', 'Check wheel alignment and adjust as needed', 69.99),
('Timing Belt Replacement', 'Replace timing belt and inspect related components', 349.99),
('Ignition System Service', 'Replace ignition components and perform diagnostic tests', 199.99),
('Suspension System Service', 'Inspect and replace worn suspension components', 299.99);

INSERT INTO sales_orders (client_id, order_date, invoice_date, comments) VALUES
(1, '2022-03-15 10:30:00', '2022-03-18 15:30:00', 'Regular maintenance'),
(2, '2022-03-20 12:11:17', '2022-03-22 10:00:00', 'Emergency repair'),
(3, '2023-02-04 03:17:40', '2023-03-01 03:45:00', 'Oil Change'),
(4, '2023-04-11 05:30:18', '2023-04-15 09:44:00', 'Battery Replacement'),
(5, '2023-05-14 07:22:12', '2023-05-18 11:52:00', 'Wiper Blades Replacement'),
(6, '2023-05-20 04:12:30', '2023-05-28 12:13:00', 'Tire Rotation'),
(7, '2023-06-01 09:30:00', '2023-06-03 16:30:00', 'Brake Service'),
(8, '2023-06-05 13:45:17', '2023-06-07 09:00:00', 'Engine Tune-Up'),
(9, '2023-06-10 15:17:40', '2023-06-15 03:45:00', 'Air Filter Replacement'),
(10, '2023-07-02 08:30:18', '2023-07-05 11:44:00', 'Coolant Flush'),
(11, '2023-07-14 12:22:12', '2023-07-18 15:52:00', 'Transmission Service'),
(12, '2023-07-20 11:12:30', '2023-07-28 14:13:00', 'Power Steering Service'),
(13, '2023-08-01 14:30:00', '2023-08-03 17:30:00', 'Radiator Repair'),
(14, '2023-08-05 10:45:17', '2023-08-07 11:00:00', 'Alignment Service'),
(15, '2023-08-10 16:17:40', '2023-08-15 12:45:00', 'Timing Belt Replacement'),
(16, '2023-09-02 05:30:18', '2023-09-05 08:44:00', 'Ignition System Service');

INSERT INTO sales_order_services (sales_order_id, service_id, client_id, quantity, discount, service_schedule_date, extra_information) VALUES 
( 1, 1, 1, 1, 0, '2022-03-18 15:30:00', 'Synthetic oil'),
( 1, 2, 1, 1, 0, '2022-03-18 16:01:00', 'change tires'),
( 2, 3, 2, 1, 0, '2022-03-22 10:00:00', 'Replace front brakes'),
( 2, 4, 2, 1, 0, '2022-03-22 10:25:00', 'Engine misfire'),
( 3, 1, 3, 1, 0, '2023-03-01 03:45:00', 'Change oil'),
(4, 6, 4, 1, 0, '2023-04-14 10:00:00', 'Install new battery'),
(4, 3, 4, 1, 0, '2023-04-14 11:30:00', 'Check brake pads'),
(5, 5, 5, 1, 0, '2023-05-18 11:52:00', 'Replace wiper blades'),
(5, 2, 5, 1, 0, '2023-05-18 12:15:00', 'Rotate tires'),
(6, 2, 6, 1, 0, '2023-05-28 12:13:00', 'Rotate tires'),
(6, 1, 6, 1, 0, '2023-05-28 12:45:00', 'Change oil'),
(7, 4, 7, 1, 0, '2023-06-10 09:00:00', 'Check engine'),
(7, 6, 7, 1, 0, '2023-06-10 10:00:00', 'Install new battery'),
(8, 1, 8, 1, 0, '2023-07-01 11:00:00', 'Change oil'),
(8, 3, 8, 1, 0, '2023-07-01 12:00:00', 'Replace brake pads');

INSERT INTO history_types ( name) VALUES 
('Completed'), 
('Cancelled'), 
('Rescheduled');

INSERT INTO sales_order_service_history (sales_order_service_id, history_type_id, entry_date, notes) VALUES 
(1, 1, '2023-02-01 10:00:00', 'Service completed on time'),
(2, 3, '2022-04-01 10:00:00', 'Service rescheduled to April 15th'),
(4, 2, '2022-03-22 15:00:00', 'Customer cancelled engine tune-up'),
(3, 1, '2023-03-01 04:30:00', 'Oil change completed'),
(5, 2, '2022-05-18 14:20:00', 'Customer cancelled tire rotation'),
(6, 3, '2022-03-19 09:45:00', 'Rescheduled for next week due to parts delay'),
(7, 1, '2022-04-02 11:10:00', 'Engine tune-up completed'),
(8, 1, '2022-03-24 13:45:00', 'Brake replacement completed')

