# Informe del modelo de referencia

## Enfoque analítico
* Cuál es la definición del objetivo
	*	El objetivo general es la predicción de la humedad del sensor ME-304 el cual controla el porcentaje de humedad que tiene la pasta en un punto especifico del proceso de fabricación de pasta alimenticia. 
* Cuáles son las entradas

| Variables | Definición                                       |
|-----------|--------------------------------------------------|
| TE-201    | Valores de temperatura en °C del sensor 1 PT 100 |
| ME-202    | Valores de humedad realtiva de la zona 1 en %hr  |
| TE-202    | Valores de temperatura en °C del sensor 2 PT 100 |
| ME-203    | Valores de humedad realtiva de la zona 2 en %hr  |
| TE-202    | Valores de temperatura en °C del sensor 3 PT 100 |
| TE-302    | Valores de temperatura en °C de

* ¿Qué tipo de modelo se ha construido?
	*	Se construye un tensor de tamaño (64,7,1) float32
	
		 ![image](https://user-images.githubusercontent.com/44857719/171947322-07fd590e-01db-4ab7-b154-5f44ed914c08.png)
	*
## Descripción del modelo

* Modelos y parámetros

* Se prueban tres modelos con redes recurrentes obteniendo las siguientes características de cada 1.

* Modelo 1

![image](https://user-images.githubusercontent.com/105468175/172016697-3c570c68-f676-4e3b-954c-3b71f27f0ac9.png)

* Modelo 2

![image](https://user-images.githubusercontent.com/105468175/172016725-5f773e7d-deb6-4140-8e66-10158dc40138.png)

* Modelo 3

![image](https://user-images.githubusercontent.com/105468175/172016747-4ade576d-20a9-4e51-b211-1418643ac44a.png)


## Resultados (Rendimiento del modelo)
* Modelo 1

![image](https://user-images.githubusercontent.com/105468175/172016834-faccff1b-e063-4cfa-b24e-3fa942593285.png)

* Modelo 2

![image](https://user-images.githubusercontent.com/105468175/172016854-ad02fb32-8f68-4323-beb3-c4e7683d61f9.png)

* Modelo 3

![image](https://user-images.githubusercontent.com/105468175/172016872-5635ea72-f862-44c9-8860-ec44358a1391.png)



## Conclusión y debates para los próximos pasos

* Se puede observar viabilidad en la predicción de la humedad con el modelo generado.

* Con los datos obtenidos el modelo no está sobre ajustao. 

* El tiempo podría añadirse como una característica adicional del modelo, sin embargo no fue necesario.

* Con el fin de retroalimentar el modelo se podría agregar los setpoints de las variables de control del PLC utilizado para la obtención de los datos.
