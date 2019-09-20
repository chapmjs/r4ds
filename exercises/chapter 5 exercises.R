# Chapter 5 Exercises
#
library(nycflights13)
library(tidyverse)

# 1. all flights with an arrival delay of 120 or more
filter(flights, arr_delay >= 120)

# total = 10,200 flights (rows)

# 2. all flights that flew to Houston (IAH or HOU)
filter(flights, dest == "IAH" | dest == "HOU")
# total rows = 9,313

#3. all flights
