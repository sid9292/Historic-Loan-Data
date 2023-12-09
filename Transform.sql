import pandas as pd

csv_file_path = 'C:/Users/s.larbicherif/Desktop/home_mortgage.csv'

columns_to_extract = [
    
    'loan_amount_000s',
    'applicant_income_000s',
    'population',
    'state_name',
    'minority_population',
    'applicant_race_name_1',
    'hud_median_family_income',
    'number_of_owner_occupied_units',
    'applicant_sex_name'
]

df = pd.read_csv(csv_file_path, nrows=1000)
    
if all(column in df.columns for column in columns_to_extract):
    # Extract the specified columns
    selected_columns = df[columns_to_extract]
    selected_columns.to_csv('extracted_data.csv', index=False)
    
CREATE TABLE AgencyDimension (
    agency_id INT PRIMARY KEY,
    agency_name VARCHAR(255),
    agency_abbr VARCHAR(10),
    agency_code INT
);

CREATE TABLE LoanTypeDimension (
    loan_type_id INT PRIMARY KEY,
    loan_type_name VARCHAR(255)
);


CREATE TABLE PropertyTypeDimension (
    property_type_id INT PRIMARY KEY,
    property_type_name VARCHAR(255)
);


CREATE TABLE LoanPurposeDimension (
    loan_purpose_id INT PRIMARY KEY,
    loan_purpose_name VARCHAR(255)
);


CREATE TABLE OwnerOccupancyDimension (
    owner_occupancy_id INT PRIMARY KEY,
    owner_occupancy_name VARCHAR(255)
);

CREATE TABLE PreapprovalDimension (
    preapproval_id INT PRIMARY KEY,
    preapproval_name VARCHAR(255)
);


CREATE TABLE ActionTakenDimension (
    action_taken_id INT PRIMARY KEY,
    action_taken_name VARCHAR(255)
