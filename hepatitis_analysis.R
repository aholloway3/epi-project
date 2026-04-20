# Load libraries
library(tidyverse)

# Load data. If not loaded, uncomment this line:
# hepatitis_data <- read_csv("/home/bran/projects/epi-project/NNDSS_-_Table_II._Hepatitis_(viral,_acute)_20260420.csv")

# Filter for Tennessee
tn_hepatitis <- hepatitis_data %>%
  filter(`Reporting Area` == "TENNESSEE")

# Create the plot
p <- tn_hepatitis %>%
  filter(`MMWR Year` == 2016) %>%
  select(`MMWR Week`, 
         `Hepatitis (viral, acute), type A, Current week`,
         `Hepatitis (viral, acute), type B, Current week`,
         `Hepatitis (viral, acute), type C, Current week`) %>%
  pivot_longer(cols = -`MMWR Week`, 
               names_to = "Type", 
               values_to = "Cases") %>%
  filter(!is.na(Cases)) %>%
  mutate(Type = case_when(
    grepl("type A", Type) ~ "Hepatitis A",
    grepl("type B", Type) ~ "Hepatitis B",
    grepl("type C", Type) ~ "Hepatitis C"
  )) %>%
  ggplot(aes(x = `MMWR Week`, y = Cases, color = Type)) +
  geom_line(size = 1) +
  labs(title = "Acute Hepatitis Cases in Tennessee, 2016",
       x = "MMWR Week", y = "Case Count") +
  theme_minimal()

# Display the plot (will appear in R's graphics window)
print(p)

# Save the plot
ggsave("/home/bran/projects/epi-project/hepatitis_cases_tn_2016.png", p, width = 8, height = 5)

# Confirm it saved
print("Plot saved to: /home/bran/projects/epi-project/hepatitis_cases_tn_2016.png")
 