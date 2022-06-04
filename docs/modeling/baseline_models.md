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

	* Descripción o imágenes del gráfico de flujo de datos
  		* Si es AzureML, enlace a:
    		* Experimento de entrenamiento
    		* Flujo de trabajo de puntuación
	* ¿Qué aprendiz(es) se utilizó(n)?
	* Hiperparámetros del aprendizaje

Se prueban tres modelos con redes recurrentes obteniendo las siguientes características de cada 1.

	![image]()

## Resultados (Rendimiento del modelo)
* Gráficos ROC/Lift, AUC, R^2, MAPE, según proceda
* Gráficos de rendimiento para los barridos de parámetros, si procede

## Comprensión del modelo

* Importancia de las variables (importancia)

## Conclusión y debates para los próximos pasos

* Se puede observar viabilidad en la predicción de la humedad con el modelo generado.

* Con los datos obtenidos el modelo no está sobre ajustao. 

* El tiempo podría añadirse como una característica adicional del modelo, sin embargo no fue necesario.

* Con el fin de retroalimentar el modelo se podría agregar los setpoints de las variables de control del PLC utilizado para la obtención de los datos.