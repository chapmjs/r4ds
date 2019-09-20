# Chapter 3 reading exercises


library(nycflights13)
library(tidyverse)
avg_delay <- summarize(flights, delay = mean(dep_delay, na.rm = TRUE))


by_day <- group_by(flights, year, month, day)

by_day_sum <- summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

ggplot(by_day_sum) +
  geom_line(mapping = aes(x = day, y = delay))


year_day <- c(1:365)

by_day_sum <- by_day_sum %>%
  ungroup() %>%
  mutate(year_day = c(1:365))

# by_day_sum <- mutate(by_day_sum, year_day = c(1:365))

ggplot(by_day_sum) +
  geom_line(mapping = aes(x = year_day, y = delay))


by_airport <- flights %>%
  group_by(origin) %>%
  summarize (n = n())



