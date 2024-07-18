#EDA Scatter plot mtcars
plot(mtcars$mpg ~ mtcars$cyl, xlab="cilindros", ylab = "millas por galón",
     main = "Relación cilindros y millas por galón")

plot(mtcars$mpg ~ mtcars$hp, xlab="caballos de fuerza", ylab = "millas por galón",
     main = "Relación caballos de fuerza y millas por galón")

#EDA orangeec

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab = "Inversión educación (%PIB)",
     ylab = "Desempleo",
     main = "Relación inversión en educación y desempleo")


plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab = "Aporte economia naranja al PIB(%)",
     ylab = "PIB per cápita",
     main = "Relación economía naranja y pib per cápita")

#histograma mtcars qplot
qplot(mtcars$hp, 
      geom="histogram",
      xlab="caballos de fuerza",
      main="Carros según caballos de fuerza")

ggplot(mtcars, aes(x=hp))+
  geom_histogram()+ 
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+ 
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# otra forma de escribir el codigo anterior,(agregando caracteristicas)

ggplot()+geom_histogram(data=mtcars,
                        aes(x=hp), fill="blue", color= "red",
                        binwidth = 20)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  xlim(c(80,280))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# orangeec

ggplot()+geom_histogram(data=orangeec,
                        aes(x=GDP.PC), fill="blue", color= "red",
                        binwidth = 2000)+
  labs(x="pib per cápita", y="Cantidad de paises",
       title="PIB per cápita en paises latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+geom_histogram(data=orangeec,
                        aes(x=Creat.Ind...GDP), fill="blue", color= "red",
                        binwidth = 1)+
  labs(x="Aporte economia naranja al pib(%)", y="Cantidad de paises",
       title="Contribución economia naranga al PIB en paises latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#boxplot
boxplot(mtcars$hp,
        ylab = "caballos de fuerza",
        main = "Caballos de fuerza en carros mtcars")

#
ggplot (mtcars, aes(x=as.factor(cyl), y=hp, fill = cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x="cilindros", y= "caballos de fuerza",
       title = "Caballos de fuerza según cilindros en mtcars")
theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
ggplot(mtcars,aes(x=am, y=mpg, fill=am))+
  geom_boxplot()+
  labs(x="Tipo de caja", y= "millas por galón",
       title = "Millas por galón según tipo de caja-mtcars")
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), 
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#
mtcars$am <- factor(mtcars$am, levels=c(TRUE,FALSE),
                    labels = c("Manual", "Automático"))

#correción

library(ggplot2)

ggplot(mtcars, aes(x = factor(am), y = mpg, fill = factor(am))) +
  geom_boxplot() +
  labs(
    x = "Tipo de caja",
    y = "Millas por galón",
    title = "Millas por galón según tipo de caja - mtcars"
  ) +
  theme(
    legend.position = "none",
    panel.background = element_blank(), 
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )

# ggplot
economy <- mean (orangeec$GDP.PC)
economy

# 
orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy, 
                   "Por debajo promedio pib per capita",
                   "Sobre-Arriba promedio pib per cápita"))

#
ggplot(orangeec, aes(x=Strong_economy, y=Creat.Ind...GDP,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de país", y="Aporte economía naranja al pib",
       title="Aporte economía naranja en pib paises latam con alto y bajo pib per cápita")+
  theme(
    legend.position = "none",
    panel.background = element_blank(), 
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )

#

ggplot(orangeec, aes(x=Strong_economy, y=Internet.penetration...population,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de país", y="Penetración de internet(%)",
       title="Penetración de internet en paises latam con alto y bajo pib per cápita")+
  theme(
    legend.position = "none",
    panel.background = element_blank(), 
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )

# scatter plot con ggplot en mtcars - dos variables
ggplot(mtcars, aes(hp,mpg))+
  geom_point()+
  labs(x="caballos fuerza", y="millas por galón",
       title = "Relación caballos de fuerza y millas por galón")
theme(
  legend.position = "none",
  panel.background = element_blank(), 
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank()
)  

#
ggplot(mtcars, aes(wt,hp))+
  geom_point()+
  labs(x="peso", y="potencia",
       title = "Relación peso-potencia")
theme(
  legend.position = "none",
  panel.background = element_blank(), 
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank()
)  

# 4 vaiables
ggplot(mtcars, aes(hp,qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(s="caballos de fuerza", y="tiempo en 1/4 milla",
       title = "caballos-velocidad segûn cilindraje y tipo de caja")

# Scatter plot orangeec
ggplot(orangeec, aes(Internet.penetration...population,Creat.Ind...GDP))+
  geom_point(aes(color=factor(Strong_economy), size = GDP.Growth..))+
  labs(x="Penetración Internet", y="Aporteeconomia naranja PIB", 
       title = "Internet y aporte economia naranja según economia y 
       crecimiento pib")

# 
my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP, label = row.names(orangeec)))+
  geom_point()+
  labs(x="Penetración internet", y="Aporte economia naranja",
       title = "Penetración Internet y aporte economía naranja")

my_graph

p = ggplotly(my_graph)

p








