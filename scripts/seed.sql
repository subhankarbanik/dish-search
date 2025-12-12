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
(1,'Chicken Biryani',220),(1,'Veg Biryani',180),(1,'Mutton Biryani',320),(1,'Paneer Biryani',210),
(2,'Chicken Biryani',250),(2,'Veg Biryani',190),(2,'Egg Biryani',150),
(3,'Chicken Biryani',230),(3,'Paneer Biryani',200),(3,'Mughlai Chicken',350),
(4,'Chicken Biryani',200),(4,'Mutton Biryani',310),(4,'Tandoori Chicken',300),
(5,'Chicken Biryani',270),(5,'Veg Biryani',160),(5,'Hyderabadi Chicken',260),
(6,'Hyderabadi Chicken Biryani',240),(6,'Egg Biryani',150),(6,'Mutton Biryani',330),
(7,'Chicken Biryani',260),(7,'Veg Biryani',170),(7,'Fish Biryani',300),
(8,'Chicken Biryani',210),(8,'Tandoori Chicken',290),
(9,'Chicken Biryani',240),(9,'Veg Biryani',180),
(10,'Chicken Biryani',270),(10,'Mutton Biryani',320),
(11,'Kolkata Chicken Biryani',240),(11,'Egg Biryani',150),
(12,'Lucknowi Chicken Biryani',260),(12,'Mutton Biryani',330),
(13,'Chicken Biryani',250),(13,'Veg Biryani',190),(13,'Special Chicken Biryani',280),
(14,'Thalappakatti Biryani',240),(14,'Chicken Biryani',220),
(15,'Chicken Biryani',230),(15,'Veg Biryani',170),
(16,'Chicken Biryani',260),(16,'Mutton Biryani',350),
(17,'Chicken Biryani',215),(17,'Veg Biryani',165),
(18,'Special Hyderabadi Biryani',270),(18,'Egg Biryani',150),
(19,'Chicken Biryani',255),(19,'Fish Biryani',310),
(20,'Chicken Biryani',220),(20,'Veg Biryani',180);

-- ORDERS INSERTED BY REPEATING VALUES
INSERT INTO orders (menu_item_id)
SELECT menu_item_id FROM (
  SELECT 12 AS menu_item_id FROM dual LIMIT 70
) AS t1
UNION ALL
SELECT menu_item_id FROM (
  SELECT 1 AS menu_item_id FROM dual LIMIT 60
) AS t2
UNION ALL
SELECT menu_item_id FROM (
  SELECT 8 AS menu_item_id FROM dual LIMIT 55
) AS t3
UNION ALL
SELECT menu_item_id FROM (
  SELECT 5 AS menu_item_id FROM dual LIMIT 45
) AS t4
UNION ALL
SELECT menu_item_id FROM (
  SELECT 34 AS menu_item_id FROM dual LIMIT 40
) AS t5
UNION ALL
SELECT menu_item_id FROM (
  SELECT 15 AS menu_item_id FROM dual LIMIT 35
) AS t6
UNION ALL
SELECT menu_item_id FROM (
  SELECT 18 AS menu_item_id FROM dual LIMIT 35
) AS t7
UNION ALL
SELECT menu_item_id FROM (
  SELECT 30 AS menu_item_id FROM dual LIMIT 30
) AS t8
UNION ALL
SELECT menu_item_id FROM (
  SELECT 27 AS menu_item_id FROM dual LIMIT 25
) AS t9
UNION ALL
SELECT menu_item_id FROM (
  SELECT 38 AS menu_item_id FROM dual LIMIT 25
) AS t10
UNION ALL
SELECT menu_item_id FROM (
  SELECT 21 AS menu_item_id FROM dual LIMIT 20
) AS t11
UNION ALL
SELECT menu_item_id FROM (
  SELECT 44 AS menu_item_id FROM dual LIMIT 20
) AS t12
UNION ALL
SELECT menu_item_id FROM (
  SELECT 23 AS menu_item_id FROM dual LIMIT 18
) AS t13
UNION ALL
SELECT menu_item_id FROM (
  SELECT 31 AS menu_item_id FROM dual LIMIT 15
) AS t14
UNION ALL
SELECT menu_item_id FROM (
  SELECT 33 AS menu_item_id FROM dual LIMIT 15
) AS t15
UNION ALL
SELECT menu_item_id FROM (
  SELECT 41 AS menu_item_id FROM dual LIMIT 12
) AS t16
UNION ALL
SELECT menu_item_id FROM (
  SELECT 40 AS menu_item_id FROM dual LIMIT 10
) AS t17
UNION ALL
SELECT menu_item_id FROM (
  SELECT 43 AS menu_item_id FROM dual LIMIT 10
) AS t18
UNION ALL
SELECT menu_item_id FROM (
  SELECT 36 AS menu_item_id FROM dual LIMIT 8
) AS t19
UNION ALL
SELECT menu_item_id FROM (
  SELECT 39 AS menu_item_id FROM dual LIMIT 8
) AS t20;
