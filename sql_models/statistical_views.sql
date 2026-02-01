-- Query 1: Percentile Ranking (Identifying the top 10% of performers)
CREATE OR REPLACE VIEW `driiiportfolio.skyfood_spti_raw.v_top_performers` AS
SELECT 
    sales_rep_group,
    product_model,
    attainment_pct,
    PERCENT_RANK() OVER (ORDER BY attainment_pct DESC) as percentile_rank
FROM `driiiportfolio.skyfood_spti_raw.attainment_summary`;

-- Query 2: Lead Conversion Efficiency (Statistically driven KPI)
-- This shows who is doing 'more with less'
CREATE OR REPLACE TABLE `driiiportfolio.skyfood_spti_raw.lead_efficiency` AS
SELECT 
    sales_rep_group,
    SUM(mtd_sales) as total_sales,
    SUM(active_leads) as total_leads,
    SAFE_DIVIDE(SUM(mtd_sales), SUM(active_leads)) as revenue_per_lead
FROM `driiiportfolio.skyfood_spti_raw.raw_sales_data`
GROUP BY 1;
