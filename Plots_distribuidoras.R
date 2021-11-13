rm(list=ls())
library(ggplot2)

# Pasta de trabalho
setwd(dirname(rstudioapi::getSourceEditorContext()$path)) 
## Vc também pode indicar a pasta contendo o arquivo BASE_CONSOLIDADA_PBL.csv ##
## setwd("C:\\exemplo")

#### ENTRADA DE DADOS ####
dados2000_2018<-read.table("BASE_CONSOLIDADA_PBL.csv",header=T,sep=";",na.strings="ND",stringsAsFactors = F)
for (i in 5:ncol(dados2000_2018))
{
  dados2000_2018[,i]<-as.numeric(dados2000_2018[,i])
}
remove(i)
#### Seleção de dados de empresas específicas ####
COELCE_00_18 <-dados2000_2018[dados2000_2018$EMPRESA=="COELCE",]
CO_COELCE_00_18 <- na.omit(data.frame(COELCE_00_18[,c("ANO", "X18.1.Custos_Operacionais", "X18.2.Pessoal", "X18.3.Materiais", "X18.4.Serv_Terceiros", "X18.7.Outros")]))
ELEKTRO_00_18 <-dados2000_2018[dados2000_2018$EMPRESA=="ELEKTRO",]
CO_ELEKTRO_00_18 <- na.omit(data.frame(ELEKTRO_00_18[,c("ANO", "X18.1.Custos_Operacionais", "X18.2.Pessoal", "X18.3.Materiais", "X18.4.Serv_Terceiros", "X18.7.Outros")]))
#### Gráficos ####
ggplot(data = CO_COELCE_00_18, aes(x= ANO)) +
  geom_line(aes(y= X18.2.Pessoal, color = "Pessoal")) +
  geom_line(aes(y= X18.3.Materiais, color = "Materiais")) +
  geom_line(aes(y= X18.4.Serv_Terceiros, color = "Serv. Terceiros" )) +
  geom_line(aes(y= X18.7.Outros , color = "Outros" )) +
  scale_colour_manual("", breaks = c("Pessoal", "Materiais", "Serv. Terceiros", "Outros"), values = c("blue", "green", "red", "purple")) +
  labs(y= " ", x= " ") +
  theme_bw()
ggplot(data = CO_ELEKTRO_00_18, aes(x= ANO)) +
  geom_line(aes(y= X18.2.Pessoal, colour = "Pessoal")) +
  geom_line(aes(y= X18.3.Materiais, colour = "Materiais")) +
  geom_line(aes(y= X18.4.Serv_Terceiros, colour = "Serv. Terceiros")) +
  geom_line(aes(y= X18.7.Outros , colour = "Outros")) +
  scale_colour_manual("", breaks = c("Pessoal", "Materiais", "Serv. Terceiros", "Outros"), values = c("blue", "green", "red", "purple")) +
  labs(y = "", x= " ") +
  theme_bw()