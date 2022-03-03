# Carta del proyecto

## Antecedentes empresariales

# Quién es el cliente, en qué ámbito empresarial se encuentra el cliente.
## ¿Qué problemas empresariales se pretenden resolver?

## Alcance
* ¿Qué soluciones de ciencia de datos estamos tratando de construir?
* ¿Qué vamos a hacer?
* ¿Cómo va a ser consumido por el cliente?

## Personal
* ¿Quiénes están en este proyecto?
	* Empresa a cargo del proyecto:
		* Jefe de proyecto
		* PM
		* Científico(s) de datos
		* Director de cuentas
	* Cliente:
		* Administrador de datos
		* Contacto con la empresa
	
## Métricas
* ¿Cuáles son los objetivos cualitativos? (por ejemplo, reducir la fuga de usuarios)
* ¿Cuáles son las métricas cuantificables (por ejemplo, reducir la fracción de usuarios con 4 semanas de inactividad)
* Cuantificar qué mejora de los valores de la métrica es útil para el escenario del cliente (por ejemplo, reducir la fracción de usuarios con inactividad de 4 semanas en un 20%) 
* ¿Cuál es el valor de referencia (actual) de la métrica? (por ejemplo, fracción actual de usuarios con inactividad de 4 semanas = 60%)
* ¿Cómo mediremos la métrica? (por ejemplo, prueba A/B en un subconjunto específico durante un periodo determinado; o comparación del rendimiento después de la implementación con la línea de base)

## Plan
## Fases (hitos), calendario, breve descripción de lo que haremos en cada fase.

## Arquitectura
## Datos
  ## ¿Qué datos esperamos? Datos en bruto en las fuentes de datos del cliente (por ejemplo, archivos on-prem, SQL, Hadoop on-prem, etc.)
* Movimiento de datos desde on-prem a Azure utilizando ADF u otras herramientas de movimiento de datos (Azcopy, EventHub, etc.) para mover
  * Todos los datos, 
  * después de una preagregación en el sistema local,
  * datos muestreados suficientes para la modelización 

* Qué herramientas y recursos de almacenamiento/análisis de datos se utilizarán en la solución, por ejemplo
  * ASA para la agregación de flujos
  * HDI/Hive/R/Python para la construcción de características, agregación y muestreo
  * AzureML para el modelado y la operacionalización del servicio web
* ¿Cómo se consumirá la puntuación o el servicio(s) web operacionalizado(s) (RRS y/o BES) en el flujo de trabajo empresarial del cliente? Si procede, escriba el pseudocódigo de las API de las llamadas al servicio web.
  * ¿Cómo utilizará el cliente los resultados del modelo para tomar decisiones?
  * Canalización del movimiento de datos en producción
  * Realice un diagrama de 1 diapositiva que muestre el flujo de datos de extremo a extremo y la arquitectura de decisiones
    * Si hay un cambio sustancial en el flujo de trabajo del negocio del cliente, haga un diagrama antes/después que muestre el flujo de datos.

## Comunicación
* ¿Cómo nos mantendremos en contacto? ¿Reuniones semanales?
* ¿Quiénes son las personas de contacto de ambas partes?

