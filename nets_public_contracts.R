
library(igraph)
library(tidyr)

patrimonialism <- graph(c("State", "Communities", "Communities", "State", "State", "State", "Communities", "Communities", "Autobuses Bilbao", "Communities", "State", "Correos", "Correos", "State", "Communities", "Autobuses Bilbao", "Adif", "State", "State", "Adif"),
                  isolates = c("Endesa Energía", "Hisdesat", "Airbus Helicopters", "Empresa Martin", "Navantia", "Ferrovial Servicios", "Grupo ACS", "Acciona", "Sacyr", "FCC"))

barcelona20 <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Level 1")
barcelona40 <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Level 2")
barcelona60 <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Level 3")
barcelona80 <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Level 4")
barcelona100 <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Level 5")

contracts20 <- data.frame(barcelona20$public_demand, barcelona20$supplier)
contracts40 <- data.frame(barcelona40$public_demand, barcelona40$supplier)
contracts60 <- data.frame(barcelona60$public_demand, barcelona60$supplier)
contracts80 <- data.frame(barcelona80$public_demand, barcelona80$supplier)
contracts100 <- data.frame(barcelona100$public_demand, barcelona100$supplier)

barna20 <- graph_from_data_frame(contracts20)
barna40 <- graph_from_data_frame(contracts40)
barna60 <- graph_from_data_frame(contracts60)
barna80 <- graph_from_data_frame(contracts80)
barna100 <- graph_from_data_frame(contracts100)

par(mfrow=c(2,3), mai = c(0.2,0.2,0.2,0.2))

plot(patrimonialism, edge.arrow.size=.3, vertex.color="gold", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.8, vertex.label.dist=2, edge.curved=0.4, cex = 1, xlab = "", vertex.label = NA, xlab = "Fig.6") 
plot(barna20, edge.arrow.size=.3, vertex.color="#969393", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.3, vertex.label.dist=2, edge.curved=0.4, cex = 0.5, vertex.label = NA, xlab = "Fig.1") 
plot(barna40, edge.arrow.size=.3, vertex.color="#a5a3a3", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.3, vertex.label.dist=2, edge.curved=0.4, cex = 0.5, vertex.label = NA, xlab = "Fig.2") 
plot(barna60, edge.arrow.size=.3, vertex.color="#b4b2b2", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.3, vertex.label.dist=2, edge.curved=0.4, cex = 0.5, vertex.label = NA, xlab = "Fig.3") 
plot(barna80, edge.arrow.size=.3, vertex.color="#c3c1c1", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.3, vertex.label.dist=2, edge.curved=0.4, cex = 0.5,vertex.label = NA, xlab = "Fig.4") 
plot(barna100, edge.arrow.size=.3, vertex.color="#d2d1d1", vertex.size=7, vertex.frame.color="black", vertex.label.color="black", 
     vertex.label.cex=0.3, vertex.label.dist=2, edge.curved=0.4, cex = 0.5, vertex.label = NA, xlab = "Fig.5") 
