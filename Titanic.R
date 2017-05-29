# load titanic dataset

library(dplyr)
library(tidyr)
library(titanic)
library(ggplot)

# determine titanic structure

str(titanic)

# while looking at the sex distributions, map factor(Pclass) onto the x axis and factor(Sex) onto fill.Use geom_bar with position set to "dodge".

ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") 

# repeat the previous command by adding a facet_grid() layer: ". ~ Survived" .

ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") + facet_grid(". ~ Survived") 

# use the below given position jitter
posn.j <- position_jitter(0.5, 0) 

# repeat the previous ggplot command and include the variable Age onto the y axis. Replace geom_bar() with geom_jitter(), and set its attributes the following: size to 3, alpha to 0.5, and position to posn.j.Making sure to map factor(Sex) onto col instead of fill.

ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) 