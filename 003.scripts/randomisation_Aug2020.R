#' Tom Ellis, 2nd June 2020, modified 25th August to add a second cohort.
#' 
#' Script to randomise positions of plants for the field experiment in Såltea to
#' be sown summer 2020 in trays of 6x11 wells. There are three experiments:
#' 1. Four F2 families plus five selfed offspring (S2) from parental lines. Each tray
#'    contains 14 of each F2, one of each S2, and one blank cell. These are
#'    trays 1-14.
#' 2. Randomised over six trays (trays 15-20):
#'    - 15 plants of the 10 natural accessions from the 2019 experiment
#'    - 15 plants of the same genotypes from the 2017 1001-genomes stock
#'    - 10 plants from 3 mothers from each of 3 wild populations collected by 
#'      Svante in July 2020.
#'    - 6 blank wells
#' 3. A repetition of cohort 2 because germination was very poor. Trays 21-26.

library(tidyverse)

set.seed(2020)


f2s <- data.frame(
  experiment = "F2s",
  mother   = c("F1.7.09", "F1.1.02", "F1.5.05", "F1.2.02", 
               "S1.10.01", "S1.2.09", "S1.5.16", "S1.03.01", "S1.7.08", NA),
  genotype = c("8231 x 1158", "1158 x 6092", "6024 x 8231", "1158 x 6125",
               "8231", "1158", "6092", "6024", "6125", NA),
  type = c(rep("F2", 4), rep("selfed_parent", 5), "blank")
)
# Replicate to give 15 rows of each F2, with a total of 66 wells.
f2s <- f2s[c(rep(1:4, each = 15), 5:10),]

# Randomise positions in each of 14 trays.
f2s <- lapply(1:14, function(x) f2s[sample(1:66, replace = F),])
f2s <- do.call('rbind', f2s)
# Add labels for tray, row and column
f2s$tray <- rep(1:14, each=66)
f2s$long_edge  <- rep(1:11, 14*6)
f2s$short_edge <- rep(1:6, 14*11)

f2s <- f2s %>% select(experiment, tray, long_edge, short_edge, mother, genotype, type)

# write_csv(f2s, "data_raw/saltea2_F2s_randomisation.csv")

#' Pure lines
#' This is the first attempt, which probably died in August 2020.
pure_lines <- data.frame(
  experiment = "pure_lines",
  mother     = c(rep("", 10),
                 rep("2017_stock", 10),
                 "Lovvik-1", "Lovvik-2", "Lovvik-3",
                 "Eden-Road-1", "Eden-Road-2", "Eden-Road-3",
                 "Hossjo-1", "Hossjo-2", "Hossjo-3",
                 NA),
  genotype   =  c("6125", "1158", "6092", "6024", '8231',"6017", "6046", "6184", "6237", '6244',
                  "6125", "1158", "6092", "6024", '8231',"6017", "6046", "6184", "6237", '6244',
                  "Lovvik-1", "Lovvik-2", "Lovvik-3",
                  "Eden-Road-1", "Eden-Road-2", "Eden-Road-3",
                  "Hossjo-1", "Hossjo-2", "Hossjo-3",
                  NA),
  type="pure_lines"
)

pure_lines <- rbind(
  pure_lines[rep(1:20, each=15),],
  pure_lines[rep(21:29, each=10),],
  pure_lines[rep(30, 6),]
)
pure_lines <- pure_lines[sample(1:396, replace = F),]

pure_lines$tray <- rep(15:20, each = 66)
pure_lines$long_edge  <- rep(1:11, each=6)
pure_lines$short_edge <- rep(1:6, times = 11)

pure_lines <- pure_lines %>% select(experiment, tray, long_edge, short_edge, mother, genotype, type)
# write_csv(pure_lines, "data_raw/saltea2_purelines_randomisation.csv")

#' Attempt 2 at the pure lines
#' The first cohort probably died, so I will repeat the randomisation.
#' This will be trays 21-26, distinct from anything before
set.seed(2508)
pure_lines <- data.frame(
  experiment = "pure_lines",
  mother     = c(rep("", 10),
                 rep("2017_stock", 10),
                 "Lovvik-1", "Lovvik-2", "Lovvik-3",
                 "Eden-Road-1", "Eden-Road-2", "Eden-Road-3",
                 "Hossjo-1", "Hossjo-2", "Hossjo-3",
                 NA),
  genotype   =  c("6125", "1158", "6092", "6024", '8231',"6017", "6046", "6184", "6237", '6244',
                  "6125", "1158", "6092", "6024", '8231',"6017", "6046", "6184", "6237", '6244',
                  "Lovvik-1", "Lovvik-2", "Lovvik-3",
                  "Eden-Road-1", "Eden-Road-2", "Eden-Road-3",
                  "Hossjo-1", "Hossjo-2", "Hossjo-3",
                  NA),
  type="pure_lines"
)

pure_lines <- rbind(
  pure_lines[rep(1:20, each=15),],
  pure_lines[rep(21:29, each=10),],
  pure_lines[rep(30, 6),]
)
pure_lines <- pure_lines[sample(1:396, replace = F),]

pure_lines$tray <- rep(21:26, each = 66)
pure_lines$long_edge  <- rep(1:11, each=6)
pure_lines$short_edge <- rep(1:6, times = 11)

pure_lines <- pure_lines %>% select(experiment, tray, long_edge, short_edge, mother, genotype, type)
write_csv(pure_lines, "data_raw/saltea2_purelines_randomisation_cohort2.csv")

