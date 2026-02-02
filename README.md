### **Part 1: Strategic Project Audit & Alignment**

#### **1. Business Scenario & Problem**

* **Context:** Skyfood Equipment LLC (Miami, FL) faces the "Middle-Man’s Dilemma"—managing high-value Brazilian imports (Skymsen) with a US-based independent rep network.
* **Problem:** Prior to this project, "Revenue Leakage" was invisible. Management could not distinguish if a territory was failing due to poor lead quality, rep underperformance, or inventory stock-outs.
* **Resolution:** The SPTI framework (Sales Performance & Territory Intelligence) provides a 3-tier diagnostic: Financial (BigQuery), Statistical (Python), and Visual (Looker Studio).

#### **2. Analysis & Insights Summary**

* **The Conversion Gap:** We proved that high lead volume does not equal high revenue. Rep groups like **Hybrid Marketing** are squandering leads, while **Diettrich Sales** is starving for them.
* **Statistical Significance:** By applying **Z-Scores**, we removed "noise" from the data. We identified that **Bill McCoy Associates** isn't just "behind"—they are a statistical outlier requiring immediate management intervention.
* **Inventory Velocity:** We identified that the **INT90S Tenderizer** is moving at 95% capacity, triggering an immediate logistics alert to the Brusque, Brazil factory.

#### **3. Conclusion & Recommendations**

* **Recommendation 1:** Reallocate the Q1 marketing budget from Hybrid Marketing to Diettrich Sales to balance lead efficiency.
* **Recommendation 2:** Launch a "Vacuum Packaging Masterclass" for Bill McCoy Associates to improve the 52% conversion rate on the SVP16 line.
* **Recommendation 3:** Increase the safety stock of INT90S Tenderizers in the Miami warehouse by 20% to prevent stock-outs.

---

### **Part 2: Deliverables & GitHub Checklist**

| Category | Deliverable Item | Status | GitHub Location |
| --- | --- | --- | --- |
| **Data Engine** | `skyfood_stat_analysis.csv` (Cleaned & Flagged) | ✅ | `/data/processed/` |
| **Python Logic** | `statistical_validation.ipynb` (Z-Scores/Correlations) | ✅ | `/notebooks/` |
| **SQL Layer** | `v_final_dashboard_layer.sql` (Master View) | ✅ | `/sql/views/` |
| **Visualization** | Looker Studio Executive Command Center (PDF/Link) | ✅ | `/reports/visuals/` |
| **Documentation** | Technical README.md & Management Brief | 🛠️ | Root Directory |

---

### **Part 3: Project Documentation (README.md)**

# Skyfood 2026: Sales Performance & Territory Intelligence (SPTI)

**"Transforming Raw Sales Data into Predictive Revenue Protection"**

## 📊 Executive Summary

This project provides **Skyfood Equipment LLC** with a sophisticated decision-support system to manage the North American sales of Brazilian-manufactured food processing equipment. By integrating **Python-based statistical modeling** with **BigQuery data warehousing**, this framework identifies a **$257.10K revenue gap** and provides a roadmap for recovery through territory-specific interventions.

## 🎯 The Case for an In-House Data Analyst

* **Decision Intelligence:** Unlike static reporting, this framework uses **Z-Scores** to identify "Statistically Critical" failures, preventing management from wasting time on average variances.
* **Operational Agility:** Real-time alignment between **Sales Velocity** and **Inventory Capacity** ensures the Miami warehouse never misses a sale due to Brazil-US lead times.
* **ROI:** Identified a single **$34,100 recovery opportunity** with one rep group (Bill McCoy Associates), justifying the analyst's overhead in a single quarter.

## Technical Architecture

1. **Data Ingestion:** Synthetic generation of 2026 sales data based on actual Skyfood product lines (SMM30, SVP16, etc.).
2. **Statistical Layer (Python):** * Outlier detection using **Standard Deviation (Z-Scores)**.
* Correlation analysis between **Lead Volume** and **Quota Attainment**.


3. **Data Warehouse (BigQuery):** * SQL views engineered for performance (`v_final_dashboard_layer`).
* Automated logic for `strategic_status` (Critical, Action, On Track).


4. **Visualization (Looker Studio):** * **Page 1:** Executive Revenue Health (Risk quadrants).
* **Page 2:** Product Velocity (Supply chain alignment).
* **Page 3:** Tactical Intervention (The "Action List").



## Key Insights

* **Conversion Crisis:** **Hybrid Marketing** and **Bill McCoy Associates** have high lead counts but sub-60% conversion rates, indicating a skill gap.
* **Inventory Alert:** The **INT90S Tenderizer** has reached **95% velocity**, requiring an immediate restocking order to prevent stock-outs.
* **Statistical Outlier:** Bill McCoy Associates represents the highest priority risk with a **Z-Score of -1.46**.

## Repository Structure

```text
├── data/
│   ├── raw/                # Original sales and lead data
│   └── processed/          # Data enriched with statistical flags
├── notebooks/
│   └── stat_modeling.ipynb # Python logic for Z-Scores & Correlations
├── sql/
│   └── views/              # BigQuery SQL View definitions
├── reports/
│   └── visuals/            # Looker Studio PDF exports & screenshots
└── README.md               # Project documentation

```

## Strategic Recommendations

1. **Rebalance Leads:** Shift 15% of lead allocation from Hybrid Marketing to Diettrich Sales.
2. **Targeted Training:** Deploy product specialists to Bill McCoy Associates for SVP16 Vacuum training.
3. **Logistics Sync:** Update the Brusque factory production schedule to match the INT90S high-velocity trend.

---

### **Final Management Note**

*This project serves as a proof-of-concept for how Skyfood Equipment LLC can leverage modern data stacks to maintain its 60-year legacy of engineering excellence in a data-driven 2026 marketplace.*
