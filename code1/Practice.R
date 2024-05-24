install.packages('tidyverse')
install.packages("devtools")
devtools::install_github("r-lib/conflicted")
library(conflicted)
library(dplyr)
library(tidyverse)

conflicts_prefer(dplyr::filter())

interviews <- read.csv('JoeBidenTweets.csv')
view(interviews)
class(interviews)
#To select specific columns
select(interviews,timestamp:replies)
#To select specific rows use filter
filter(interviews, replies > 50 & retweets > 100)

filter(interviews, replies > 500 | retweets > 1000)
interviews %>%
  mutate(bmi = replies / ((retweets / 100) ^ 2))
names(interviews)
