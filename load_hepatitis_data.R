# Load required libraries
library(tidyverse)  # For data manipulation
library(lubridate)  # For dates

# Set your project path (adjust if needed)
project_path <- "/home/bran/projects/epi-project"

# Read the CSV file (replace with your actual filename)
# You can list files in the folder to see the exact name:
print(list.files(project_path, pattern = "NNDSS"))

hepatitis_data <- read_csv(file.path(project_path, "NNDSS_-_Table_II._Hepatitis_(viral,_acute)_20260420.csv"))

# Quick look at the data
glimpse(hepatitis_data)