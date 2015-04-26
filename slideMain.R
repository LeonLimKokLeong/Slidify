library(slidify)

## Run once to initialize the deck
## Comment off after running once
#setwd("C:/Users/S7324302E/Desktop/M9 - Developing Data Products/Project-Slidify")
#author("Central Limit Theorem")

#set path to deck here
setwd("C:/Users/S7324302E/Desktop/M9 - Developing Data Products/Project-Slidify/Central Limit Theorem")
slidify("index.Rmd")
runDeck()

## publish to git hub
#publish_github(user,repo)
