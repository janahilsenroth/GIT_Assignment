# Problem 3- Import data
data <- read.csv("data/houseelf-earlength-dna-data.csv")


#is this working?

#Problem 4- 






library(stringr)
get_GC_content <- function(dna){
  lows <- str_to_lower(dna)
  c <- str_count(lows, "c")
  g <- str_count(lows, "g")
  content <- ((g+c)/str_length(lows))*100
  return(content)
}

