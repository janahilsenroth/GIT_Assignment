# Problem 3- Import data
data <- read.csv("data/houseelf-earlength-dna-data_1.csv")


#is this working?

library(stringr)
get_GC_content <- function(dna){
  lows <- str_to_lower(dna)
  c <- str_count(lows, "c")
  g <- str_count(lows, "g")
  content <- ((g+c)/str_length(lows))*100
  return(content)
}

get_ear_length <- function(seq){
   #Calculate the GC-content for one or more sequences
   ear_lengths <- ifelse(seq > 10, "large", "small")
   return(ear_lengths)
}

dna_seq <- data$dnaseq
earlength_data <- data$earlength
id <- data$id

x <- get_GC_content(dna_seq)
y <- get_ear_length(earlength_data)

table <- cbind(id,x,y)
table
write.csv(table, file="house-elf-ear-classification")
