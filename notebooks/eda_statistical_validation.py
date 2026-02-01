#INSTALL PACKAGES
!pip install pandas numpy scipy statsmodels

import pandas as pd
import numpy as np
import scipy.stats as stats

# Load the data generated in Phase 2
df = pd.read_csv('skyfood_spti_master_data.csv')

def perform_statistical_analysis(df):
    print("--- Exploratory Data Analysis Summary ---")
    # 1. Distribution of Attainment (Statistical Spread)
    attainment_mean = df['attainment_pct'].mean()
    attainment_std = df['attainment_pct'].std()
    
    # 2. Correlation Analysis (Leads vs Sales)
    # Testing the hypothesis: Do more leads guarantee higher quota attainment?
    correlation, p_value = stats.pearsonr(df['active_leads'], df['attainment_pct'])
    
    # 3. Identifying Outliers (Z-Score method)
    # Reps +/- 2 Standard Deviations from the mean
    df['z_score'] = stats.zscore(df['attainment_pct'])
    outliers = df[df['z_score'].abs() > 2]
    
    print(f"Mean Attainment: {attainment_mean:.2f}%")
    print(f"Correlation (Leads vs. Attainment): {correlation:.4f}")
    print(f"Statistically Significant Outliers: {len(outliers)}")
    
    # Save for BigQuery to visualize statistical flags
    df.to_csv('skyfood_stat_analysis.csv', index=False)
    return df

# Execute Analysis
df_analyzed = perform_statistical_analysis(df)
