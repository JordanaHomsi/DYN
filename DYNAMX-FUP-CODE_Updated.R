DYNA_Data <- read_excel("DYNA.xlsx")

#limpar as colunas que serão usadas para Cross Section
DYNA_Cross <- DYNA_Data[,c(1,2,7:14,20)]

#ajeitar pra ficar bonito
colnames(DYNA_Cross) <-c("Case", "Frame","Lumen_Area", "L_Avg_Diam" ,"L_Min_Diam" ,"L_Max_Diam" ,"Stent_Area", "S_Avg_Diam",
 "S_Min_Diam", "S_Max_Diam", "NIH" )

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
SA_Mean <- mean(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))
SA_SD <- sd(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))
SA_Mean_Min <- min(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))
SA_Mean_Max <- max(c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA))

#áreas mínimas do stent
Case_28_501_Min_SA<-min(as.numeric(Case_28_501_FU_CS$Stent_Area))
Case_28_502_Min_SA<-min(as.numeric(Case_28_502_FU_CS$Stent_Area))
Case_28_503_Min_SA<-min(as.numeric(Case_28_503_FU_CS$Stent_Area))
Case_28_504_Min_SA<-min(as.numeric(Case_28_504_FU_CS$Stent_Area))
Case_28_505_Min_SA<-min(as.numeric(Case_28_505_FU_CS$Stent_Area))
Case_28_506_Min_SA<-min(as.numeric(Case_28_506_FU_CS$Stent_Area))
Case_28_598_Min_SA<-min(as.numeric(Case_28_598_FU_CS$Stent_Area))
Case_28_599_Min_SA<-min(as.numeric(Case_28_599_FU_CS$Stent_Area))
Case_31_501_Min_SA<-min(as.numeric(Case_31_501_FU_CS$Stent_Area))
Case_31_502_Min_SA<-min(as.numeric(Case_31_502_FU_CS$Stent_Area))
Case_31_503_Min_SA<-min(as.numeric(Case_31_503_FU_CS$Stent_Area))
Min_SA_Mean <- mean(c(Case_28_501_Min_SA,Case_28_502_Min_SA,Case_28_503_Min_SA,Case_28_504_Min_SA,Case_28_505_Min_SA,Case_28_506_Min_SA,Case_28_598_Min_SA,Case_28_599_Min_SA,Case_31_501_Min_SA,Case_31_502_Min_SA,Case_31_503_Min_SA))
Min_SA_SD <- sd(c(Case_28_501_Min_SA,Case_28_502_Min_SA,Case_28_503_Min_SA,Case_28_504_Min_SA,Case_28_505_Min_SA,Case_28_506_Min_SA,Case_28_598_Min_SA,Case_28_599_Min_SA,Case_31_501_Min_SA,Case_31_502_Min_SA,Case_31_503_Min_SA))
Min_SA_Min <- min(c(Case_28_501_Min_SA,Case_28_502_Min_SA,Case_28_503_Min_SA,Case_28_504_Min_SA,Case_28_505_Min_SA,Case_28_506_Min_SA,Case_28_598_Min_SA,Case_28_599_Min_SA,Case_31_501_Min_SA,Case_31_502_Min_SA,Case_31_503_Min_SA))
Min_SA_Max <- max(c(Case_28_501_Min_SA,Case_28_502_Min_SA,Case_28_503_Min_SA,Case_28_504_Min_SA,Case_28_505_Min_SA,Case_28_506_Min_SA,Case_28_598_Min_SA,Case_28_599_Min_SA,Case_31_501_Min_SA,Case_31_502_Min_SA,Case_31_503_Min_SA))

#média dos diâmetros médios do stent
Case_28_501_Mean_SD<-round(mean(as.numeric(Case_28_501_FU_CS$S_Avg_Diam)),4)
Case_28_502_Mean_SD<-round(mean(as.numeric(Case_28_502_FU_CS$S_Avg_Diam)),4)
Case_28_503_Mean_SD<-round(mean(as.numeric(Case_28_503_FU_CS$S_Avg_Diam)),4)
Case_28_504_Mean_SD<-round(mean(as.numeric(Case_28_504_FU_CS$S_Avg_Diam)),4)
Case_28_505_Mean_SD<-round(mean(as.numeric(Case_28_505_FU_CS$S_Avg_Diam)),4)
Case_28_506_Mean_SD<-round(mean(as.numeric(Case_28_506_FU_CS$S_Avg_Diam)),4)
Case_28_598_Mean_SD<-round(mean(as.numeric(Case_28_598_FU_CS$S_Avg_Diam)),4)
Case_28_599_Mean_SD<-round(mean(as.numeric(Case_28_599_FU_CS$S_Avg_Diam)),4)
Case_31_501_Mean_SD<-round(mean(as.numeric(Case_31_501_FU_CS$S_Avg_Diam)),4)
Case_31_502_Mean_SD<-round(mean(as.numeric(Case_31_502_FU_CS$S_Avg_Diam)),4)
Case_31_503_Mean_SD<-round(mean(as.numeric(Case_31_503_FU_CS$S_Avg_Diam)),4)
Avg_SD_Mean <- mean(c(Case_28_501_Mean_SD,Case_28_502_Mean_SD,Case_28_503_Mean_SD,Case_28_504_Mean_SD,Case_28_505_Mean_SD,Case_28_506_Mean_SD,Case_28_598_Mean_SD,Case_28_599_Mean_SD,Case_31_501_Mean_SD,Case_31_502_Mean_SD,Case_31_503_Mean_SD))
Avg_SD_SD <- sd(c(Case_28_501_Mean_SD,Case_28_502_Mean_SD,Case_28_503_Mean_SD,Case_28_504_Mean_SD,Case_28_505_Mean_SD,Case_28_506_Mean_SD,Case_28_598_Mean_SD,Case_28_599_Mean_SD,Case_31_501_Mean_SD,Case_31_502_Mean_SD,Case_31_503_Mean_SD))
Avg_SD_Min <- min(c(Case_28_501_Mean_SD,Case_28_502_Mean_SD,Case_28_503_Mean_SD,Case_28_504_Mean_SD,Case_28_505_Mean_SD,Case_28_506_Mean_SD,Case_28_598_Mean_SD,Case_28_599_Mean_SD,Case_31_501_Mean_SD,Case_31_502_Mean_SD,Case_31_503_Mean_SD))
Avg_SD_Max <- max(c(Case_28_501_Mean_SD,Case_28_502_Mean_SD,Case_28_503_Mean_SD,Case_28_504_Mean_SD,Case_28_505_Mean_SD,Case_28_506_Mean_SD,Case_28_598_Mean_SD,Case_28_599_Mean_SD,Case_31_501_Mean_SD,Case_31_502_Mean_SD,Case_31_503_Mean_SD))

#stent excentricity index ((diâmetro máximo-diâmetro mínimo)/Diâmetro máximo)*100
Case_28_501_SEI <- ((as.numeric(Case_28_501_FU_CS$S_Max_Diam)-as.numeric(Case_28_501_FU_CS$S_Min_Diam))/as.numeric(Case_28_501_FU_CS$S_Max_Diam))*100
Case_28_502_SEI <- ((as.numeric(Case_28_502_FU_CS$S_Max_Diam)-as.numeric(Case_28_502_FU_CS$S_Min_Diam))/as.numeric(Case_28_502_FU_CS$S_Max_Diam))*100
Case_28_503_SEI <- ((as.numeric(Case_28_503_FU_CS$S_Max_Diam)-as.numeric(Case_28_503_FU_CS$S_Min_Diam))/as.numeric(Case_28_503_FU_CS$S_Max_Diam))*100
Case_28_504_SEI <- ((as.numeric(Case_28_504_FU_CS$S_Max_Diam)-as.numeric(Case_28_504_FU_CS$S_Min_Diam))/as.numeric(Case_28_504_FU_CS$S_Max_Diam))*100
Case_28_505_SEI <- ((as.numeric(Case_28_505_FU_CS$S_Max_Diam)-as.numeric(Case_28_505_FU_CS$S_Min_Diam))/as.numeric(Case_28_505_FU_CS$S_Max_Diam))*100
Case_28_506_SEI <- ((as.numeric(Case_28_506_FU_CS$S_Max_Diam)-as.numeric(Case_28_506_FU_CS$S_Min_Diam))/as.numeric(Case_28_506_FU_CS$S_Max_Diam))*100
Case_28_598_SEI <- ((as.numeric(Case_28_598_FU_CS$S_Max_Diam)-as.numeric(Case_28_598_FU_CS$S_Min_Diam))/as.numeric(Case_28_598_FU_CS$S_Max_Diam))*100
Case_28_599_SEI <- ((as.numeric(Case_28_599_FU_CS$S_Max_Diam)-as.numeric(Case_28_599_FU_CS$S_Min_Diam))/as.numeric(Case_28_599_FU_CS$S_Max_Diam))*100
Case_31_501_SEI <- ((as.numeric(Case_31_501_FU_CS$S_Max_Diam)-as.numeric(Case_31_501_FU_CS$S_Min_Diam))/as.numeric(Case_31_501_FU_CS$S_Max_Diam))*100
Case_31_502_SEI <- ((as.numeric(Case_31_502_FU_CS$S_Max_Diam)-as.numeric(Case_31_502_FU_CS$S_Min_Diam))/as.numeric(Case_31_502_FU_CS$S_Max_Diam))*100
Case_31_503_SEI <- ((as.numeric(Case_31_503_FU_CS$S_Max_Diam)-as.numeric(Case_31_503_FU_CS$S_Min_Diam))/as.numeric(Case_31_503_FU_CS$S_Max_Diam))*100
SEI_Mean <- mean(c(Case_28_501_SEI,Case_28_502_SEI,Case_28_503_SEI,Case_28_504_SEI,Case_28_505_SEI,Case_28_506_SEI,Case_28_598_SEI,Case_28_599_SEI,Case_31_501_SEI,Case_31_502_SEI,Case_31_503_SEI))
SEI_SD <- sd(c(Case_28_501_SEI,Case_28_502_SEI,Case_28_503_SEI,Case_28_504_SEI,Case_28_505_SEI,Case_28_506_SEI,Case_28_598_SEI,Case_28_599_SEI,Case_31_501_SEI,Case_31_502_SEI,Case_31_503_SEI))
SEI_Min <- min(c(Case_28_501_SEI,Case_28_502_SEI,Case_28_503_SEI,Case_28_504_SEI,Case_28_505_SEI,Case_28_506_SEI,Case_28_598_SEI,Case_28_599_SEI,Case_31_501_SEI,Case_31_502_SEI,Case_31_503_SEI))
SEI_Max <- max(c(Case_28_501_SEI,Case_28_502_SEI,Case_28_503_SEI,Case_28_504_SEI,Case_28_505_SEI,Case_28_506_SEI,Case_28_598_SEI,Case_28_599_SEI,Case_31_501_SEI,Case_31_502_SEI,Case_31_503_SEI))

#média das áreas luminais
Case_28_501_Mean_LA<-round(mean(as.numeric(Case_28_501_FU_CS$Lumen_Area)),4)
Case_28_502_Mean_LA<-round(mean(as.numeric(Case_28_502_FU_CS$Lumen_Area)),4)
Case_28_503_Mean_LA<-round(mean(as.numeric(Case_28_503_FU_CS$Lumen_Area)),4)
Case_28_504_Mean_LA<-round(mean(as.numeric(Case_28_504_FU_CS$Lumen_Area)),4)
Case_28_505_Mean_LA<-round(mean(as.numeric(Case_28_505_FU_CS$Lumen_Area)),4)
Case_28_506_Mean_LA<-round(mean(as.numeric(Case_28_506_FU_CS$Lumen_Area)),4)
Case_28_598_Mean_LA<-round(mean(as.numeric(Case_28_598_FU_CS$Lumen_Area)),4)
Case_28_599_Mean_LA<-round(mean(as.numeric(Case_28_599_FU_CS$Lumen_Area)),4)
Case_31_501_Mean_LA<-round(mean(as.numeric(Case_31_501_FU_CS$Lumen_Area)),4)
Case_31_502_Mean_LA<-round(mean(as.numeric(Case_31_502_FU_CS$Lumen_Area)),4)
Case_31_503_Mean_LA<-round(mean(as.numeric(Case_31_503_FU_CS$Lumen_Area)),4)
LA_Mean <- mean(c(Case_28_501_Mean_LA,Case_28_502_Mean_LA,Case_28_503_Mean_LA,Case_28_504_Mean_LA,Case_28_505_Mean_LA,Case_28_506_Mean_LA,Case_28_598_Mean_LA,Case_28_599_Mean_LA,Case_31_501_Mean_LA,Case_31_502_Mean_LA,Case_31_503_Mean_LA))
LA_SD <- sd(c(Case_28_501_Mean_LA,Case_28_502_Mean_LA,Case_28_503_Mean_LA,Case_28_504_Mean_LA,Case_28_505_Mean_LA,Case_28_506_Mean_LA,Case_28_598_Mean_LA,Case_28_599_Mean_LA,Case_31_501_Mean_LA,Case_31_502_Mean_LA,Case_31_503_Mean_LA))
LA_Mean_Min <- min(c(Case_28_501_Mean_LA,Case_28_502_Mean_LA,Case_28_503_Mean_LA,Case_28_504_Mean_LA,Case_28_505_Mean_LA,Case_28_506_Mean_LA,Case_28_598_Mean_LA,Case_28_599_Mean_LA,Case_31_501_Mean_LA,Case_31_502_Mean_LA,Case_31_503_Mean_LA))
LA_Mean_Max <- max(c(Case_28_501_Mean_LA,Case_28_502_Mean_LA,Case_28_503_Mean_LA,Case_28_504_Mean_LA,Case_28_505_Mean_LA,Case_28_506_Mean_LA,Case_28_598_Mean_LA,Case_28_599_Mean_LA,Case_31_501_Mean_LA,Case_31_502_Mean_LA,Case_31_503_Mean_LA))

#áreas mínimas lumen
Case_28_501_Min_LA<-min(as.numeric(Case_28_501_FU_CS$Lumen_Area))
Case_28_502_Min_LA<-min(as.numeric(Case_28_502_FU_CS$Lumen_Area))
Case_28_503_Min_LA<-min(as.numeric(Case_28_503_FU_CS$Lumen_Area))
Case_28_504_Min_LA<-min(as.numeric(Case_28_504_FU_CS$Lumen_Area))
Case_28_505_Min_LA<-min(as.numeric(Case_28_505_FU_CS$Lumen_Area))
Case_28_506_Min_LA<-min(as.numeric(Case_28_506_FU_CS$Lumen_Area))
Case_28_598_Min_LA<-min(as.numeric(Case_28_598_FU_CS$Lumen_Area))
Case_28_599_Min_LA<-min(as.numeric(Case_28_599_FU_CS$Lumen_Area))
Case_31_501_Min_LA<-min(as.numeric(Case_31_501_FU_CS$Lumen_Area))
Case_31_502_Min_LA<-min(as.numeric(Case_31_502_FU_CS$Lumen_Area))
Case_31_503_Min_LA<-min(as.numeric(Case_31_503_FU_CS$Lumen_Area))
Min_LA_Mean <- mean(c(Case_28_501_Min_LA,Case_28_502_Min_LA,Case_28_503_Min_LA,Case_28_504_Min_LA,Case_28_505_Min_LA,Case_28_506_Min_LA,Case_28_598_Min_LA,Case_28_599_Min_LA,Case_31_501_Min_LA,Case_31_502_Min_LA,Case_31_503_Min_LA))
Min_LA_SD <- sd(c(Case_28_501_Min_LA,Case_28_502_Min_LA,Case_28_503_Min_LA,Case_28_504_Min_LA,Case_28_505_Min_LA,Case_28_506_Min_LA,Case_28_598_Min_LA,Case_28_599_Min_LA,Case_31_501_Min_LA,Case_31_502_Min_LA,Case_31_503_Min_LA))
Min_LA_Min <- min(c(Case_28_501_Min_LA,Case_28_502_Min_LA,Case_28_503_Min_LA,Case_28_504_Min_LA,Case_28_505_Min_LA,Case_28_506_Min_LA,Case_28_598_Min_LA,Case_28_599_Min_LA,Case_31_501_Min_LA,Case_31_502_Min_LA,Case_31_503_Min_LA))
Min_LA_Max <- max(c(Case_28_501_Min_LA,Case_28_502_Min_LA,Case_28_503_Min_LA,Case_28_504_Min_LA,Case_28_505_Min_LA,Case_28_506_Min_LA,Case_28_598_Min_LA,Case_28_599_Min_LA,Case_31_501_Min_LA,Case_31_502_Min_LA,Case_31_503_Min_LA))
#média dos diâmetros médios do lumen
Case_28_501_Mean_LD<-round(mean(as.numeric(Case_28_501_FU_CS$L_Avg_Diam)),4)
Case_28_502_Mean_LD<-round(mean(as.numeric(Case_28_502_FU_CS$L_Avg_Diam)),4)
Case_28_503_Mean_LD<-round(mean(as.numeric(Case_28_503_FU_CS$L_Avg_Diam)),4)
Case_28_504_Mean_LD<-round(mean(as.numeric(Case_28_504_FU_CS$L_Avg_Diam)),4)
Case_28_505_Mean_LD<-round(mean(as.numeric(Case_28_505_FU_CS$L_Avg_Diam)),4)
Case_28_506_Mean_LD<-round(mean(as.numeric(Case_28_506_FU_CS$L_Avg_Diam)),4)
Case_28_598_Mean_LD<-round(mean(as.numeric(Case_28_598_FU_CS$L_Avg_Diam)),4)
Case_28_599_Mean_LD<-round(mean(as.numeric(Case_28_599_FU_CS$L_Avg_Diam)),4)
Case_31_501_Mean_LD<-round(mean(as.numeric(Case_31_501_FU_CS$L_Avg_Diam)),4)
Case_31_502_Mean_LD<-round(mean(as.numeric(Case_31_502_FU_CS$L_Avg_Diam)),4)
Case_31_503_Mean_LD<-round(mean(as.numeric(Case_31_503_FU_CS$L_Avg_Diam)),4)
Avg_LD_Mean <- mean(c(Case_28_501_Mean_LD,Case_28_502_Mean_LD,Case_28_503_Mean_LD,Case_28_504_Mean_LD,Case_28_505_Mean_LD,Case_28_506_Mean_LD,Case_28_598_Mean_LD,Case_28_599_Mean_LD,Case_31_501_Mean_LD,Case_31_502_Mean_LD,Case_31_503_Mean_LD))
Avg_LD_SD <- sd(c(Case_28_501_Mean_LD,Case_28_502_Mean_LD,Case_28_503_Mean_LD,Case_28_504_Mean_LD,Case_28_505_Mean_LD,Case_28_506_Mean_LD,Case_28_598_Mean_LD,Case_28_599_Mean_LD,Case_31_501_Mean_LD,Case_31_502_Mean_LD,Case_31_503_Mean_LD))
Avg_LD_Min <- min(c(Case_28_501_Mean_LD,Case_28_502_Mean_LD,Case_28_503_Mean_LD,Case_28_504_Mean_LD,Case_28_505_Mean_LD,Case_28_506_Mean_LD,Case_28_598_Mean_LD,Case_28_599_Mean_LD,Case_31_501_Mean_LD,Case_31_502_Mean_LD,Case_31_503_Mean_LD))
Avg_LD_Max <- max(c(Case_28_501_Mean_LD,Case_28_502_Mean_LD,Case_28_503_Mean_LD,Case_28_504_Mean_LD,Case_28_505_Mean_LD,Case_28_506_Mean_LD,Case_28_598_Mean_LD,Case_28_599_Mean_LD,Case_31_501_Mean_LD,Case_31_502_Mean_LD,Case_31_503_Mean_LD))
#lumen excentricity index ((diâmetro máximo-diâmetro mínimo)/Diâmetro máximo)*100
Case_28_501_LEI <- ((as.numeric(Case_28_501_FU_CS$L_Max_Diam)-as.numeric(Case_28_501_FU_CS$L_Min_Diam))/as.numeric(Case_28_501_FU_CS$L_Max_Diam))*100
Case_28_502_LEI <- ((as.numeric(Case_28_502_FU_CS$L_Max_Diam)-as.numeric(Case_28_502_FU_CS$L_Min_Diam))/as.numeric(Case_28_502_FU_CS$L_Max_Diam))*100
Case_28_503_LEI <- ((as.numeric(Case_28_503_FU_CS$L_Max_Diam)-as.numeric(Case_28_503_FU_CS$L_Min_Diam))/as.numeric(Case_28_503_FU_CS$L_Max_Diam))*100
Case_28_504_LEI <- ((as.numeric(Case_28_504_FU_CS$L_Max_Diam)-as.numeric(Case_28_504_FU_CS$L_Min_Diam))/as.numeric(Case_28_504_FU_CS$L_Max_Diam))*100
Case_28_505_LEI <- ((as.numeric(Case_28_505_FU_CS$L_Max_Diam)-as.numeric(Case_28_505_FU_CS$L_Min_Diam))/as.numeric(Case_28_505_FU_CS$L_Max_Diam))*100
Case_28_506_LEI <- ((as.numeric(Case_28_506_FU_CS$L_Max_Diam)-as.numeric(Case_28_506_FU_CS$L_Min_Diam))/as.numeric(Case_28_506_FU_CS$L_Max_Diam))*100
Case_28_598_LEI <- ((as.numeric(Case_28_598_FU_CS$L_Max_Diam)-as.numeric(Case_28_598_FU_CS$L_Min_Diam))/as.numeric(Case_28_598_FU_CS$L_Max_Diam))*100
Case_28_599_LEI <- ((as.numeric(Case_28_599_FU_CS$L_Max_Diam)-as.numeric(Case_28_599_FU_CS$L_Min_Diam))/as.numeric(Case_28_599_FU_CS$L_Max_Diam))*100
Case_31_501_LEI <- ((as.numeric(Case_31_501_FU_CS$L_Max_Diam)-as.numeric(Case_31_501_FU_CS$L_Min_Diam))/as.numeric(Case_31_501_FU_CS$L_Max_Diam))*100
Case_31_502_LEI <- ((as.numeric(Case_31_502_FU_CS$L_Max_Diam)-as.numeric(Case_31_502_FU_CS$L_Min_Diam))/as.numeric(Case_31_502_FU_CS$L_Max_Diam))*100
Case_31_503_LEI <- ((as.numeric(Case_31_503_FU_CS$L_Max_Diam)-as.numeric(Case_31_503_FU_CS$L_Min_Diam))/as.numeric(Case_31_503_FU_CS$L_Max_Diam))*100
LEI_Mean <- mean(c(Case_28_501_LEI,Case_28_502_LEI,Case_28_503_LEI,Case_28_504_LEI,Case_28_505_LEI,Case_28_506_LEI,Case_28_598_LEI,Case_28_599_LEI,Case_31_501_LEI,Case_31_502_LEI,Case_31_503_LEI))
LEI_SD <- sd(c(Case_28_501_LEI,Case_28_502_LEI,Case_28_503_LEI,Case_28_504_LEI,Case_28_505_LEI,Case_28_506_LEI,Case_28_598_LEI,Case_28_599_LEI,Case_31_501_LEI,Case_31_502_LEI,Case_31_503_LEI))
LEI_Min <- min(c(Case_28_501_LEI,Case_28_502_LEI,Case_28_503_LEI,Case_28_504_LEI,Case_28_505_LEI,Case_28_506_LEI,Case_28_598_LEI,Case_28_599_LEI,Case_31_501_LEI,Case_31_502_LEI,Case_31_503_LEI))
LEI_Max <- max(c(Case_28_501_LEI,Case_28_502_LEI,Case_28_503_LEI,Case_28_504_LEI,Case_28_505_LEI,Case_28_506_LEI,Case_28_598_LEI,Case_28_599_LEI,Case_31_501_LEI,Case_31_502_LEI,Case_31_503_LEI))

#média área NIH por caso
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
Min_NIH <- min(c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH))
Max_NIH <- max(c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH))
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
Mean_NIH_Obst <- mean(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))
SD_NIH_Obst <- sd(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))
Min_NIH_Obst <- min(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))
Max_NIH_Obst <- max(c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction))

#tabela por caso
Table_9M <- read_excel(sheet = "Time","DYNA.xlsx")
colnames(Table_9M)<-c("Case","FU_Time_Mts")
Table_9M$Mean_SA <- c(Case_28_501_Mean_SA,Case_28_502_Mean_SA,Case_28_503_Mean_SA,Case_28_504_Mean_SA,Case_28_505_Mean_SA,Case_28_506_Mean_SA,Case_28_598_Mean_SA,Case_28_599_Mean_SA,Case_31_501_Mean_SA,Case_31_502_Mean_SA,Case_31_503_Mean_SA)
Table_9M$Mean_NIH <- c(Case_28_501_Mean_NIH,Case_28_502_Mean_NIH,Case_28_503_Mean_NIH,Case_28_504_Mean_NIH,Case_28_505_Mean_NIH,Case_28_506_Mean_NIH,Case_28_598_Mean_NIH,Case_28_599_Mean_NIH,Case_31_501_Mean_NIH,Case_31_502_Mean_NIH,Case_31_503_Mean_NIH)
Table_9M$NIH_Obstruction<-c(Case_28_501_NIH_Obstruction,Case_28_502_NIH_Obstruction,Case_28_503_NIH_Obstruction,Case_28_504_NIH_Obstruction,Case_28_505_NIH_Obstruction,Case_28_506_NIH_Obstruction,Case_28_598_NIH_Obstruction,Case_28_599_NIH_Obstruction,Case_31_501_NIH_Obstruction,Case_31_502_NIH_Obstruction,Case_31_503_NIH_Obstruction)
#tabela resumo
Summary_FU <- cbind(SA_Mean,SA_SD,Mean_NIH_All_Cases,SD_NIH,Mean_NIH_Obst,SD_NIH_Obst)
row.names(Summary_FU) <- "9M_FU"
head(Table_9M)
write.csv2(Table_9M,file="9M_By_Case_A.csv", sep = ",",  row.names = F)
