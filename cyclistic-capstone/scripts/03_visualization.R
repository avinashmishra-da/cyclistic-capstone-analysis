library(tidyverse)
library(ggplot2)
library(scales)

# Load tables
member_summary <- read_csv("data/processed/member_summary.csv")
weekday_summary <- read_csv("data/processed/weekday_summary.csv")
month_summary <- read_csv("data/processed/month_summary.csv")
bike_summary <- read_csv("data/processed/bike_summary.csv")

# 1. Total rides
ggplot(member_summary, aes(x = member_casual, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge") +
  scale_y_continuous(labels = comma) +
  labs(title="Total Number of Rides: Members VS Casual Users",
       x="Rider Type", y="Total Rides") +
  theme_minimal()

# 2. Avg ride duration
ggplot(member_summary, aes(x = member_casual, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge") +
  labs(title="Average Ride Duration: Members vs Casual",
       x="Rider Type", y="Ride Duration") +
  theme_minimal()

# 3. Weekday ride pattern
ggplot(weekday_summary, aes(x=day_of_week, y=number_of_rides, fill=member_casual)) +
  geom_col(position = "dodge")+
  scale_y_continuous(labels = comma)+
  labs(title="Ride Frequency by Day of Week",
       x="Day", y="Number of Rides") +
  theme_minimal()

# 4. Monthly trend
ggplot(month_summary, aes(x=month, y=number_of_rides, colour=member_casual, group=member_casual)) +
  geom_line(size=1.2) +
  geom_point() +
  scale_y_continuous(labels = comma) +
  labs(title="Monthly Ride Trend",
       x="Month", y="Number Of Rides") +
  theme_minimal()

# 5. Bike preference
ggplot(bike_summary, aes(x=rideable_type, y=number_of_rides, fill=member_casual)) +
  geom_col(position="dodge") +
  labs(title="Bike Type Preference by Rider Type",
       x="Bike Type", y="Total Rides") +
  theme_minimal()
