

######## Flow Charts

library('data.tree')
library(igraph)
library(networkD3)

net <- tibble(pas=c("State", "State", "State", "State", "State", "Communities", "Communities", "Communities", "Communities", "Autobuses Bilbao", "Endesa Energía"),
              companies=c("Endesa Energía", "Communities", "Hisdesat", "Airbus Helicopters", "Correos", "Empresa Martin", "Navantia", "Ferrovial Servicios", "Autobuses Bilbao", "Citizens", "Citizens"))
  

tree <- FromDataFrameNetwork(net)
tree
lol <- ToListExplicit(tree, unname = TRUE)
diagonalNetwork(lol)
radialNetwork(List = lol, fontSize = 10, opacity = 0.9)


###

hierarchical_list <- list(name = "Moncloa",
                          children = list(list(name = "Communities",
                                               children = list(list(name = "Navantia"),
                                                               list(name = "Hisdesat"),
                                                               list(name = "Sacyr Infraestructuras"),
                                                               list(name = "Empresa Martin"),
                                                               list(name = "Endesa Energía"),
                                                               list(name = "Airbus Helicopters"),
                                                               list(name = "Iberdrola Clientes"),
                                                               list(name = "Clece"),
                                                               list(name = "Inaer Helicopteros"),
                                                               list(name = "Ferrovial Servicios"),
                                                               list(name = "Elecnor Infraestructuras"),
                                                               list(name = "Sociedad Estatal Correos y Telégrafos"),
                                                               list(name = "Dragados-Tecsa-Amenabar"),
                                                               list(name = "Acciona Infraestructuras")
                                               )),
                                          list(name = "Cities",
                                               children = list(list(name = "Autobuses_Urb_de_Bilbao_y_Transitia"),
                                                               list(name = "Asfaltos Bahillo")
                                               ))

                          ))
diagonalNetwork(hierarchical_list, nodeColour = "hex #399d67", nodeStroke = "	#006400",
                fontFamily = "sans", fontSize = 20)




