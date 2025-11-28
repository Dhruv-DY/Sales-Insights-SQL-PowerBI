-- ================================
-- 01_cleaning.sql
-- Sales Insights Project
-- Data Cleaning Script
-- ================================

-- 1. Remove duplicates based on order_id + product_id
DELETE FROM train a
USING train b
WHERE a.ctid < b.ctid
  AND a.order_id = b.order_id
  AND a.product_id = b.product_id;

-- 2. Trim whitespaces from text columns
UPDATE train
SET 
    category      = TRIM(category),
    sub_category  = TRIM(sub_category),
    segment       = TRIM(segment),
    ship_mode     = TRIM(ship_mode),
    region        = TRIM(region),
    country       = TRIM(country),
    city          = TRIM(city),
    state         = TRIM(state),
    product_name  = TRIM(product_name);

-- 3. Standardize category formats
UPDATE train SET category = INITCAP(category);
UPDATE train SET sub_category = INITCAP(sub_category);
UPDATE train SET ship_mode = INITCAP(ship_mode);
UPDATE train SET segment = INITCAP(segment);
UPDATE train SET region = INITCAP(region);

-- 4. Remove rows where postal_code is NULL (11 rows)
DELETE FROM train
WHERE postal_code IS NULL;

-- 5. Fix postal_code datatype to integer
ALTER TABLE train
ALTER COLUMN postal_code TYPE INT USING postal_code::INT;

-- 6. Ensure correct DATE datatypes
ALTER TABLE train
ALTER COLUMN order_date TYPE DATE USING order_date::date;

ALTER TABLE train
ALTER COLUMN ship_date TYPE DATE USING ship_date::date;

-- 7. Drop rows where ship_date < order_date (invalid)
DELETE FROM train
WHERE ship_date < order_date;
