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
from sklearn.model_selection import train_test_split
from tensorflow.keras.metrics import MeanAbsolutePercentageError
from tensorflow.python.framework.ops import disable_eager_execution
from tensorflow.keras.layers import GRU, Dense, Input, SimpleRNN,LSTM

tf.compat.v1.enable_eager_execution()


# In[2]:


get_ipython().run_line_magic('matplotlib', 'inline')
plt.style.use("ggplot")
# Seleccionamos una semilla para los RNG
tf.random.set_seed(1984)
np.random.seed(1984)
print("Num GPUs Available: ", len(tf.config.list_physical_devices('GPU')))


# In[3]:


class GruForcaster(Model):
    def __init__(self, m_recurrent, n_recurrent, activation, *args, **kwargs):
        super(GruForcaster, self).__init__(*args, **kwargs)
        self.recurrent_layer = m_recurrent(
            n_recurrent, activation=activation,
            return_sequences=False,
            recurrent_initializer="glorot_uniform"
            )
        self.output_layer = Dense(1, activation="linear")
    
    def call(self, inputs):
        intermediate = self.recurrent_layer(inputs)
        output = self.output_layer(intermediate)
        return output


# In[4]:


def preprocess(BD):
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)


# # 

# # Carga de Datos

# In[5]:


Data=pd.read_csv('BDHumidity-processed.csv')
Data.head()


# In[6]:


train,test = train_test_split(Data, test_size=0.3,ran)


# In[7]:


Bm3 = train[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values
Bm3Test = test[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values


# In[8]:


dataset3 = preprocess(Bm3)
dataset3Test = preprocess(Bm3Test)


# # Modelo Long short-term memory

# In[9]:


input_ = Input(shape=(7, 1))
output = GruForcaster(LSTM, 32, activation="relu")(input_)
model_LSTM = Model(input_, output)
model_LSTM.summary()


# In[10]:


model_LSTM.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_LSTM.fit(dataset3,epochs=300, validation_data=dataset3Test)


# In[11]:


fig=plt.figure(dpi=150)
plt.plot(model_LSTM.history.history["loss"],label='Training Loss')
plt.plot(model_LSTM.history.history["val_loss"],'k',label='Validation Loss')
plt.legend()
plt.xlabel("Época"); plt.ylabel("Pérdida en entrenamiento")
plt.title('Training and Validation Loss')
plt.show()


fig=plt.figure(dpi=150)
epochs = range(1, len(model_LSTM.history.history['mean_absolute_percentage_error']) +1)
plt.plot(model_LSTM.history.history['mean_absolute_percentage_error'], 'b',label = 'Training MSE')
plt.plot(model_LSTM.history.history['val_mean_absolute_percentage_error'], 'g', label = 'Validation MSE')
plt.title('Training and Validation Accuracy')
plt.legend()
plt.show()


# In[12]:


keras_model_path = "C:/temp/model_LSTM"
model_LSTM.save(keras_model_path)


# # Modelo SimpleRNN

# In[17]:


input_ = Input(shape=(7, 1))
output = GruForcaster(SimpleRNN, 32, activation="relu")(input_)
model_RNN = Model(input_, output)
model_RNN.summary()


# In[18]:


model_RNN.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_RNN.fit(dataset3,epochs=300, validation_data=dataset3Test)


# In[19]:


fig=plt.figure(dpi=150)
plt.plot(model_RNN.history.history["loss"],label='Training Loss')
plt.plot(model_RNN.history.history["val_loss"],'k',label='Validation Loss')
plt.legend()
plt.xlabel("Época"); plt.ylabel("Pérdida en entrenamiento")
plt.title('Training and Validation Loss')
plt.show()


fig=plt.figure(dpi=150)
epochs = range(1, len(model_RNN.history.history['mean_absolute_percentage_error']) +1)
plt.plot(model_RNN.history.history['mean_absolute_percentage_error'], 'b',label = 'Training MSE')
plt.plot(model_RNN.history.history['val_mean_absolute_percentage_error'], 'g', label = 'Validation MSE')
plt.title('Training and Validation Accuracy')
plt.legend()
plt.show()


# In[20]:


keras_model_path = "C:/temp/model_RNN"
model_RNN.save(keras_model_path)


# # Modelo Gated recurrent unit

# In[21]:


input_ = Input(shape=(7, 1))
output = GruForcaster(GRU, 32, activation="relu")(input_)
model_GRU = Model(input_, output)
model_GRU.summary()


# In[22]:


model_GRU.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_GRU.fit(dataset3,epochs=300, validation_data=dataset3Test)


# In[23]:


fig=plt.figure(dpi=150)
plt.plot(model_GRU.history.history["loss"],label='Training Loss')
plt.plot(model_GRU.history.history["val_loss"],'k',label='Validation Loss')
plt.legend()
plt.xlabel("Época"); plt.ylabel("Pérdida en entrenamiento")
plt.title('Training and Validation Loss')
plt.show()


fig=plt.figure(dpi=150)
epochs = range(1, len(model_GRU.history.history['mean_absolute_percentage_error']) +1)
plt.plot(model_GRU.history.history['mean_absolute_percentage_error'], 'b',label = 'Training MSE')
plt.plot(model_GRU.history.history['val_mean_absolute_percentage_error'], 'g', label = 'Validation MSE')
plt.title('Training and Validation Accuracy')
plt.legend()
plt.show()


# In[24]:


keras_model_path = "C:/temp/model_GRU"
model_GRU.save(keras_model_path)


# In[13]:


# model3.model.evaluate(dataset3Test)


# In[14]:


# def xytest(dataset):  
#   for X, y in dataset.take(30):
#     X_test = X
#     y_test = y
#   return X_test,y_test

# def pred(model,X):
#   return model.predict(X)


# In[15]:


# X_test3, y_test3 = xytest(dataset3Test)
# ypred3 = pred(model3.model,X_test3)
# ytest3= y_test3.numpy()


# In[16]:


# # Plot the actual values
# fig=plt.figure(dpi=120)
# plt.plot(y_test3[15:25],color='c', label = 'actual')
# plt.plot(ypred3[15:25],color='green',label = 'prediction')
# plt.xticks(rotation = '60'); 
# plt.legend()
# # Graph labels
# plt.xlabel('Muestra'); plt.ylabel('Humedad Relativad de Zona ME-304(%hr)'); plt.title('Actual y valores estimados por el Modelo 3');

