# 2024-08-22
# EDS 221 Day 8 Interactive Session 

# {reprex}, tables, and a ggtheme package


library(reprex)
library(palmerpenguins)
library(tidyverse)


# creating a plot that produces an error 
# %>% instead of a + 

ggplot(data = penguins, aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()

# See vignette("reprex-dos-and-donts") for some rule for using {reprex}

# 1. Use the smallest, simplest, most built-in data possible

head(penguins, 5)[,c("bill_length_mm", "flipper_length_mm")]
# give you the first 5 rows of selected columns 

# what if you dont want to have to download palmerpenguins to view data? 

# create a mini df: can just paste in what you want 
datapasta::df_paste(head(penguins, 5)[,c("bill_length_mm", "flipper_length_mm")])

my_data <- data.frame( # the above line creates this df for you 
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L))

# update broken code with mini dataset
ggplot(data = my_data, 
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()

# to create reprex, highlight my_data and ggplot, add to clipboard by copying,
# then in consule type reprex() and it will creates so code you can send to people 
# its already added to your clipboard 

#Run reprex() to create markdown-formatted (e.g. for GitHub issues) or reprex(venue = "slack") if posting to Slack (click “Add formatting” or Cmd-Shift-F for formatting)




