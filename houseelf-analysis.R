get_data <- functin(){
  read.csv("houseelf-analysis.R")
}

#is this working?

library(stringr)
get_GC_content <- function(dna){
lows <- str_to_lower(dna)
c <- str_count(lows, "c")
g <- str_count(lows, "g")
content <- ((g+c)/str_length(lows))*100
return(content)
}
