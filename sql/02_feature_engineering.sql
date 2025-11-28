-- ================================
-- 02_feature_engineering.sql
-- Feature Engineering Script
-- ================================

-- 1. Add order year and month
ALTER TABLE train ADD COLUMN order_year INT;
ALTER TABLE train ADD COLUMN order_month INT;

UPDATE train
SET 
    order_year  = EXTRACT(YEAR  FROM order_date),
    order_month = EXTRACT(MONTH FROM order_date);

-- 2. Add ship_days (delivery time)
ALTER TABLE train ADD COLUMN ship_days INT;

UPDATE train
SET ship_days = ship_date - order_date;

-- 3. Verify columns created successfully
SELECT order_date, order_year, order_month, ship_days
FROM train
LIMIT 10;
