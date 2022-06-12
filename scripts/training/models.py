from training.types.models import LayerKind, NN_Prediction 
from training.types.hparams import (LSTM_HParams,RNN_HParams, GRU_HParams)
from tensorflow.keras.layers import GRU, Dense, Input, SimpleRNN,LSTM
from pydantic import BaseModel

class ModelProxy:
    layer_table = {
    LayerKind.LSTM: [LSTM, LSTM_HParams],
    LayerKind.RNN: [SimpleRNN,RNN_HParams],
    LayerKind.GRU: [GRU, GRU_HParams]}

    def __init__(self) -> None:
        self.layer_kind: LayerKind=LayerKind.RNN 
        self.hparams: BaseModel = RNN_HParams()

    def add_layer_kind(self, layer_kind: LayerKind) -> "ModelProxy": 
        self.layer_kind = layer_kind 
        return self

    def add_hparams(self, *args, **kwargs) -> "ModelProxy": 
        self.hparams = self.layer_table[self.layer_kind][1](*args, **kwargs)
        return self

    def resolve(self):# -> NN_Prediction:
        model_class, _ = self.layer_table[self.layer_kind] 
        model = model_class(**self.hparams.dict()) 
        return model