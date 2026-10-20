# 🌍 European Geopolitics & OSINT Threat Monitor

## 📌 Project Overview
As an OSINT & Geopolitics researcher, I built a relational database using **PostgreSQL** to track, analyze, and monitor geopolitical events, cyber threats, and economic impacts across Europe. 

This project demonstrates my ability to structure intelligence data and write advanced SQL queries to extract actionable insights from large datasets.

## 🛠️ Tools Used
- **PostgreSQL** (Database creation and data generation)
- **pgAdmin 4** (Query execution)
- **SQL** (Data manipulation and analysis)

## 🗄️ Database Structure
The database (`europe_geopolitics`) consists of three main tables:
1. **`countries`**: Tracks nation-state GDP and Stability Index.
2. **`osint_sources`**: Tracks intelligence sources and their reliability scores.
3. **`conflict_events`**: Tracks events (Cyberattacks, Border Skirmishes, Military Exercises), severity levels, and economic damage.

*(A script was written to generate 500+ realistic data points to simulate a live intelligence feed).*

## 📊 Key Insights & Queries
In the `analysis_queries.sql` file, I have written SQL queries to answer critical intelligence questions:

- **Threat Intensity:** Identifying the top 5 high-risk countries based on event frequency and severity scores.
- **Cyber Warfare Trends:** Tracking the month-over-month financial impact of cyberattacks.
- **Source Reliability:** Analyzing which OSINT sources report the most events and cross-referencing their reliability scores.

## 🚀 How to Run This Project
1. Install PostgreSQL.
2. Run the schema creation scripts.
3. Run the data generation script.
4. Open `analysis_queries.sql` and execute the queries to view the intelligence reports.
