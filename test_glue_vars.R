library(tidyverse)
library(glue)

data <- tibble(
  size = c(8, .8, 5),
  fruit = c("apple", "cherry", "apple"),
  id = c(1, 1, 2)
)

data %>%
  pmap(~ "{..2} no {..3} is {..1} fruitsunits big." %>% glue())


