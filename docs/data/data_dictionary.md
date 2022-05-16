# Diccionario de datos

A continuación se describen en el conjunto de tablas que se usarán a lo largo del proyecto Predicción de humedad de linea de fabricación de pasta seca.

# BDHumidity

El dataset utilizado es un dataset propio de una **Planta de Fabricación de Pasta Seca** . El conjunto de datos es extraido del PLC después de aplicar un corrimiento de tiempo, los datos corresponden a la Semana 15 de fabricación de pasta de la linea de pasta larga 

El conjunto de datos cuenta con la fecha y hora (esta muestra es tomada por el PLC cada minuto) y los valores reales para los 4 sensores de temperatura y 4 sensores de Humedad, no se toma encuenta el sensor #5 del horno debido a que el valor del sensor ME-304 no depende directamente de este  :


## Tabla 1 BDHumidity

Variables de control extraidas de PLC del 21/03/2022 18:00:56 hasta el 25/03/2022 10:11:59, los valores son muestreados con una ventana de tiempo de 1 min.

| Columna  | Tipo    | Descripción                                                                                                                                                                                        |
|----------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| datatime | Object  | Fecha y hora en la que el PLC tomó el valor de humedad/temperatura.|
| TE-201   | Float64 | Valores de temperatura en °C del sensor 1 PT 100                                                                                                                                                   |
| ME-202   | Float64 | Valores de humedad realtiva de la zona 1 en %hr                                                                                                                                                    |
| TE-202   | Float64 | Valores de temperatura en °C del sensor 2 PT 100                                                                                                                                                   |
| ME-203   | Float64 | Valores de humedad realtiva de la zona 2 en %hr                                                                                                                                                    |
| TE-202   | Float64 | Valores de temperatura en °C del sensor 3 PT 100                                                                                                                                                   |
| TE-302   | Float64 | Valores de temperatura en °C del sensor 3 PT 100                                                                                                                                                   |
| ME-302   | Float64 | Valores de humedad realtiva de la zona 3 en %hr                                                                                                                                                    |
| ME-304   | Float64 | Valores de humedad realtiva de la zona 4 en %hr                                                                                                                                                    |
