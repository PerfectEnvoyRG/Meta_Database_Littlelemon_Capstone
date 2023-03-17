USE little_lemon_db;
DROP VIEW IF EXISTS MoreThan2Orders;
CREATE VIEW MoreThan2Orders as
SELECT name AS MenuName
FROM menus
WHERE menu_id = ANY
	(
    SELECT menu_id
    FROM orders
    WHERE quantity > 2
    )