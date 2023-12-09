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
    selected_columns = df[columns_to_extract]
    selected_columns.to_csv('extracted_data.csv', index=False)
