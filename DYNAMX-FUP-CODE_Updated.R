DYNA_Data <- read_excel("DYNA.xlsx")
#limpar as colunas que serão usadas para Cross Section
DYNA_Cross <- DYNA_Data[,c(1,2,7:14,20)]
#ajeitar pra ficar bonito
colnames(DYNA_Cross) <-c("Case", "Frame","Lumen_Area", "L_Avg_Diam" ,"L_Min_Diam" ,"L_Max_Diam" ,"Stent_Area", "S_Avg_Diam",
 "S_Min_Diam", "S_Max_Diam", "NIH" )
#data frame com a informação de tempo decorrido BI>>FU
Table_9M <- read_excel(sheet = "Time","DYNA.xlsx")

#delimitar as linhas de cada caso
Case_28_501_FU_CS <- DYNA_Cross[3:36,]
Case_28_502_FU_CS <- DYNA_Cross[48:91,]
Case_28_503_FU_CS <- DYNA_Cross[97:128,]
Case_28_504_FU_CS <- DYNA_Cross[135:169,]
Case_28_505_FU_CS <- DYNA_Cross[183:213,]
Case_28_506_FU_CS <- DYNA_Cross[225:256,]
Case_28_598_FU_CS <- DYNA_Cross[270:304,]
Case_28_599_FU_CS <- DYNA_Cross[318:354,]
Case_31_501_FU_CS <- DYNA_Cross[366:394,]
Case_31_502_FU_CS <- DYNA_Cross[409:437,]
Case_31_503_FU_CS <- DYNA_Cross[450:481,]

#média das áreas do stent
Case_28_501_Mean_SA<-round(mean(as.numeric(Case_28_501_FU_CS$Stent_Area)),4)
Case_28_502_Mean_SA<-round(mean(as.numeric(Case_28_502_FU_CS$Stent_Area)),4)
Case_28_503_Mean_SA<-round(mean(as.numeric(Case_28_503_FU_CS$Stent_Area)),4)
Case_28_504_Mean_SA<-round(mean(as.numeric(Case_28_504_FU_CS$Stent_Area)),4)
Case_28_505_Mean_SA<-round(mean(as.numeric(Case_28_505_FU_CS$Stent_Area)),4)
Case_28_506_Mean_SA<-round(mean(as.numeric(Case_28_506_FU_CS$Stent_Area)),4)
Case_28_598_Mean_SA<-round(mean(as.numeric(Case_28_598_FU_CS$Stent_Area)),4)
Case_28_599_Mean_SA<-round(mean(as.numeric(Case_28_599_FU_CS$Stent_Area)),4)
Case_31_501_Mean_SA<-round(mean(as.numeric(Case_31_501_FU_CS$Stent_Area)),4)
Case_31_502_Mean_SA<-round(mean(as.numeric(Case_31_502_FU_CS$Stent_Area)),4)
Case_31_503_Mean_SA<-round(mean(as.numeric(Case_31_503_FU_CS$Stent_Area)),4)
c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA)
#média e st dev áreas do stent
SA_Mean <- mean(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))
SA_SD <- sd(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))


#lembrar de merge as atualizações


#média dos NIH por caso
Case_28_501_Mean_NIH<-round(mean(as.numeric(Case_28_501_FU_CS$NIH)),4)
Case_28_502_Mean_NIH<-round(mean(as.numeric(Case_28_502_FU_CS$NIH)),4)
Case_28_503_Mean_NIH<-round(mean(as.numeric(Case_28_503_FU_CS$NIH)),4)
Case_28_504_Mean_NIH<-round(mean(as.numeric(Case_28_504_FU_CS$NIH)),4)
Case_28_505_Mean_NIH<-round(mean(as.numeric(Case_28_505_FU_CS$NIH)),4)
Case_28_506_Mean_NIH<-round(mean(as.numeric(Case_28_506_FU_CS$NIH)),4)
Case_28_598_Mean_NIH<-round(mean(as.numeric(Case_28_598_FU_CS$NIH)),4)
Case_28_599_Mean_NIH<-round(mean(as.numeric(Case_28_599_FU_CS$NIH)),4)
Case_31_501_Mean_NIH<-round(mean(as.numeric(Case_31_501_FU_CS$NIH)),4)
Case_31_502_Mean_NIH<-round(mean(as.numeric(Case_31_502_FU_CS$NIH)),4)
Case_31_503_Mean_NIH<-round(mean(as.numeric(Case_31_503_FU_CS$NIH)),4)
#média e st dev de todos os NIH
Mean_NIH_All_Cases <- mean(c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH))
SD_NIH <- sd(c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH))

#NIH obstruction por caso
Case_28_501_NIH_Obstruction <- mean((as.numeric(Case_28_501_FU_CS$NIH)/as.numeric(Case_28_501_FU_CS$Stent_Area))*100)
Case_28_502_NIH_Obstruction <- mean((as.numeric(Case_28_502_FU_CS$NIH)/as.numeric(Case_28_502_FU_CS$Stent_Area))*100)
Case_28_503_NIH_Obstruction <- mean((as.numeric(Case_28_503_FU_CS$NIH)/as.numeric(Case_28_503_FU_CS$Stent_Area))*100)
Case_28_504_NIH_Obstruction <- mean((as.numeric(Case_28_504_FU_CS$NIH)/as.numeric(Case_28_504_FU_CS$Stent_Area))*100)
Case_28_505_NIH_Obstruction <- mean((as.numeric(Case_28_505_FU_CS$NIH)/as.numeric(Case_28_505_FU_CS$Stent_Area))*100)
Case_28_506_NIH_Obstruction <- mean((as.numeric(Case_28_506_FU_CS$NIH)/as.numeric(Case_28_506_FU_CS$Stent_Area))*100)
Case_28_598_NIH_Obstruction <- mean((as.numeric(Case_28_598_FU_CS$NIH)/as.numeric(Case_28_598_FU_CS$Stent_Area))*100)
Case_28_599_NIH_Obstruction <- mean((as.numeric(Case_28_599_FU_CS$NIH)/as.numeric(Case_28_599_FU_CS$Stent_Area))*100)
Case_31_501_NIH_Obstruction <- mean((as.numeric(Case_31_501_FU_CS$NIH)/as.numeric(Case_31_501_FU_CS$Stent_Area))*100)
Case_31_502_NIH_Obstruction <- mean((as.numeric(Case_31_502_FU_CS$NIH)/as.numeric(Case_31_502_FU_CS$Stent_Area))*100)
Case_31_503_NIH_Obstruction <- mean((as.numeric(Case_31_503_FU_CS$NIH)/as.numeric(Case_31_503_FU_CS$Stent_Area))*100)

#Média e SD NIH Obstructions 
Mean_NIH_Obst <- mean(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))
SD_NIH_Obst <- sd(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))

colnames(Table_9M)<-c("Case","FU_Time_Mts")
Table_9M$Mean_SA <- c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA)
Table_9M$Mean_NIH <- c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH)
Table_9M$NIH_Obstruction<-c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction)

head(Table_9M)
write.csv2(Table_9M,file="9M_By_Case_A.csv", sep = ",",  row.names = F)
