#' Tom Ellis, 31st July 2019
#' Script to randomise plants for the field experiment in Såltea, to be set up
#' summer 2019. There are two separate cohorts to be sown into trays of 6x11 wells:
#' 1. Ten accessions of natural lines from the 1001 genomes collection. 9 trays
#'    with each accession plus an emplty well in each column.
#' 2. Ten F1 familes (5 crosses in each direction) plus parental lines. 6 trays.
#'    Each cross or parent is randomised within 2 columns of each tray, with two
#'    empty wells.
 
set.seed(504)

# list of accessions
g1001 <- c("6125", "1158", "6092", "6024", '8231',"6017", "6046", "6184", "6237", '6244', NA)
crosses <- c("6092 x 6024", "6024 x 6092",
             "6092 x 1158", "1158 x 6092",
             "6125 x 1158", "1158 x 6125",
             "8231 x 1158", "1158 x 8231",
             "8231 x 6024", "6024 x 8231",
             # parental lines
             "6125a", "6125b",
             "1158a", "1158b",
             "6092a", "6092b",
             "6024a", "6024b",
             "8231a", "8231b", # parental lines as well
             NA, NA) # two blanks

# empty list to store positions for each block. There are 6 blocks per tray
# For the natural accessions there are 9 trays
# For the crosses there are 6 trays
positions <- vector('list', length =  6*9 + 6*6)

counter <- 1 # count unique blocks in the loop
# Loop over trays and blocks for the natural accessions
for(tray in 1:9){
  for(row in 1:6){
    positions[[counter]] <- 
      data.frame(
        experiment = "1001G",
        tray  = tray,
        row   = row,
        column = 1:11,
        block = counter,
        genotype = sample(g1001, 11, replace = F)
      )
    counter <- counter +1
  }
}
# Loop over trays and blocks for the crosses
for(tray in 10:15){
  for(row in c(1,3,5)){
    positions[[counter]] <- 
      data.frame(
        experiment = "crosses",
        tray  = tray,
        row   = c(rep(row, 11), rep(row+1, 11)),
        column = rep(1:11, 2),
        block = counter,
        genotype = sample(crosses, 22, replace = F)
      )
    counter <- counter +1
  }
}

# bind list
positions <- do.call('rbind', positions)

label_names <- na.omit(unique(c(g1001, crosses)))
for(i in 1:length(label_names)){
  ix <- positions$genotype == label_names[i]
  positions$label[ix] <- i+12
}
# Write to disk
write.csv(positions, "001.data/001.experimental_deisgn/randomisation_Aug2019.csv", row.names = F)
