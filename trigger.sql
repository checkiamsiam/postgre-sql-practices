SELECT * from products;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    base_price INTEGER NOT NULL,
    final_price INTEGER
);

INSERT INTO products (name, base_price) VALUES ('Apple', 100);


CREATE OR REPLACE TRIGGER set_final_price
BEFORE
INSERT ON products
FOR EACH ROW
EXECUTE FUNCTION set_final_price();


CREATE OR REPLACE FUNCTION set_final_price()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
-- NEW is a special variable that represents the new row being inserted
-- OLD is a special variable that represents the old row that was given to insert
    NEW.final_price = NEW.base_price * 1.2;
    RETURN NEW;
END
$$;




