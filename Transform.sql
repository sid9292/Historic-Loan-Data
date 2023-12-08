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

-- Create Owner Occupancy Dimension Table
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
