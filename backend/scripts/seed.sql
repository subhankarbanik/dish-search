
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE orders;
TRUNCATE TABLE menu_items;
TRUNCATE TABLE restaurants;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO restaurants (name, city) VALUES
('Hyderabadi Spice House', 'Hyderabad'),
('Biryani Palace', 'Bangalore'),
('Paradise Biryani', 'Hyderabad'),
('Mehfil Restaurant', 'Hyderabad'),
('Behrouz Biryani', 'Delhi'),
('Royal Biryani House', 'Pune'),
('Spice Garden', 'Chennai'),
('Zaitoon', 'Chennai'),
('Bawarchi', 'Hyderabad'),
('Imperial Kitchen', 'Mumbai'),
('Aroma Restaurant', 'Kolkata'),
('Nawab’s Kitchen', 'Lucknow'),
('Biryani Blues', 'Delhi'),
('Taste of India', 'Chennai'),
('Southern Masala', 'Bangalore'),
('Northern Dawat', 'Delhi'),
('Food Fiesta', 'Hyderabad'),
('Curry House', 'Pune'),
('Zaika Street', 'Mumbai'),
('Bite & Spice', 'Kolkata');

INSERT INTO menu_items (restaurant_id, dish_name, price) VALUES

(1, 'Chicken Biryani', 220), (1, 'Veg Biryani', 180), (1, 'Mutton Biryani', 320), (1, 'Paneer Biryani', 210),

(2, 'Chicken Biryani', 250), (2, 'Veg Biryani', 190), (2, 'Egg Biryani', 150),

(3, 'Chicken Biryani', 230), (3, 'Paneer Biryani', 200), (3, 'Mughlai Chicken', 350),

(4, 'Chicken Biryani', 200), (4, 'Mutton Biryani', 310), (4, 'Tandoori Chicken', 300),
(5, 'Chicken Biryani', 270), (5, 'Veg Biryani', 160), (5, 'Hyderabadi Chicken', 260),

(6, 'Hyderabadi Chicken Biryani', 240), (6, 'Egg Biryani', 150), (6, 'Mutton Biryani', 330),
(7, 'Chicken Biryani', 260), (7, 'Veg Biryani', 170), (7, 'Fish Biryani', 300),

(8, 'Chicken Biryani', 210), (8, 'Tandoori Chicken', 290),
(9, 'Chicken Biryani', 240), (9, 'Veg Biryani', 180),
(10, 'Chicken Biryani', 270), (10, 'Mutton Biryani', 320),
(11, 'Kolkata Chicken Biryani', 240), (11, 'Egg Biryani', 150),
(12, 'Lucknowi Chicken Biryani', 260), (12, 'Mutton Biryani', 330),

(13, 'Chicken Biryani', 250), (13, 'Veg Biryani', 190), (13, 'Special Chicken Biryani', 280),
(14, 'Thalappakatti Biryani', 240), (14, 'Chicken Biryani', 220),

(15, 'Chicken Biryani', 230), (15, 'Veg Biryani', 170),

(16, 'Chicken Biryani', 260), (16, 'Mutton Biryani', 350),
(17, 'Chicken Biryani', 215), (17, 'Veg Biryani', 165),
(18, 'Special Hyderabadi Biryani', 270), (18, 'Egg Biryani', 150),
(19, 'Chicken Biryani', 255), (19, 'Fish Biryani', 310),
(20, 'Chicken Biryani', 220), (20, 'Veg Biryani', 180);


INSERT INTO orders (menu_item_id)
SELECT 12 FROM dual CONNECT BY LEVEL <= 70;
INSERT INTO orders (menu_item_id)
SELECT 1 FROM dual CONNECT BY LEVEL <= 60;
INSERT INTO orders (menu_item_id)
SELECT 8 FROM dual CONNECT BY LEVEL <= 55;
INSERT INTO orders (menu_item_id)
SELECT 5 FROM dual CONNECT BY LEVEL <= 45;
INSERT INTO orders (menu_item_id)
SELECT 34 FROM dual CONNECT BY LEVEL <= 40;
INSERT INTO orders (menu_item_id)
SELECT 15 FROM dual CONNECT BY LEVEL <= 35;
INSERT INTO orders (menu_item_id)
SELECT 18 FROM dual CONNECT BY LEVEL <= 35;
INSERT INTO orders (menu_item_id)
SELECT 30 FROM dual CONNECT BY LEVEL <= 30;
INSERT INTO orders (menu_item_id)
SELECT 27 FROM dual CONNECT BY LEVEL <= 25;
INSERT INTO orders (menu_item_id)
SELECT 38 FROM dual CONNECT BY LEVEL <= 25;
INSERT INTO orders (menu_item_id)
SELECT 21 FROM dual CONNECT BY LEVEL <= 20;
INSERT INTO orders (menu_item_id)
SELECT 44 FROM dual CONNECT BY LEVEL <= 20;
INSERT INTO orders (menu_item_id)
SELECT 23 FROM dual CONNECT BY LEVEL <= 18;
INSERT INTO orders (menu_item_id)
SELECT 31 FROM dual CONNECT BY LEVEL <= 15;
INSERT INTO orders (menu_item_id)
SELECT 33 FROM dual CONNECT BY LEVEL <= 15;
INSERT INTO orders (menu_item_id)
SELECT 41 FROM dual CONNECT BY LEVEL <= 12;
INSERT INTO orders (menu_item_id)
SELECT 40 FROM dual CONNECT BY LEVEL <= 10;
INSERT INTO orders (menu_item_id)
SELECT 43 FROM dual CONNECT BY LEVEL <= 10;
INSERT INTO orders (menu_item_id)
SELECT 36 FROM dual CONNECT BY LEVEL <= 8;
INSERT INTO orders (menu_item_id)
SELECT 39 FROM dual CONNECT BY LEVEL <= 8;
