# Definicion de datos y caracteristicas
## Fuentes de datos brutos

| Nombre del conjunto de datos | Ubicación original                        | Ubicación de destino | Herramientas de movimiento de datos/Scripts | Enlace al informe |
|------------------------------|-------------------------------------------|----------------------|---------------------------------------------|-------------------|
| BDHumidity.csv               | [Datos extraido de PLC linea de producción](https://drive.google.com/file/d/1qC4ef53pWlaKuV89QWTmj_eHlYUI7hrf/view?usp=sharing) | Prediccion/docs/data/ | downloadFromGDrive.py            | https://github.com/Prediccion-Humedad/Prediccion/blob/main/docs/data/data_summary.md           |

* BDHumidity.csv. La información inicial es proporcionada por el cliente. Archivos planos en formato csv compartidos via mail extraidos de PLC.



## Processed Data
| Processed Dataset Name | Input Dataset(s)   | Data Processing Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: |
| BDHumidity.csv | BDHumidity-processed  |[Preprocessing.py](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing.py) | [Preprocessing Report](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing-report.pdf)|

* dataset BDHumidity se aplican Regex para eliminar algunos caracteres especiales (r'\A\w{2}\W?\w{3}|\A\w{4,7}')) , se renombran las etiquetas usando el Diccionario Estaciones.txt y se seleccionan las características que se usaran.
* dataset Data_filter se aplican desplazamiento de tiempo usando el diccionario Dicc_deltat
* dataset Data_Final se genera dataframe con las caracterísitcas que se usaran

| Features |
|----------|
| TE-201   |
| ME-202   |
| TE-202   |
| ME-203   |
| TE-203   |
| TE-302   |
| ME-302   |
| ME-304   |

*  Se genera BDHumidity-processed.csv

## Feature Sets

| Feature Set Name | Input Dataset(s)   | Feature Engineering Tools/Scripts | Link to Report |
| ---:| ---: | ---: | ---: |
| dataset1 | [BDHumidity-processed.csv](https://drive.google.com/file/d/1-aJ3Gg6BjiO3rtpjQY_PibhNMZ7MEyqC/view?usp=sharing) | [Preprocessing.py](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing.py) |[Preprocessing Report](https://github.com/Prediccion-Humedad/Prediccion/blob/main/scripts/preprocessing/Preprocessing-report.pdf) Pag 4-6  |

* Se genera tensor de shape=(64, 7, 1) aplicando la funcion preprocess

