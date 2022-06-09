# **Documentación API predictionhumity**

La API se desplegó en el servicio en la nube de Heroku , el ingreso a la API se puede realizar desde el siguiente enlace : [API](https://predictionhumity.herokuapp.com/)

## **Descripción**
La API permite al usuario ingresar los valores de los sensores de Humedad/Temperatura, estos datos son transformados en tensores que pueden ser ingresados al modelo GRU generando la predicción del valor de Humedad ME-304 de la linea de producción y la gráfica del comportamiento de Humedad/Temperatura de la linea.

## Interfaz API
La interfaz de usuario es intuitiva y esta compuesta por dos secciones :
* Variables de Entrada (Inputs)
* Predicción De Humedad Linea De Fabricación (Predicción)
### Variables de Entrada (Inputs)
En esta sección el usuario ingresa los valores de los sensores:
| Sensor |
|--------|
| TE-201 |
| ME-202 |
| TE-202 |
| ME-203 |
| TE-203 |
| TE-302 |
| ME-302 |

El usuario debe ingresar los valores en los campos que inicialmente se encuentran en *0.00* 

![image](https://user-images.githubusercontent.com/105468175/172882861-fc16dbb9-aabe-4f25-bfae-0ba7ab435823.png)
### Variables de Entrada (Inputs)
En esta sección el usuario podra visualizar los datos ingresados en un datraframe que resumirá las variables que se usaran como caractéristicas para realizar la predicción.

Al ejecutar el boton **RUN** la aplicación generará:
* Predicción de Humedad de la zona 304
* Gráfica de Variación de Humedad/Temperatura secado , el último punto en la gráfica corresponde a la predicción generada por el modelo.
![image](https://user-images.githubusercontent.com/105468175/172884090-75e6469a-d21f-4679-9c7f-c9f100dd5d76.png)

### Interfaz completa API
La interfaz completa de la API se puede observar en al siguiete gráfica:

![image](https://user-images.githubusercontent.com/105468175/172884307-05430fda-6348-43a0-9076-3e8967bc378d.png)

  

