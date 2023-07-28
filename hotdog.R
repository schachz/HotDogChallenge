hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")


hotdogs <- hotdogs

head(hotdogs)

New.record <- hotdogs$New.record



for ( i in 1:length(New.record) ) {
  if (New.record[i] == 1) {
    fill_colors <- c(fill_colors, "black")
  } else {
    fill_colors <- c(fill_colors, "grey")
  }
}

barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


