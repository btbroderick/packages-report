library(tidyverse)
library(here)
## create a data frame of your installed packages
mypackages <- tibble::as.tibble(installed.packages()) %>%
  select(Package, LibPath, Version, Priority, Built)
## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write_csv(mypackages, here("data","installed-packages.csv"))

