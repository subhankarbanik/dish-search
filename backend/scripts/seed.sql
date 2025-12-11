INSERT INTO restaurants (name, city) VALUES
('Hyderabadi Spice House', 'Hyderabad'),
('Biryani Palace', 'Bangalore');

INSERT INTO menu_items (restaurant_id, dish_name, price) VALUES
(1, 'Chicken Biryani', 220),
(1, 'Veg Biryani', 180),
(2, 'Chicken Biryani', 250);

INSERT INTO orders (menu_item_id) VALUES
(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),
(2),(2),(2),
(3),(3),(3),(3),(3),(3),(3),(3),(3);
