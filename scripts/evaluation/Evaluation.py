import numpy as np
import pandas as pd
import tensorflow as tf
import matplotlib.pyplot as plt
import tensorflow_datasets as tfds
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.metrics import MeanAbsolutePercentageError
from sklearn.metrics import mean_absolute_error,mean_squared_error
from tensorflow.keras.layers import GRU, Dense, Input, SimpleRNN,LSTM

get_ipython().run_line_magic('matplotlib', 'inline')
plt.style.use("ggplot")
tf.random.set_seed(1984)
np.random.seed(1984)

def preprocess(BD):    
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)

def xytest(dataset,num):  
    for X, y in dataset.take(num):
        X_test = X
        y_test = y
    return X_test,y_test

def pred(model,X):
    return model.predict(X)

def Grafico(y_t,y_p,title):
    fig=plt.figure(dpi=120)
    plt.plot(y_t,color='c', label = 'actual')
    plt.plot(y_p,color='green',label = 'prediction')
    plt.xticks(rotation = '60'); 
    plt.legend()
    plt.xlabel('Muestra'); 
    plt.ylabel('Humedad Relativad de Zona ME-304(%hr)'); 
    plt.title(title)#)=('Actual y valores estimados por el Modelo 3');

# Carga de DB Test

V_MAE,V_MSE=[],[]
Data_tets=pd.read_csv('Dataset_test.csv')
Data_tets.head()
Bm3Test = Data_tets[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']]
dataset3Test = preprocess(Bm3Test)
X_test, y_test = xytest(dataset3Test,500)


# Modelo Long short-term memory

model_LSTM=tf.keras.models.load_model("C:/temp/model_LSTM")
model_LSTM.evaluate(dataset3Test)
ypred = pred(model_LSTM,X_test)
Grafico(y_test,ypred,'Actual y valores estimados Modelo \nLong short-term memory')
V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))


# Modelo SimpleRNN

model_RNN=tf.keras.models.load_model("C:/temp/model_RNN")
model_RNN.evaluate(dataset3Test)
ypred = pred(model_RNN,X_test)
Grafico(y_test,ypred,'Actual y valores estimados Modelo \nSimpleRNN')
V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))

# Modelo Gated Recurrent Unit

model_GRU=tf.keras.models.load_model("C:/temp/model_GRU")
model_GRU.evaluate(dataset3Test)
ypred = pred(model_GRU,X_test)
Grafico(y_test,ypred,'Actual y valores estimados Modelo \nGated Recurrent Unit')
V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))

# Evaluacion Metricas

modelos=['Long short-term memory','SimpleRNN','Gated Recurrent Unit']
Metricas=pd.DataFrame({'Model':modelos,'MAE':V_MAE,'MSE':V_MSE})
Metricas.to_csv("Resultados Metricas Modelos.csv")
Metricas.head()
