#!/usr/bin/env python
# coding: utf-8

# In[1]:


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


# In[2]:


get_ipython().run_line_magic('matplotlib', 'inline')
plt.style.use("ggplot")
# Seleccionamos una semilla para los RNG
tf.random.set_seed(1984)
np.random.seed(1984)
print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))


# In[3]:


def preprocess(BD):    
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)


# In[4]:


def xytest(dataset,num):  
    for X, y in dataset.take(num):
        X_test = X
        y_test = y
#     print(X_test,y_test)
    return X_test,y_test


# In[5]:


def pred(model,X):
    return model.predict(X)


# In[6]:


def Grafico(y_t,y_p,title):
    # Plot the actual values
    fig=plt.figure(dpi=120)
    plt.plot(y_t,color='c', label = 'actual')
    plt.plot(y_p,color='green',label = 'prediction')
    plt.xticks(rotation = '60'); 
    plt.legend()
    # Graph labels
    plt.xlabel('Muestra'); 
    plt.ylabel('Humedad Relativad de Zona ME-304(%hr)'); 
    plt.title(title)#)=('Actual y valores estimados por el Modelo 3');


# # 

# # Carga de DB Test

# In[7]:


Data_tets=pd.read_csv('Dataset_test.csv')
Data_tets.head()


# In[8]:


Bm3Test = Data_tets[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']]
dataset3Test = preprocess(Bm3Test)


# In[9]:


X_test, y_test = xytest(dataset3Test,500)


# In[10]:


V_MAE,V_MSE=[],[]


# # Modelo Long short-term memory

# In[11]:


model_LSTM=tf.keras.models.load_model("C:/temp/model_LSTM")


# In[12]:


model_LSTM.evaluate(dataset3Test)


# In[13]:


ypred = pred(model_LSTM,X_test)


# In[14]:


Grafico(y_test,ypred,'Actual y valores estimados Modelo \nLong short-term memory')


# In[15]:


V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))


# # Modelo SimpleRNN

# In[16]:


model_RNN=tf.keras.models.load_model("C:/temp/model_RNN")


# In[17]:


model_RNN.evaluate(dataset3Test)


# In[18]:


ypred = pred(model_RNN,X_test)


# In[19]:


Grafico(y_test,ypred,'Actual y valores estimados Modelo \nSimpleRNN')


# In[20]:


V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))


# # Modelo Gated Recurrent Unit

# In[21]:


model_GRU=tf.keras.models.load_model("C:/temp/model_GRU")


# In[22]:


model_GRU.evaluate(dataset3Test)


# In[23]:


ypred = pred(model_GRU,X_test)


# In[24]:


Grafico(y_test,ypred,'Actual y valores estimados Modelo \nGated Recurrent Unit')


# In[25]:


V_MAE.append(mean_absolute_error(y_test,ypred))
V_MSE.append(mean_squared_error(y_test,ypred))


# # Evaluacion Metricas

# In[26]:


modelos=['Long short-term memory','SimpleRNN','Gated Recurrent Unit']
Metricas=pd.DataFrame({'Model':modelos,'MAE':V_MAE,'MSE':V_MSE})
Metricas.head()


# In[ ]:




