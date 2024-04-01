.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) AS average_price FROM products
  GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) AS lowest_price FROM inventory
  GROUP BY item;


CREATE TABLE shopping_list_helper AS
  SELECT name, min(MSRP/rating) as deal FROM products
  GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT name, store FROM shopping_list_helper, lowest_prices
  WHERE name = item;


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) FROM shopping_list, stores
  WHERE shopping_list.store = stores.store;

