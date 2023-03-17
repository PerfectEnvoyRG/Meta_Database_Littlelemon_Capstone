Drop Procedure If Exists CancelBooking;

DELIMITER //

Create Procedure CancelBooking(IN BookingID INT)
	Begin
		delete from bookings
        where booking_id = BookingID;
        
	Select CONCAT("Booking ", BookingID, "  has been cancelled") As "Confirmation";
    
    END//
    
DELIMITER ;

-- Call Procedure CancelBooking(10);