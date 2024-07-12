4+8

20 - 8

4 ^ 2

Oficina <- 7
Platzi <- 1
Transporte <- 1.5

Tiempo_al_dia <- Oficina + Platzi + Transporte
Tiempo_al_dia

Corte_1 <- 0.3
Corte_2 <- 0.3
Corte_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0

Nota_c_1 <- Corte_1 * Nota_1
Nota_c_1

Nota_c_2 <- Corte_2 * Nota_2
Nota_c_2

Nota_c_3 <- Corte_3 * Nota_3
Nota_c_3

Nota_Final <- Nota_c_1 + Nota_c_2 + Nota_c_3
Nota_Final

str(mtcars)
class(mtcars$vs)

mtcars$vs = as.logical(mtcars$vs)

mtcars$am = as.logical(mtcars$am)


str(orangeec)

wt <- (mtcars$wt*1000)/2
wt

mtcars.new <- transform(mtcars,wt=wt*1000/2)

tiempo_platzi <- c(25,5,10,15,10)
tiempo_lecturas <- c(30,10,5,10,15)
tiempo_aprendizaje <- tiempo_platzi + tiempo_lecturas

dias_aprendizaje <- c("Lunes", "Marter", "Miercoles", "Jueves", "Viernes")

dias_mas_20min <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

total_tiempo_platzi <- sum(tiempo_platzi)

total_tiempo_lecturas <- sum(tiempo_lecturas)

total_tiempo_adicional <- total_tiempo_platzi + total_tiempo_lecturas

#matriz
tiempo_matrix <- matrix(c(tiempo_platzi, tiempo_lecturas),nrow = 2,byrow=TRUE)

dias <- c("Lunes", "Marter", "Miercoles", "Jueves", "Viernes")
Tiempo <- c("tiempo platzi", "tiempo lecturas")

colnames(tiempo_matrix) <- dias
rownames(tiempo_matrix) <- Tiempo
colSums(tiempo_matrix)

#matriz2
tiempo_matrix2 <- matrix(c(tiempo_platzi, tiempo_lecturas, tiempo_platzi + tiempo_lecturas),nrow = 3 ,byrow=TRUE)

dias2 <- c("Lunes", "Marter", "Miercoles", "Jueves", "Viernes")
Tiempo2 <- c("tiempo platzi", "tiempo lecturas", "tiempo total")

colnames(tiempo_matrix2) <- dias2
rownames(tiempo_matrix2) <- Tiempo2

#final_matrix

final_matrix <-rbind(tiempo_matrix,c(10,15,30,5,0))
final_matrix

colSums(final_matrix)

final_matrix[1,5]

orangeec[orangeec$GDP.PC>=15000,]

























































