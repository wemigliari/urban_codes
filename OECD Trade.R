library(dplyr)
library(gplots)

ocde <- t(grossexport)


dev.off()



par(mfrow = c(1,2), oma = c(3,3,3,3), mar = c(3,3,3,3), tcl = -0.5, cex = 0.5)
plot(grossexport$`1995`/1000, grossexport$`2000`/1000, main = "OECD 1995-2011. Trade Volume in Value Added (in Billion Dollars).",
     col = "black",
     pch = 1, 
     xlab = "Series 1995",
     ylab = "Series 2005-2011")
     
points(grossexport$`1995`/1000, grossexport$`2005`/1000, col = "lightgray", cex = 2, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2008`/1000, col = "lightgray", cex = 3, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2009`/1000, col = "lightgray", cex = 4, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2010`/1000, col = "lightgray", cex = 5, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2011`/1000, col = "lightgray", cex = 6, pch = 1)
#points(three$`1995`/1000, three$`2011`/1000, col = "lightblue", cex = 3, pch = 2, lwd = 2)
mtext("OECD (2015). Elaborated by W. Migliari", side = 1, outer = FALSE, line = 3, cex = 0.5)


plot(grossexport$`1995`/1000, grossexport$`2000`/1000, main = "International Trade. Manufactured Goods (in Billion Dollars).",
     col = "black",
     pch = 1, 
     xlab = "Series 1995",
     ylab = "Series 2005-2011",
     xlim = c(0, 6000),
     ylim = c(0, 6000))

eu <- 5100
eu1 <- 5100

us <- 1179
us1 <- 1179

points(grossexport$`1995`/1000, grossexport$`2005`/1000, col = "lightgray", cex = 2, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2008`/1000, col = "lightgray", cex = 3, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2009`/1000, col = "lightgray", cex = 4, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2010`/1000, col = "lightgray", cex = 5, pch = 1)
points(grossexport$`1995`/1000, grossexport$`2011`/1000, col = "lightgray", cex = 6, pch = 1)
#points(three$`1995`/1000, three$`2011`/1000, col = "lightblue", cex = 3, pch = 2, lwd = 2)
points(eu, eu1, col = "black", cex = 5, pch = 2, lwd = 2 )
points(us, us1, col = "black", cex = 5, pch = 2, lwd = 2 )
mtext("OECD (2015) & WTO Statistical Review (2019, p. 33). Elaborated by W. Migliari", side = 1, outer = FALSE, line = 3, cex = 0.5)


scatter.smooth(grossexport$`1995`/1000, grossexport$`2005`/1000, col = "lightgray", cex = 2, pch = 1) 

#????
line(grossexport$`1995`, grossexport$`2005`)


