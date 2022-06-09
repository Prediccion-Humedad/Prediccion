
import numpy as np
import pandas as pd

#pd.set_option("max_columns", 100)


def Upload_Dicc(name):
    with open(name,'r') as archivo:
        separador,dicc = '\t',{}
        for linea in archivo:
            key, value = linea.split(separador)
            dicc[key.strip()] = value.strip()
    return dicc



Data=pd.read_csv('BDHumidity.csv')

Dicc_est=Upload_Dicc('Diccionario Estaciones.txt')
Dicc_deltat=Upload_Dicc('Diccionario Deltat.txt')


Data_filter=(Data
             .rename(columns=Dicc_est)
             .filter(regex=(r'\A\w{2}\W?\w{3}|\A\w{4,7}'))
             .drop(index=0)
             .reset_index(drop=True)
            )


time_ini,time_end,TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304=[],[],[],[],[],[],[],[],[],[]
rango=[TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304]
apuntador=0
for i in Data_filter.index:
    try:
        time_ini.append(Data_filter.loc[i,'Date'])
        time_end.append(Data_filter.loc[i,'Time'])
        for j,k in enumerate(Dicc_deltat.keys()):
            apuntador=i+int(Dicc_deltat[k])
            rango[j].append(Data_filter.loc[apuntador,k])
    except:
        break;
time_ini.pop(-1)
time_end.pop(-1)

for i in range(len(rango)-1):
    rango[i].pop(-1)

Data_Final=pd.DataFrame({'Date':time_ini,'Time':time_end,'TE-201':TE_201,'ME-202':ME_202,'TE-202':TE_202,'ME-203':ME_203,'TE-203':TE_203,
                         'TE-302':TE_302,'ME-302':ME_302,'ME-304':ME_304})
Data_Final=Data_Final.set_index(['Date','Time'])


# Data_Final.to_csv('BDHumidity-processed.csv')



def preprocess(BD):
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)


dataset1 = preprocess( Data_Final[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values)
