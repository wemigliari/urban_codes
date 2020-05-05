library(gplots)

###Modelo 1

par(oma = c(5,5,5,5), mar = c(5,5,5,5), tcl = -0.5, cex = 0.6)
ex = c(1, 0.8, 0.6, 0.4, 0.2, 0)
im = c(0, 0.2, 0.4, 0.6, 0.8, 1)

plot(ex, im, main = "Modelo 1. Sistema de propriedade dependente de bens e manufaturas. Relação preço-quantidade de valor agregado
nas importações.", typ = "l", col = "lightgray", ylab = "P", xlab = "Q")
legend(0.2, 0.87, legend = "Brasil & América Latina", bty = "n", cex = 0.7, col = "darkgray")
legend(0.33, 0.75, legend = "Cingapura & Hong Kong", bty = "n", cex = 0.7, col = "darkgray")
legend(0.68, 0.40, legend = "Países Nórdicos & do Norte da Europa", bty = "n", cex = 0.7, col = "darkgray")

mtext('Importações de bens de maior valor agregado', side = 2, outer = FALSE, line = 6, cex = 0.7)
mtext('Mercados estrangeiros de manufaturas', side = 2, outer = FALSE, line = 5, cex = 0.7)
mtext('Migliari, W.(2019). RStudio.', side = 1, outer = FALSE, line = 5, cex = 0.7)


###Modelo 2

par(oma = c(5,5,5,5), mar = c(5,5,5,5), tcl = -0.5, cex = 0.6)
ex = c(1, 0.8, 0.6, 0.4, 0.2, 0)
im = c(0, 0.2, 0.4, 0.6, 0.8, 1)

plot(ex, im, main = "Modelo 2. Sistema de propriedade exportador de bens e manufaturas. Relação preço-quantidade de valor agregado
nas exportações.", typ = "l", col = "lightgray", ylab = "P", xlab = "Q")
legend(0.2, 0.87, legend = "Países Nórdicos & do Norte da Europa", bty = "n", cex = 0.7, col = "darkgray")
legend(0.33, 0.75, legend = "Cingapura & Hong Kong", bty = "n", cex = 0.7, col = "darkgray")
legend(0.68, 0.40, legend = "Brasil & América Latina", bty = "n", cex = 0.7, col = "darkgray")

mtext('Exportações de bens e serviços de maior valor agregado', side = 2, outer = FALSE, line = 6, cex = 0.7)
mtext('Mercados domésticos de manufaturas', side = 2, outer = FALSE, line = 5, cex = 0.7)
mtext('Migliari, W.(2019). RStudio.', side = 1, outer = FALSE, line = 5, cex = 0.7)


