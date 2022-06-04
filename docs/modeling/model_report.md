# Reporte final del modelo
* Despues de revisar los desempeños de los modelos:

![image](https://user-images.githubusercontent.com/105468175/172017050-d6b100b3-cdca-40bc-b7ca-3881bc8c273c.png)

 * **Se selecciona el modelo GRU como modelo final.**

* Como resultado de proceso de entrenamiento se generaun archivo con el modelo entrenado listo para usarse:

- [modeloGru](https://github.com/Prediccion-Humedad/Prediccion/tree/main/packagename/models/model_GRU)

- [Modulo para consumir el modelo](https://github.com/jonatan-parra/mlds6/blob/621bdbac0fd579941bc744e0f0bfa7e839733fb8/digitallistening/models/model.py)
 
## Datos
La fuente de datos es un archivo de texto plano ubicado en: https://drive.google.com/file/d/1qC4ef53pWlaKuV89QWTmj_eHlYUI7hrf/view que se obtiene mediante el siguiente [script](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing.py)


## Caracteristicas
El dataset se transforma a un tensor de (64,7,1)

### Modelo para extraccion de caracteristicas

![image](https://user-images.githubusercontent.com/105468175/172017342-40ff5b62-31fb-42ec-986d-a63988a3096d.png)

ver [Modulo de extraccion de caracteristicas](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing.py)

## Algoritmos utilizados

### Selección de hiperparametros para el modelo GRU

Model : GRU
Activation : "relu"
n_recurrent : 32
learning_rate : 1e-4


### Modelo para generacion de predicción
GRU
![image](https://user-images.githubusercontent.com/105468175/172017531-229c877f-8cfc-4f68-af72-170a5110183f.png)


ver [Modulo de entrenamiento](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/training/Modeling.py)

### Modelo para transformacion y visualizacion de clusters


## Resultados

### Visualizacion de la predicción del modelo 3

![image](https://user-images.githubusercontent.com/105468175/172017599-c8eb1494-8457-4b3a-9fa4-e20f7adea9ab.png)
ver [Modulo de evaluación](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/evaluation/Evaluation.py)
