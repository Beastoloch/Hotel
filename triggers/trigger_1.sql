CREATE OR REPLACE TRIGGER Cancel_booking
 BEFORE DELETE
 ON Booking
 FOR EACH ROW
 WHEN ( OLD.Booking_start_date - SYSDATE < 7 )
DECLARE
 too_late_delete_booking EXCEPTION;
 PRAGMA exception_init ( too_late_delete_booking, -20001 );
BEGIN
 RAIS E too_late_delete_booking;
END;
