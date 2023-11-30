--First task

DELIMITER //

CREATE FUNCTION times(seconds INT) RETURNS VARCHAR(100)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE result VARCHAR(100);

    SET days = seconds DIV (24 * 3600);
    SET seconds = seconds % (24 * 3600);
    SET hours = seconds DIV 3600;
    SET seconds = seconds % 3600;
    SET minutes = seconds DIV 60;
    SET seconds = seconds % 60;

    
    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    

    RETURN result;
END //

DELIMITER ;
SELECT times(123456) AS result;

--Second task
