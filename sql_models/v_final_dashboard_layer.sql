-- This view rebuilds the bridge between the raw statistical data and the summary metrics
CREATE OR REPLACE VIEW `driiiportfolio.skyfood_spti_raw.v_final_dashboard_layer` AS
SELECT
    r.sales_rep_group,
    r.product_model,
    r.q1_quota,
    r.mtd_sales,
    r.units_sold,
    r.unit_quota,
    r.active_leads, -- Restored field
    r.z_score,      -- Restored field from Python analysis
    (r.q1_quota - r.mtd_sales) AS revenue_gap,
    ROUND(r.attainment_pct, 2) AS attainment_pct,
    -- Mapping the Efficiency metric from the secondary table
    e.revenue_per_lead,
    CASE 
        WHEN r.attainment_pct < 60 AND r.active_leads < 15 THEN 'CRITICAL: Low Pipeline'
        WHEN r.attainment_pct < 60 AND r.active_leads >= 15 THEN 'ACTION: Low Conversion'
        WHEN r.attainment_pct >= 100 THEN 'TARGET ACHIEVED'
        ELSE 'ON TRACK'
    END AS strategic_status
FROM 
    `driiiportfolio.skyfood_spti_raw.raw_sales_data` r
LEFT JOIN 
    `driiiportfolio.skyfood_spti_raw.lead_efficiency` e
ON 
    r.sales_rep_group = e.sales_rep_group
