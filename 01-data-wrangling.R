# load libraries
library(tidyverse)
library(janeaustenr)

# get the book emma
data(emma)
class(emma)
view(emma)
emma

# combine chunks that belong to the same sentence
# eliminate weird line breaks

# suggestion 1: 
# step 1: collapse everything 
emma_novel_combined <- paste(emma, collapse = " ")
# step 2: split by punctuation
emma_novel_split <- unlist(str_split(emma_novel_combined, pattern = "\\."))

# combine paragpahs for emma
new_emma <- combine_paragraphs(emma)

# save new_emma to disk
new_emma %>%
  data.frame() %>%
  write_tsv("data/emma_book.tsv")


# my solution:
# check the last character in the chunk, if it's not punctuation
# check the following character in the next chunk, if it's lower case, combine
emma[15]
emma[16]

new_emma <- c()
new_paragraph <- ""

length(emma)

for (i in 1:length(emma)) {
  print(emma[i])
  
  #count total number of character in current
  character_count <- nchar(emma[i])
  print(character_count)
  
  # substring current line to get last character
  last_character <- (substr(emma[i], character_count, character_count))
}




                           