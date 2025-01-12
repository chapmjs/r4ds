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
airlines
# DL - Delta, AA - American, UA - United
filter(flights, carrier %in% c("UA", "AA", "DL"))
# total rows = 139,504 (total is 336,776), so 139504/336776 = 41.42%

#4. all flights that departed in the summer (july, aug, sep)
filter(flights, month %in% c("7","8","9"))
# total rows = 86,326
# or
filter(flights, month >=7, month <=9)
# total rows = 86,326
# or
filter(flights, month %in% 7:9)
# total rows = 86,326
# or
# (less efficient, more code)
filter(flights, month == 7 | month == 8 | month == 9)
# total rows = 86,326

#5. all flights that arrived more than two hours late, but didn't leave late
filter(flights, dep_delay <= 0 & arr_delay > 120)
# total rows = 29
# or
filter(flights, arr_delay > 120, dep_delay <= 0)
# total rows = 29, or 29/336776 = .009% of flights


#6. all flights delayed by at least an hour, but made up over 30 minutes in flight
filter(flights, dep_delay >= 60 & dep_delay - arr_delay > 30)
# total rows = 1844

