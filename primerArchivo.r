#consultar directorio donde estoy
getwd()

#Tipos de vector

Cantidad=c(1,4,5,3,2,3,4)

#desde hasta
Cantidad[2:5]

#borra los elementos de la posicion 3
Cantidad[-3]

#borrar elementos de las posiciones especificas
Cantidad[-c(1,3)]

Frutas= c("Manzanas","Bananos","Uvas")

#identifica que tiene un orden
Satisfacion=factor(c("Alta","Medio","Baja"),levels =c( "Baja","Media","Alta"))

Clasificacion=ifelse(Cantidad>3,"Malo","Bueno")

Estrato=c(1,2,3,6,8)

ifelse(Estrato==1 | Estrato==2,"Bajo",
      ifelse(Estrato==3|Estrato==4,"Medio","Alto"))

#lectura de datos
library(readxl)
Datos <- read_excel("Datos.xlsx", 
                             sheet = "Base")
View(Datos)
#ver columna edad
#Datos$Edad

#obtener los nombres
names(Datos)

#funcion que permite ingresar a los datos importados sin necesidad de poner una u otra vez datos$nombreVariable
attach(Datos)

Edad

#paquetes a usar
#dplyr, perimte transformacion de datos
#readxl para importar datos de excel directamente a r

#funciones importantes
#dim() dimensiondel archivo de datos
#head() primeras filas de los archivos de datos
#tail() ver las ultimas filas
#glimpse() nos permite ver

dim(Datos)
#1470 datos y 23 variables

head(Datos, n = 4)

tail(Datos)

library(dplyr)

#filter(base,condicion)

#empleados con rotacion

filter(Datos,Rotación =="Si")

filter(Datos,Departamento!="Ventas" & Edad > 20)

Datos[1,2]=NA

filter(Datos,is.na(Edad))
filter(Datos,!is.na(Edad))

Datos=mutate(Datos,Clasi_cargo=ifelse(Cargo %in% c("Director_Investigación","Director_Manofactura"),"Director","Otros"))

