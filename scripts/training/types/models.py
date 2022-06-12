from typing import Protocol, Optional 
from numpy import ndarray as Array
from enum import Enum, auto

class NN_Prediction(Protocol):

    def fit(self, X: Array, y: Optional[Array])->"NN_Prediction":
        ...
    def predict(self, X: Array) -> Array:
        ...

class LayerKind(Enum):
    LSTM=auto()
    RNN=auto()
    GRU=auto()