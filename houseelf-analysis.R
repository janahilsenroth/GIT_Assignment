get_data <- functin(){
  read.csv("houseelf-analysis.R")
}

#is this working?

library(stringr)
get_GC_content <- function(dna){
lows <- str_to_lower(dna)
c <- count(lows, 'c')
g <- count(lows, 'g')
content <- ((g+c)/length(lows))*100
return(content)
}

