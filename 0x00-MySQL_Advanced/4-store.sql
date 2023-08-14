-- Write a SQL script that creates  
-- a trigger that decreases the quantity 
-- of an item after adding a new order. 
-- data is in a good shape, let MySQL do it for you!

CREATE TRIGGER decrease_items_quantity AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;