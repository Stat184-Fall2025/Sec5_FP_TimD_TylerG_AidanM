# How Does Height Affect Rebounds per Game in the NBA?

We are analyzing the correlation between players' heights and rebounds per game of NBA players from the 2008-2009 NBA season. We are only including players that average at least 1 rebound per game and played at least 65 games, which provides us a population of 178 players.

## Overview

Expand on those introductory sentences with a brief but informative description of your project's purpose and goals. This section should help visitors decide whether they should dig deeper into your repo/project.

While brainstorming we were thinking of questions in sports related to statistics, and we came up with the purpose for our project to explore the relationship between the heights of players and how many rebounds they average per game. The reason for the aforementioned constraints are that we want to only include players who have played a minimum of 65 games as the NBA has recently established this as the minimum number of games a player can play in to be considered for end of the year awards. Our other constraint is they must average a minimum of 1 rebound per game we want to have a sufficient sample size while excluding players who don't play enough to record any statistics. 

Our goals for this project include:
- Finding correlations in the heights of players and the total rebounds per game in NBA basketball.
- Working on tidying data, as we will get the data from online databases.
- Showing strong proficiency in web/data scraping.
- Easy to read visualizations.

### Interesting Insight (Optional)

This is optional but highly recommended. You'll include one interesting insight from your project as part of the README. This insight is most effective when you include a visual. Keep in mind that this visual must be included as an image file (e.g., JPG, PNG, etc.). You can export plots created with `{ggplot2}` by using the function `ggsave`.

## Data Sources and Acknowledgements
We acknowledge the following sources for the data collected.
https://www.basketball-reference.com/leagues/NBA_2009_per_game.html#per_game_stats::trb_per_g
https://www.openintro.org/data/index.php?data=nba_heights

## Current Plan
Collecting data (Team working together)
- We will pull the 2008–2009 NBA per-game dataset from Basketball Reference
- One team member will download the full per-game stats table into a CSV or scrape it into R using read_html
- We will then manually add player heights and positions into the dataset

Cleaning and Preparing the Dataset (Likely one member with collaboration from team)
- Convert heights from feet/inches into a single numeric measurement
- Confirm all players in the stats dataset match the height list to avoid missing values
- Store the cleaned dataset in a shared folder in the repo so the entire team can access it

Data Visualization(One member)
- Use tidyverse packages like dplyr and ggplot2 to summarize the data.
- Create initial plots such as scatterplots of height vs rebounds per game

Statistical Analysis(One member)
-Compute correlation between player height and total rebounds per game
-Might look at offensive vs defensive rebounds separately

Create Final Visuals + Write up (All members)
- Produce production quality plots using ggplot2
- Summarize findings in clear and understandable language
- Make sure all code is reproducible and stored in a shared R script in the repo


## Repo Structure

Use this section to explain the structure of your repo. This should help visitors quickly figure out where they should look to find certain elements. Further, you can use this space to highlight and briefly explain important/key files in the repo.


## Authors
Aidan Murphy:                                                                                                                                        
    Class of                                                        
Tim Damasco:                                                                                                                                         
    Class of                                                                                                                                  
Tyler Gilbert:                                                                                                                                       
    Class of 2027                                                                                                                                    
    Email: gilberttyler131@gmail.com
