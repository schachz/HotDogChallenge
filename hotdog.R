hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")

head(hotdogs)

Country <- hotdogs$Country
Year <- hotdogs$Year
Dogs.eaten <- hotdogs$Dogs.eaten

#Function to define fill based on country
fill <- c()
for ( i in 1:length(Country) ) {
  if (Country[i] == "United States") {
    fill <- c(fill, "#5b0f21")
  } else {
    fill <- c(fill, "#c0bfbd")
  }
}

barplot(Dogs.eaten, names.arg = Year,  col=fill, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")



