

### Simple Network Model B - Interactive Proto-type

# Ex 1
academic_net <- read_excel("/Users/wemigliari/Documents/R/tabelas/academic_net.xlsx")
academic_net

library('networkD3')
net <- data.frame(
  PAs=c("State", "State", "State", "State", "State", "Communities", "Communities", "Communities", "Communities", "Autobuses_Urb_de_Bilbao_y_Transitia", "Sociedad Estatal Correos y Telégrafos", "Endesa Energía"),
  Companies=c("Endesa Energía", "Communities", "Hisdesat", "Airbus Helicopters", "Sociedad Estatal Correos y Telégrafos", "Empresa Martin", "Navantia", "Ferrovial Servicios", "Autobuses_Urb_de_Bilbao_y_Transitia", "Citizens", "Citizens", "Citizens"))

simpleNetwork(net, nodeColour = "#8c8c19", width = 150, height = 150)

# Ex 2

library(readxl)

nets_patrimon <- read_excel("/Users/wemigliari/Documents/R/tabelas/nets.xlsx", sheet = "Est_Com")

test_net3 <- simpleNetwork(nets_patrimon, height = NULL, width = NULL,
                           linkDistance = 150, charge = -30, fontSize = 7, fontFamily = "serif",
                           linkColour = "black", nodeColour = "#4b4b0d", opacity = 0.6, zoom = F)
test_net3

