DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
	Select CASE
		WHEN date = BookingDate and Table_number = tableNumber
			THEN CONCAT("Table ", TableNumber, " is already booked")
            ELSE CONCAT("Table ", TableNumber, " is free")
				END AS BookingStatus
	From bookings
    where date = bookingdate OR table_number = Tablenumber
    Limit 1
    
    -- Call CheckBooking('date', TableNumber);
    
    