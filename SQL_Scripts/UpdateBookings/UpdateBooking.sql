Drop Procedure If Exists UpdateBooking;

DELIMITER //

Create Procedure UpdateBooking(IN BookingID INT, IN BookingDate Date)
Begin
	Update bookings
    Set date = BookingDate
    where Booking_id = BookingID;
    
    Select CONCAT("Booking Number", BookingID, " has been updated") As "Confirmation";
END//

DELIMITER ;


-- Call Procedure UpdateBooking(10, "2023-03-12");
