import pandas as pd
from abc import ABC, abstractmethod
from pandas import DataFrame

class AbstractDataLoader(ABC): 
    data: DataFrame 
    path: str
    name: str

    def add_path(self, path: str) -> "AbstractDataLoader": 
        self.path = path 
        return self

    def get_data(self) -> DataFrame: 
        return self.data

    @abstractmethod
    def export(self, path: str) -> "AbstractDataLoader":
        ...

    @abstractmethod
    def load(self) -> "AbstractDataLoader":
        ...

    def __repr__(self) -> str:
            return f"{self.name} (\npath={self .path}\ndata={str (self .data)})"

    def __str___(self) -> str:
            return self.__repr___()

class HumidityDataLoader(AbstractDataLoader):
    name = "HumidityDataLoader"

    def __init__(self):
        self.data = DataFrame([]) 
        self.path = ""
    
    def export(self, path: str) -> "HumidityDataLoader":
        self.data.to_parquet(path) 
        return self
    
    def load(self) -> "HumidityDataLoader":
        self.data = DataFrame(pd.read_csv(self.path, index_col=0)) 
        return self