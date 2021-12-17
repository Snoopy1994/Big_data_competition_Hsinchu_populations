data<- read.csv("hsinchu.csv", header = TRUE)
popMatrix<-as.matrix(dist(data[,c(3,2)]))

heatmap(popMatrix)

if(!require(pheatmap)) install.packages("pheatmap")
library(pheatmap)
pheatmap(popMatrix)
pheatmap(popMatrix, display_numbers = TRUE)