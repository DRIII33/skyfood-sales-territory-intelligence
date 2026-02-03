-- 1. Create the Unified Summary Table
CREATE OR REPLACE TABLE `driiiportfolio.skyfood_spti_raw.attainment_summary` AS
SELECT 
    sales_rep_group,
    product_model,
    q1_quota,
    mtd_sales,
    units_sold,  -- ADDED: Required for Velocity Analysis
    unit_quota,  -- ADDED: Required for Capacity Planning
    (q1_quota - mtd_sales) AS revenue_gap,
    ROUND(((mtd_sales / NULLIF(q1_quota, 0)) * 100), 2) as attainment_pct,
    -- Business Logic: Identifying 'At-Risk' Territories
    CASE 
        WHEN ((mtd_sales / NULLIF(q1_quota, 0)) * 100) < 60 THEN 'ACTION REQUIRED'
        WHEN ((mtd_sales / NULLIF(q1_quota, 0)) * 100) >= 100 THEN 'TARGET ACHIEVED'
        ELSE 'ON TRACK'
    END AS strategic_status
FROM 
    `driiiportfolio.skyfood_spti_raw.raw_sales_data`;

    -- 2. Create the Product Velocity View
CREATE OR REPLACE VIEW `driiiportfolio.skyfood_spti_raw.v_product_velocity` AS
SELECT 
    product_model,
    SUM(units_sold) as total_units_sold,
    SUM(unit_quota) as total_unit_quota,
    ROUND(AVG(attainment_pct), 2) as avg_model_attainment
FROM 
    `driiiportfolio.skyfood_spti_raw.attainment_summary`
GROUP BY 1;
