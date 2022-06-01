#!/usr/bin/env python
# coding: utf-8

# In[20]:


import numpy as np
import pandas as pd
import tensorflow as tf
from datetime import datetime,timedelta


# In[2]:


pd.set_option("max_columns", 100)


# In[3]:


def fecha_MDA(value):
    date=[]
    for i in value:
#         print(i)
        try:
            date.append(datetime.strptime(str(i), "%Y-%d-%m %H:%M:%S").strftime('%d-%m-%Y'))
        except:
            date.append(i.replace('/','-'))
#         print(type(date[-1]),date[-1])
    return date


# In[4]:


def Upload_Dicc(name):
    with open(name,'r') as archivo:
        separador,dicc = '\t',{}
        for linea in archivo:
            key, value = linea.split(separador)
            dicc[key.strip()] = value.strip()
    return dicc


# # 

# In[5]:


Data=pd.read_excel('Base De Datos Humedad PLC.xlsx')
# Data['Date']=fecha_MDA(Data['Date'])
# Data['Time']=Data['Time'].astype(str)
# Data.insert(0,'Date_Time',pd.to_datetime(Data['Date']+'-'+Data['Time'],format='%m-%d-%Y-%H:%M:%S'))
# Data=Data.drop(columns=['Date','Time'])
Data.head()


# In[6]:


Data.shape


# In[7]:


Dicc_est=Upload_Dicc('Diccionario Estaciones.txt')
Dicc_deltat=Upload_Dicc('Diccionario Deltat.txt')


# In[8]:


Data_filter=(Data
             .rename(columns=Dicc_est)
             .filter(regex=(r'\A\w{2}\W?\w{3}|\A\w{4,7}'))
             .drop(index=0)
             .reset_index(drop=True)
            )
Data_filter.head()


# In[9]:


Data_filter.shape


# In[11]:


time_ini,time_end,TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304=[],[],[],[],[],[],[],[],[],[]
rango=[TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304]
apuntador=0
# for i in range(1000):
for i in Data_filter.index:
    try:
        time_ini.append(Data_filter.loc[i,'Date'])
        time_end.append(Data_filter.loc[i,'Time'])
        for j,k in enumerate(Dicc_deltat.keys()):
            apuntador=i+int(Dicc_deltat[k])
#             print(j,k,apuntador)
            rango[j].append(Data_filter.loc[apuntador,k])
    except:
        break;
time_ini.pop(-1)
time_end.pop(-1)


# In[12]:


for i in range(len(rango)-1):
    rango[i].pop(-1)
#     print(len(rango[i]))


# In[16]:


Data_Final=pd.DataFrame({'Date':time_ini,'Time':time_end,'TE-201':TE_201,'ME-202':ME_202,'TE-202':TE_202,'ME-203':ME_203,'TE-203':TE_203,
                         'TE-302':TE_302,'ME-302':ME_302,'ME-304':ME_304})
Data_Final=Data_Final.set_index(['Date','Time'])


# In[17]:


Data_Final.tail()


# In[15]:


Data_Final.shape


# In[19]:


# Data_Final.to_excel('sfsdsdd.xlsx')


# In[21]:


def preprocess(BD):
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)


# In[26]:


dataset1 = preprocess( Data_Final[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values)


# In[27]:


dataset1


# In[31]:


for X, y in dataset1.take(1):
    print("X")
    print(X)
    print("y")
    print(y)


# In[ ]:




