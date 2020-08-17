#Networks

library(tidyverse)
library(viridis)
library(igraph)
library(networkD3)

# Load dataset from github
data <- read_xlsx("/Users/wemigliari/Documents/R/tabelas/malmo_smart_city.xlsx",
                   sheet = "intersecting_themes")

data <- as.data.frame(data, stringsAsFactors = FALSE)




##
nodes <- data.frame(name = unique(c(data$source, data$target)))

nodes$group <- as.factor(c("a","b","b","b","b","c","c","c", "c"))

links <- data.frame(source = match(data$source, nodes$name) - 1,
                    target = match(data$target, nodes$name) - 1)

mycolour <- JS('d3.scaleOrdinal().domain(["a", "b", "c"]).range(["red", "black", "gray"])')


forceNetwork(Links = links, Nodes = nodes, Source = "source",
             Target = "target", NodeID ="name", Group = "group",
             fontSize = 14,
             radiusCalculation = JS(" Math.sqrt(d.nodesize)+6"), charge = -30,
             opacity = 1, opacityNoHover = 1, width = 1000,
             colourScale = mycolour,
             linkDistance= 200)








