Hotdog Challenge
================
Author: Zach

``` r
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")


head(hotdogs)
```

    ##   Year                       Winner Dogs.eaten       Country New.record
    ## 1 1980 Paul Siederman & Joe Baldini       9.10 United States          0
    ## 2 1981              Thomas DeBerry       11.00 United States          0
    ## 3 1982               Steven Abrams       11.00 United States          0
    ## 4 1983                 Luis Llamas       19.50        Mexico          0
    ## 5 1984               Birgit Felden        9.50       Germany          0
    ## 6 1985             Oscar Rodriguez       11.75 United States          0

``` r
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
```

![](HotdogChallenge_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->
