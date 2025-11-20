library(tidyverse)
library(lubridate)

# Load cleaned file
all_trips <- read_csv("data/processed/all_trips_cleaned.csv")

# Summary statistics
summary_stats <- all_trips %>% 
  summarise(
    total_rides = n(),
    avg_ride_length = mean(ride_length),
    median_ride_length = median(ride_length),
    max_ride_length = max(ride_length),
    min_ride_length = min(ride_length)
  )

View(summary_stats)

# Member vs Casual
member_summary <- all_trips %>%
  group_by(member_casual) %>% 
  summarise(
    number_of_rides = n(),
    average_duration = mean(ride_length),
    median_duration = median(ride_length)
  )

View(member_summary)

# Order weekdays
all_trips$day_of_week <- factor(
  all_trips$day_of_week,
  levels = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),
  ordered = TRUE
)

# Group by weekday
weekday_summary <- all_trips %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(
    number_of_rides = n(),
    average_duration = mean(ride_length)
  )

View(weekday_summary)

# Order months
all_trips$month <- factor(
  all_trips$month,
  levels = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"),
  ordered = TRUE
)

# Group by month
month_summary <- all_trips %>%
  group_by(member_casual, month) %>%
  summarise(
    number_of_rides = n(),
    avg_duration = mean(ride_length)
  )

View(month_summary)

# Bike type
bike_summary <- all_trips %>% 
  group_by(member_casual, rideable_type) %>% 
  summarise(
    number_of_rides = n(),
    avg_duration = mean(ride_length)
  )

View(bike_summary)

# Save tables
write_csv(member_summary, "data/processed/member_summary.csv")
write_csv(month_summary, "data/processed/month_summary.csv")
write_csv(summary_stats, "data/processed/summary_stats.csv")
write_csv(weekday_summary, "data/processed/weekday_summary.csv")
write_csv(bike_summary, "data/processed/bike_summary.csv")

# Sample file for GitHub / Tableau
sample_trips <- all_trips %>% sample_n(30000)
write_csv(sample_trips, "data/processed/sample_trips.csv")
