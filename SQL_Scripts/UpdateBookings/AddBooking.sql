DROP Procedure If Exists AddBooking;

DELIMITER //

Create Procedure AddBooking(IN BookingID INT, IN BookingDate DATE, IN TableNumber INT, IN CustomerID INT)
	BEGIN
		INSERT into bookings (booking_id, date, table_number, customer_id)
        Values (BookingID, BookingDate, TableNumber, CustomerID);
        
        Select "New Booking Has been Added !" As "Confirmation";
        
End //

DELIMITER ;

-- Call addbooking (10, "2023-03-22", 8, 7)