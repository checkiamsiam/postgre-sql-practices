SELECT * from customers;


-- PROCEDURE not RETURNS anything
CREATE PROCEDURE age_update() 
LANGUAGE SQL
AS $$
UPDATE customers SET age = 30 WHERE age = 52
$$;

CALL age_update();


-- FUNCTION RETURNS something
CREATE FUNCTION get_customer_age()
RETURNS TABLE (username VARCHAR, age INT)
LANGUAGE SQL
AS $$
SELECT username, age FROM customers
$$;

SELECT  get_customer_age();
SELECT * FROM get_customer_age();




CREATE FUNCTION fact(n INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
BEGIN
  IF n = 0 THEN
    RETURN 1;
  ELSE
    RETURN n * fact(n - 1);
  END IF;
END
$$;


SELECT fact(5);


