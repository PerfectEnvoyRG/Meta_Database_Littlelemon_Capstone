-- create a procedure that displays the maximum ordered quantity in the Orders table. 
-- ----------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS GetMaxQuantity;

CREATE PROCEDURE GetMaxQuantity()
	SELECT MAX(quantity) AS MaxQuantityInOrder
	FROM orders;

CALL GetMaxQuantity();
