library(ggplot2)

head(US15)

par(mar=c(3.5,9,5,1.5))

barplot(US15$`PersonsPoverty%`, names = US15$Cities, 
        density=c(0,0,0,0,0,0,100,0,0,100,0,0,0,0,0), angle=c(8), col = "brown",
        horiz = TRUE,
        ylim = rev(range(US15$`PersonsPoverty%`)),
        cex.names = 0.5, cex.axis = 0.5, space = 1, las = 1, family = "Times")


boxplot(US15$`2018`, US15$Proportion, col = "orange", log10 = "x", log10 = "y")
boxplot(US15$`2018`, US15$Proportion, col = "orange", log10 = "x", log10 = "y",
        ylim= c(5, 8))
