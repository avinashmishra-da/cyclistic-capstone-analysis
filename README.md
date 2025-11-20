# 🚲 Cyclistic Bike-Share Analysis  
### Google Data Analytics Capstone Project  
**Author:** *Avinash Mishra*  
**Role:** Aspiring Data Analyst | M.A. Economics | Google Data Analytics Certified

---

## 📌 Project Overview
This project is part of the **Google Data Analytics Professional Certificate**.  
The goal is to analyze **12 months of Cyclistic bike-share data** to understand the usage patterns of:

- **Casual riders**  
- **Annual members**

The insights will help the company design strategies to convert more casual riders into annual members.

---

## 📂 Repository Structure

Cyclistic-Capstone/
│
├── scripts/
│ ├── 01_data_cleaning.R
│ ├── 02_analysis.R
│ └── 03_visualization.R
│
├── data/
│ ├── raw/ # Contains original downloaded CSVs (not uploaded)
│ └── processed/
│ ├── all_trips_cleaned.csv
│ ├── member_summary.csv
│ ├── month_summary.csv
│ ├── weekday_summary.csv
│ ├── bike_summary.csv
│ └── sample_trips.csv # Small sample for sharing
│
└── visualizations/
├── total_rides.png
├── avg_duration.png
├── weekday_rides.png
├── monthly_trend.png
└── bike_type_preference.png


> **Note:**  
> Full raw dataset is not uploaded due to GitHub size limits.  
> You can download the full data from:  
> https://divvy-tripdata.s3.amazonaws.com/index.html

---

## 🛠️ Tools & Packages Used
- **R Programming**
- tidyverse  
- lubridate  
- janitor  
- ggplot2  
- scales  

---

## 🧹 Step 1: Data Cleaning

Performed in: `01_data_cleaning.R`

Tasks:
- Imported **12 months** of CSV files
- Combined into a single dataframe  
- Converted date/time formats  
- Created:
  - `ride_length`
  - `day_of_week`
  - `month`
  - `year`
- Removed invalid rides
- Saved cleaned dataset  

---

## 📊 Step 2: Data Analysis

Performed in: `02_analysis.R`

Generated summaries:
- Total rides  
- Average / median ride length  
- Rides by *member vs casual*  
- Usage by:
  - Day of week  
  - Month  
  - Bike type  

Created CSV tables for further use or Tableau dashboard:
- `member_summary.csv`
- `weekday_summary.csv`
- `month_summary.csv`
- `bike_summary.csv`

Also created a **sample 30,000-row dataset** for sharing.

---

## 📈 Step 3: Data Visualization

Performed in: `03_visualization.R`

Created visual insights:
- 📌 Total rides: Members vs Casual  
- 📌 Average ride duration  
- 📌 Weekly ride pattern  
- 📌 Monthly trend  
- 📌 Bike type preference  

Saved all plots inside: `/visualizations/`

---

## 🧠 Key Insights (Summary)

✔ **Members ride more frequently than casual riders**  
✔ **Casual riders take longer rides on average**  
✔ **Weekends have more rides for casual riders**  
✔ **Summer months (Jun–Aug) show peak activity**  
✔ **Electric bikes are increasingly popular among casual riders**

---

## 🎯 Business Recommendations

1. **Weekend promotions** to convert casual riders  
2. **Offer long-ride benefits** since casuals take longer trips  
3. **Summer seasonal passes** targeted at tourists  
4. **Highlight membership savings** in mobile app  
5. **Electric-bike membership discounts**  

---

## ▶️ How to Run This Project

1. Download or clone the repository  
2. Put all original CSV files into:

data/raw/


3. Run the scripts in this order:

01_data_cleaning.R
02_analysis.R
03_visualization.R


4. View results in:

- `data/processed/`
- `visualizations/`

---

## 🙌 Acknowledgements
This project is based on the **Cyclistic Bike-Share** dataset as part of the **Google Data Analytics Professional Certificate**.

---

## 📬 Contact  
If you’d like to connect or collaborate:

**LinkedIn:** https://www.linkedin.com/in/avinashmishra-da/ 
