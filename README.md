# CBNA IDP Data Analysis – Stata Workflow

![Stata](https://img.shields.io/badge/language-Stata-blue?style=flat-square)  
![Data Analysis](https://img.shields.io/badge/type-data%20analysis-green?style=flat-square)  
![License](https://img.shields.io/badge/license-MIT-lightgrey?style=flat-square)  

---

## Project Overview

This project demonstrates a **complete Stata analysis workflow** for **Community-Based Needs Assessment (CBNA) data**, focusing on **IDP arrivals, humanitarian aid delivery, and community vulnerabilities**.

**Skills demonstrated:**  

- Panel data setup and fixed vs random effects  
- Summary statistics and t-tests  
- Regression analysis with fixed effects and clustered standard errors  
- Lagged and interaction term modeling  
- Exporting results for reporting  

> The dataset contains information on *IDP arrivals, aid distribution, local infrastructure, and social/ethnic indicators*.

---

## Data Source

Analysis uses CBNA data provided by the  
[International Organization for Migration (IOM)](https://www.iom.int/) via the [Displacement Tracking Matrix (DTM)](https://dtm.iom.int/).  

**Dataset Features:**  

- 6–7 rounds of data collection  
- Multi-dimensional indicators: **IDP arrivals, aid received, health & education facilities, ethnic composition**  
- Panel structure at the settlement level  

 [Access the CBNA Dataset](https://dtm.iom.int/data-product-series/community-based-needs-assessment-cbna)

---

## Data Cleaning & Preparation

Key preprocessing steps in Stata:

1. Import and merge multiple rounds  
2. Standardize variable names and formats  
3. Handle missing values  
4. Remove duplicates and anomalous entries  
5. Create **panel identifiers** (`SettlementID` + `Round`)  
6. Generate derived variables: `Change_ArrivalIDPs`, lagged variables, and interaction terms  

---
