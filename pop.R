data1<- read.csv("11009.csv", header = TRUE)
data2<- read.csv("11009-2.csv", header = TRUE)
index<-c(1:5,11,17,23,29,35,41,47,53,59,65,71,77,83,89,95,101,107,113,119,125)
a<- subset(data1,area == "竹北市")[, index]
b<- subset(data1,area == "關西鎮")[, index]
c<- subset(data1,area == "新埔鎮")[, index]
d<- subset(data1,area == "竹東鎮")[, index]
e<- subset(data1,area == "湖口鄉")[, index]
f<- subset(data1,area == "橫山鄉")[, index]
g<- subset(data1,area == "新豐鄉")[, index]
h<- subset(data1,area == "芎林鄉")[, index]
i<- subset(data1,area == "寶山鄉")[, index]
j<- subset(data1,area == "北埔鄉")[, index]
k<- subset(data1,area == "峨眉鄉")[, index]
l<- subset(data1,area == "尖石鄉")[, index]
m<- subset(data1,area == "五峰鄉")[, index]
o<- subset(data2,area == "東區")[, index]
p<- subset(data2,area == "北區")[, index]
q<- subset(data2,area == "香山區")[, index]

new_data<-rbind(o,p,q,a,b,c,d,e,f,g,h,i,j,k,l,m)
colnames(new_data)= c("city","area","gender","total","age_4","age_9","age_14","age_19","age_24","age_29","age_34","age_39","age_44","age_49","age_54","age_59","age_64","age_69","age_74","age_79","age_84","age_89","age_94","age_99","age_100")

#yinx<- c(5:7) 
#young<- subset(new_data)[yinx]
#sinx<- c(8:18)
#strong<-subset(new_data)[sinx]
#oinx<- c(19:25)
#old<- subset(new_data)[oinx]

#new_data$young<- mean(young)
  
write.csv(new_data, "hsinchu_11009.csv",row.names = FALSE,fileEncoding = "Big5")