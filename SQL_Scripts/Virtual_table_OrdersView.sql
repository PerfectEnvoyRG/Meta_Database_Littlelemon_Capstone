USE little_lemon_db;
DROP VIEW IF EXISTS OrdersView;orderviewquantity
CREATE VIEW OrderView AS
		SELECT order_id, quantity, total_cost
        FROM orders
        WHERE quantity > 2;