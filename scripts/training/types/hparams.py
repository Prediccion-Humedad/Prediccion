from pydantic import BaseModel 
from typing import Optional

class LSTM_HParams(BaseModel):
    units: int=32
    activation: str ="relu" 
    kernel_initializer: Optional[str] = "glorot_uniform" 
    dropout: Optional[float] = 0.0

class RNN_HParams(BaseModel):
    units: int=32
    activation: str ="relu" 
    kernel_initializer: Optional[str] = "glorot_uniform" 
    dropout: Optional[float] = 0.0

class GRU_HParams(BaseModel):
    units: int=32
    activation: str ="relu" 
    kernel_initializer: Optional[str] = "glorot_uniform" 
    dropout: Optional[float] = 0.0
