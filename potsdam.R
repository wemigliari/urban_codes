library(readxl)
library(igraph)
library(ggraph)
library(graphlayouts)

## Import xlsx table

potsdam <- read_excel("/Users/wemigliari/Documents/R/tabelas/potsdam_network.xlsx",
                       sheet = "data3")


## Export csv table
write.csv(potsdam, file = "/Users/wemigliari/Documents/R/tabelas/potsdam_network.csv")

##

potsdam1 <- make_empty_graph(31)

V(potsdam1)[1]$color<-"green"
V(potsdam1)[c(2:7)]$color<-"lightgreen"
V(potsdam1)[c(8:31)]$color<-"steelblue"

par(mfrow = c(1,3),mar=c(1,1,1,1), oma = c(0,0,0,0), cex = 0.5)

plot(potsdam1, edge.arrow.size=.5, edge.arrow.width = 1, edge.width = 0.5, edge.arrow.mode = T,
     vertex.size=8, vertex.size2 = 1,
     vertex.frame.color="black", vertex.label.color="black", vertex.label = NA,
     vertex.label.cex=0.4, vertex.label.dist=1, vertex.label.degree = 1,
     edge.curved=0.1,
     main = "", xlab = "")

## 

potsdam_graphic <- graph_from_data_frame(potsdam, directed = T)
plot(potsdam_graphic, vertex.label = NA)

V(potsdam_graphic)["Research Areas"]$color<-"green"
V(potsdam_graphic)[potsdam$target]$color<-"steelblue"
V(potsdam_graphic)[c("Democratic Transformations", 
                     "Governance for the Environment and Society",
                     "Energy Systems and Societal Change",
                     "Perception, Values, Orientation",
                     "Systemic Interdependencies: Nature, Technology, Society",
                     "Forums: Science, Policy, Society")]$color<-"lightgreen"



par(mar=c(5,18,5,5), cex = 0.9)

plot(potsdam_graphic, edge.arrow.size=.5, edge.arrow.width = 1, edge.width = 0.5, edge.arrow.mode = T,
     vertex.size=8, vertex.size2 = 1,
     vertex.frame.color="black", vertex.label.color="black", vertex.label = NA,
     vertex.label.cex=0.4, vertex.label.dist=1, vertex.label.degree = 1,
     edge.curved=0.1,
     main = "", xlab = "")


legend("bottomleft", inset = c(-0.6, 0),     ## position, also takes x,y coordinates
       legend = c("Democratic Transformations (3)", 
                  "Governance for the Environment and Society (5)",
                  "Energy Systems and Societal Change (5)",
                  "Perception, Values, Orientation (3)",
                  "Systemic Interdependencies: Nature, Technology, Society (4)",
                  "Forums: Science, Policy, Society (4)"),
       pch = 16,              ## legend symbols see ?points
       col = "lightgreen",
       bty = "n",
       cex = 0.8,
       title = "")









