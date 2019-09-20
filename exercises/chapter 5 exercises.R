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

#3. all flights operated by United, American, or Delta
filter(flights, carrier %in% c("UA", "AA", "DL"))
# total rows = 139,504 (total is 336,776), so 139504/336776 = 41.42%

#4. all flights that departed in the summer (july, aug, sep)
filter(flights, month %in% c("7","8","9"))
# total rows = 86,326

#5. all flights that arrived more than two hours late, but didn't leave late
filter(flights, dep_delay < 0 & arr_delay > 120)
# total rows = 26
