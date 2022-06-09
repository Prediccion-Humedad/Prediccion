
#import numpy as np
from argparse import Namespace
import pandas as pd

def Upload_Dicc(name)-> Namespace:
        with open(name,'r') as archivo:
            separador,dicc = '\t',{}
            for linea in archivo:
                key, value = linea.split(separador)
                dicc[key.strip()] = value.strip()
        return dicc

class Upload_Data:
    def __init__(self, file_in:str,file_out:str) -> None:
        self.file_in=file_in
        self.file_out=file_out
        self.Data=pd.read_csv(self.file_in)
        self.Dicc_est=Upload_Dicc('Diccionario Estaciones.txt')
        self.Dicc_deltat=Upload_Dicc('Diccionario Deltat.txt')
         
    def Transform(self)->pd.DataFrame:
        Data_filter=(self.Data
        .rename(columns=self.Dicc_est)
        .filter(regex=(r'\A\w{2}\W?\w{3}|\A\w{4,7}'))
        .drop(index=0)
        .reset_index(drop=True)
        )
        return(Data_filter) 

    def filter_(self,Data_filter:pd.DataFrame)->pd.DataFrame:
        time_ini,time_end,TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304=[],[],[],[],[],[],[],[],[],[]
        rango=[TE_201,ME_202,TE_202,ME_203,TE_203,TE_302,ME_302,ME_304]
        apuntador=0
        for i in Data_filter.index:
            try:
                time_ini.append(Data_filter.loc[i,'Date'])
                time_end.append(Data_filter.loc[i,'Time'])
                for j,k in enumerate(self.Dicc_deltat.keys()):
                    apuntador=i+int(self.Dicc_deltat[k])
                    rango[j].append(Data_filter.loc[apuntador,k])
            except:
                break;
        time_ini.pop(-1)
        time_end.pop(-1)
        for i in range(len(rango)-1):
            rango[i].pop(-1)
        Data_Final=pd.DataFrame({'Date':time_ini,'Time':time_end,'TE-201':TE_201,'ME-202':ME_202,'TE-202':TE_202,'ME-203':ME_203,'TE-203':TE_203,'TE-302':TE_302,'ME-302':ME_302,'ME-304':ME_304})
        Data_Final=Data_Final.set_index(['Date','Time'])
        Data_Final.to_csv(self.file_out)
        return Data_Final