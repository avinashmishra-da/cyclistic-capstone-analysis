# Load packages
library(tidyverse)
library(lubridate)
library(janitor)

# Set path
path <- "C:/Data Analysis Projects/Google Analytics Capstone Project/Cyclistic/CSVs"

# Read all CSV files
files <- list.files(path = path, pattern = "*.CSV", full.names = TRUE)

all_trips <- files %>% 
  map_df(read_csv)

# Save combined file
write_csv(all_trips, "data/processed/all_trips_combined.csv")

# Create new columns
all_trips <- all_trips %>%
  mutate(
    ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")),
    day_of_week = wday(started_at, label = TRUE),
    month = format(started_at, "%b"),
    year = format(started_at, "%Y")
  )

# Remove wrong ride durations
all_trips <- all_trips %>%
  filter(ride_length > 1 & ride_length < 1440)

# Save cleaned data
write_csv(all_trips, "data/processed/all_trips_cleaned.csv")
