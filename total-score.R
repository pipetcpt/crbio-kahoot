library(tidyverse)
library(readxl)

# kahoot_result_dir <- 'kahoot-2024-02-raw'
kahoot_result_dir <- 'kahoot-2024-03-raw'

kahoot_result <- dir(kahoot_result_dir, full.names = TRUE) %>% 
  map(\(x) read_excel(x, sheet = 2, skip = 2)) %>% 
  bind_rows() %>% 
  group_by(Player) %>% 
  summarise(total = sum(`Total Score (points)`)) %>% 
  arrange(desc(total))

View(kahoot_result)

# 2월
# Player   total
# <chr>    <dbl>
# 1 PKPK     28677
# 2 MK       27649
# 3 쿠쿠르   27467
# 4 별명     27130
# 5 lalasuna 26085
# 6 Ran      25413
# 7 슈킹     24955
# 8 하늘빛   24717
# 9 Miiing   24258
# 10 네오     23859

# 3월
# Player total
# <chr>  <dbl>
# 1 MOON   24791
# 2 O.o    23746
# 3 PK     23717
# 4 KHU    23383
# 5 쿠쿠르 23336
# 6 이현도 23009
# 7 MNB    21813
# 8 sk     21646
# 9 신     21147
# 10 KYE    20949
