library(tidyverse)
library(dplyr)
library(ggplot2)

data <- read.csv("./data/best_swimmers.csv",sep = ",")

glimpse(data)
view(data)
data <- data %>% 
  mutate(
    Swim.date = as.Date(Swim.date,format = "%m-%d-%y"),
    Athlete.birth.date = as.Date(Athlete.birth.date,format = "%m-%d-%y"),
    Team.Code = as.factor(Team.Code),
    Team.Name = as.factor(Team.Name),
    Age.to.swim = trunc(as.numeric((`Swim.date`- `Athlete.birth.date`)/365))
  )

glimpse(data)

view(data)