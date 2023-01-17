library(tidyverse)
library(dplyr)
library(ggplot2)

data <- read.csv("./data/best_swimmers.csv",sep = ",")

mean_evolution_time <- function(data,category){
  mean_time_evol <- 0
  mean_growth <- data %>% 
    filter(Event.description == category) %>% 
    select(Swim.time) %>%
    unique()
  
  mean_growth <- as.vector(mean_growth)
  
  len <- length(mean_growth)
  len <- len-1
  
  for (i in 1:len) {
    print(mean_growth[i])
  }
    
}

mean_evolution_time(data,"Men 100 Freestyle LCM Male")
