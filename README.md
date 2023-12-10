# Home-Mortgage-data Project
Objective: get useful insights from Home Mortgage Disclosure Act Historic data

Tools used:
Could Storage and Data Warehouse: Azure (Data Store, Data Lake, Synapse Analytics)
ETL Implementation: Python scripts
Dimensional Modeling: DbSchema
Serving Data: Power BI

Data Source:
Consumer Financial Protection Bureau
https://www.consumerfinance.gov/data-research/hmda/historic-data/?geo=nationwide&records=all-records&field_descriptions=labels

ETL:
1.Extract Data:
-Download CSV file from Consumer Financial Protection Bureau website
-Open Azure account and create a connection to load the csv file to AzureBlob

2.Transform Data:
-First step in the transformation phase is to create a Dimensional Modeling, using tools like DB Schema
-use transfrom.py to create csv files based on the Dimensional Modeling

3.Load:
-Upload clean csv files to Azure Data Lake Storage

Serving:
using PowerBI
Connect to Azure Synapse Analytics
Load clean tables
Create visualizations
