DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //
-- Change the delimiter to //

Create Procedure AddValidBooking(IN BookingDate DATE, IN TableNumber INT, IN CustomerID INT)

BEGIN
		
        Declare FoundBooking INT Default 0;
 -- Declare the variable that will be used for identifying the existing bookings.
		Start Transaction;
        Select Count(*) into FoundBooking
        From bookings
        Where date = BookingDate AND Table_Number = TableNumber;
        
        
        Insert into Bookings (date, table_number, customer_id)
        Values (BookingDate, TableNumber, CustomerID);
        
        If FoundBooking <> 0
        then Select CONCAT("Table ", TableNumber, " is already booked. The booking is cancelled") AS "Booking status";
        RollBack;
        Else
			Commit;
		End If;
-- If a booking with the same date and table number was found then rollup otherwise commit.
        END //
DELIMITER ;
        
