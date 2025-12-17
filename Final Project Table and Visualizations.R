library(dplyr)
library(ggplot2)
library(tidyverse)

# Read player rebounding data
reb_data <- read.csv("C:/Users/trock/Downloads/Stat184_Reb_Data.csv")

# Read all players height data
height_data <- read.csv("C:/Users/trock/Downloads/nba_heights.csv")

# Used to view how it read into R
# glimpse(reb_data)
# glimpse(height_data)

# Selected only the needed attributes
reb_data <- reb_data %>%
  select(Player, Pos, G, GS, ORB, DRB, TRB)


reb_pos_summary <- reb_data %>%
  group_by(Pos) %>%     # Group players into 5 positions: PG, SG, SF, PF, C
  summarise(
    # Averages of all statistics by position
    Avg_ORB = round(mean(ORB), 2),   
    Avg_DRB = round(mean(DRB), 2),
    Avg_TRB = round(mean(TRB), 2),
    Players = n()
  ) %>%
  arrange(desc(Avg_TRB))

view(reb_pos_summary)

# Reshaping data 
reb_long <- reb_pos_summary %>%
  select(Pos, Avg_ORB, Avg_DRB) %>%
  pivot_longer(
    cols = c(Avg_ORB, Avg_DRB),
    names_to = "Rebound_Type",
    values_to = "Average_Rebounds"
  )


# Create the visualization
ggplot(reb_long, aes(x = Pos, y = Average_Rebounds, fill = Rebound_Type)) +
  geom_col(position = "dodge") +
  labs(
    # Characteristics of the visualization
    title = "Average Offensive & Defensive Rebounds by Position",
    subtitle = "The two bars = avg rebounds on offense vs defense per game separated by position",
    x = "Position",
    y = "Average Rebounds per Game",
    # Key to identify what each bar represents
    fill = "Rebound Type"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )












