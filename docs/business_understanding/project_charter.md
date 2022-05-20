# Carta del proyecto

## Antecedentes empresariales
---
>En el proceso productivo de una empresa de alimentos se tiene una línea dedicada a la fabricación de pasta larga. El proceso de secado de pasta consiste en la perdida de %humedad del producto a lo largo de un tunel de secado.
El producto es puesto en contacto con aire húmedo a temperatura y humedad controlada, lo que actúa como fluido secante, logrando la "cocción de la pasta" gracias a este proceso.

El control de humedad y temperatura se realiza a traves de :
-	**5 sensores de Temperatura PT 100**, estos sensores envian señales en mV que son procesadas por un PLC y transformadas su equivalencia en °C, los sensores estan distribuidos a lo largo del Tunel de Secado.
-	**4 sensores de humedad relativa**, estos sensores envian señales en mA que son procesadas por un PLC y transforadas a su equivalencia %Hr, los sensores estan distribuidos a los largo del tunel.
-	La linea cuenta con un sistema de control retroalimentando, en su mayor parte con lazos de control PID y on-off , sin embargo el proyecto no toma en cuenta esta retroalimentación sino que; se realiza un corrimiento temporal de las señales para poder realizar una predicción.




La siguiente figura, muestra la distribución de los sensores de humedad y tempratura:
- Temperatura : TE-201, TE-202, TE-203, TE-302, TE-305
- Humedad : ME-202, ME-203, ME-302, ME-304


La pasta ingresa al horno cada 35.2 seg , moviendose linealmente a traves del tunel , si se toma como referencia el inicio de la linea en 0 min , los sensores se encontrarían:

| Zona   | Tiempo min |
|--------|------------|
| TE-201 | 26         |
| ME-202 | 39         |
| TE-202 | 55         |
| ME-203 | 63         |
| TE-203 | 70         |
| TE-302 | 140        |
| ME-302 | 154        |
| ME-304 | 228        |



<img src = "https://i.ibb.co/brrcSB7/PL.png" alt = "Distribución de Sensores Humedad-Temperatura" width = "100%">  </img>
[![Miniatura tomada de YouTube](https://i.ytimg.com/vi/Lox4kIJY248/maxresdefault.jpg)](https://www.youtube.com/watch?v=Lox4kIJY248 "Nuestra Planta")

# Quién es el cliente, en qué ámbito empresarial se encuentra el cliente.
El cliente es una empresa que se encuentra en el sector de fabricacion de productos de consumo masivo, cuenta con plantas de producción de alimentos con procesos estandarizados y nivel de automatización medio, el proyecto se enfocará en la planta de producción de pasta seca (pasta alimenticia)

## ¿Qué problemas empresariales se pretenden resolver?
El proceso de fabricación de pastas es continuo, la planta trabaja durante 6 dias las 24 horas, los valores de humedad y/o temperatura deben encontrarse en los rangos establecidos para cada receta, por ejemplo: un valor bajo de Humedad en el sensor 1 *ME-202* se verá reflejado 24 minutos después en el sensor *ME-203*, predecir la forma en que cambiaran estos valores puede llevar al operador de la linea a tomar decisiones más rapidas que permitan garantizar el correcto secado de la pasta dentro de la linea y disminuir la merma (perdida de producto y/o producto no conforme) del proceso; la disminución de la merma se traduce en un aumento de kilos conformes producidos e incremento de los rendimientos de materias primas (disminución en el costo x kilo producido).

## Alcance
* ¿Qué soluciones de ciencia de datos estamos tratando de construir?
 * Modelo de predicción con redes neuronales
* ¿Qué vamos a hacer?
 * Desplegar API que permita al usuario ingresar las variables de control de la linea de secado para predicir la humedad en una zona determinada.
* ¿Cómo va a ser consumido por el cliente?
  * Cargando datos a la API
  * Visulizando el dashboard
## Personal
* ¿Quiénes están en este proyecto?
	* Empresa a cargo del proyecto:
		* Jefe de proyecto : Juan Lara
		* PM : Juan Malagon
		* Científico(s) de datos
      * David Berrio (daberriop@unal.edu.co)
      * Ivan Dario Ayala (idayalaf@unal.edu.co) 
      * Oscar Danilo Guzmán (odguzmanv@unal.edu.co )
		* Director de cuentas
	* Cliente:
		* Administrador de datos : David Berrio
		* Contacto con la empresa : David Berrio

## Métricas
* ¿Cuáles son los objetivos cualitativos? (por ejemplo, reducir la fuga de usuarios)
  * Aumentar la eficiencia y control de la linea de producción.
* ¿Cuáles son las métricas cuantificables (por ejemplo, reducir la fracción de 
  * Disminución de producto no conforme asociada a fallas en el proceso de secado.
* Cuantificar qué mejora de los valores de la métrica es útil para el escenario del cliente (por ejemplo, reducir la fracción de usuarios con inactividad de 4 semanas en un 20%)
  * Reducción de 50% de producto no conforme asociado a fallas
  * Reducción de tiempos de espera para determinar si los ajustes realizados a las variables de control producirán los resultados esperados.
* ¿Cuál es el valor de referencia (actual) de la métrica? (por ejemplo, fracción actual de usuarios con inactividad de 4 semanas = 60%)
  * Promedio de kilos perdidos en 110 Horas de Producción 680 Kg de 75.900 Kg de materia prima total utilizada, un equivalente a 0.8% del total, $476 dolares ($0.7 dolares por Kg) siendo ese el promedio de perdidas en fallas cada semana.
  * Promedio de tiempo de espera para que la linea exprese el cambio en las variables: 1.5 Horas.
* ¿Cómo mediremos la métrica? (por ejemplo, prueba A/B en un subconjunto específico durante un periodo determinado; o comparación del rendimiento después de la implementación con la línea de base)
  * Asertividad del modelo para predecir (Crossvalidation). 
  * Aumento de control y trazabilidad de los ajustes de variables de control en la linea.

## Plan
## Fases (hitos), calendario, breve descripción de lo que haremos en cada fase.
* Ver planeación de proyecto : https://docs.google.com/spreadsheets/d/1T1lumQtfezNWdQAcxXsTjc9vGQZlYwBG/edit?usp=sharing&ouid=102119502543851244550&rtpof=true&sd=true
## Arquitectura
# Datos
* ¿Qué datos esperamos? Datos en bruto en las fuentes de datos del cliente (por ejemplo, archivos on-prem, SQL, Hadoop on-prem, etc.)
  * Datos en texto plano en formato csv con registro de variables extraidos de PLC de linea de producción.

* Qué herramientas y recursos de almacenamiento/análisis de datos se utilizarán en la solución, por ejemplo
  * Proveedor de servicios en la nueve -> 
  * Framework API REST -> 
  * Lenguaje de Programacion -> **pyhton**
  * Investigacion y generacion de modelos -> **Google colab y jupyter notebooks**
  * Provedor de base de datos -> 
  * Dsahboard -> 
* ¿Cómo se consumirá la puntuación o el servicio(s) web operacionalizado(s) (RRS y/o BES) en el flujo de trabajo empresarial del cliente? Si procede, escriba el pseudocódigo de las API de las llamadas al servicio web.
  * El usuario va a disponer de una API para ingresar las variables de control de la linea de secado para predicir la humedad en una zona determinada
  * El usuario va a poder visualizar el resultado del analisis en un dashboard conectado a la base de datos
  
<img src = "https://i.ibb.co/gvT5py0/MLDS6-GROUP6.png" alt = "Diagrama de flujo de datos de extremo a extremo y la arquitectura de decisiones" width = "100%">  </img>




## Comunicación
* ¿Cómo nos mantendremos en contacto? ¿Reuniones semanales?
  * Usar el tablero kanban de github, Miro y/o JIRA y hacer reuniones semanales para revision y planeacion de tareas.
* ¿Quiénes son las personas de contacto de ambas partes?
  * David Berrio
