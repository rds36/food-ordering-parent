CREATE SCHEMA user_service;
CREATE SCHEMA restaurant_service;
CREATE SCHEMA order_service;

CREATE USER user_service WITH PASSWORD 'password';
CREATE USER restaurant_service WITH PASSWORD 'password';
CREATE USER order_service WITH PASSWORD 'password';


-- privileges (user-service)
GRANT USAGE ON SCHEMA user_service TO user_service;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA user_service TO user_service;
ALTER DEFAULT PRIVILEGES IN SCHEMA user_service GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO user_service;
ALTER SCHEMA user_service OWNER TO user_service;

-- privileges (restaurant-service)
GRANT USAGE ON SCHEMA restaurant_service TO restaurant_service;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA restaurant_service TO restaurant_service;
ALTER DEFAULT PRIVILEGES IN SCHEMA restaurant_service GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO restaurant_service;
ALTER SCHEMA restaurant_service OWNER TO restaurant_service;

-- privileges (order-service)
GRANT USAGE ON SCHEMA order_service TO order_service;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA order_service TO order_service;
ALTER DEFAULT PRIVILEGES IN SCHEMA order_service GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO order_service;
ALTER SCHEMA order_service OWNER TO order_service;


