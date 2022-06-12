import numpy as np
import pandas as pd
import tensorflow as tf
import tensorflow_datasets as tfds
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam
from sklearn.model_selection import train_test_split
from tensorflow.keras.metrics import MeanAbsolutePercentageError
from tensorflow.python.framework.ops import disable_eager_execution
from tensorflow.keras.layers import GRU, Dense, Input, SimpleRNN,LSTM

#tf.compat.v1.enable_eager_execution()

plt.style.use("ggplot")
tf.random.set_seed(1984)
np.random.seed(1984)


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


def preprocess(BD):
    data = list(tf.constant(BD, dtype="float32"))  
    return tf.data.Dataset.from_tensor_slices(data).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)

# Carga de Datos

Data=pd.read_csv('BDHumidity-processed.csv')
train,test = train_test_split(Data, test_size=0.3,ran)
Bm3 = train[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values
Bm3Test = test[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']].values
dataset3 = preprocess(Bm3)
dataset3Test = preprocess(Bm3Test)

# Modelo Long short-term memory
input_ = Input(shape=(7, 1))
output = GruForcaster(LSTM, 32, activation="relu")(input_)
model_LSTM = Model(input_, output)
model_LSTM.summary()

model_LSTM.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_LSTM.fit(dataset3,epochs=300, validation_data=dataset3Test)

keras_model_path = "C:/temp/model_LSTM"
model_LSTM.save(keras_model_path)

# Modelo SimpleRNN

input_ = Input(shape=(7, 1))
output = GruForcaster(SimpleRNN, 32, activation="relu")(input_)
model_RNN = Model(input_, output)
model_RNN.summary()

model_RNN.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_RNN.fit(dataset3,epochs=300, validation_data=dataset3Test)

keras_model_path = "C:/temp/model_RNN"
model_RNN.save(keras_model_path)

# Modelo Gated recurrent unit

input_ = Input(shape=(7, 1))
output = GruForcaster(GRU, 32, activation="relu")(input_)
model_GRU = Model(input_, output)
model_GRU.summary()

model_GRU.compile(loss="mse", optimizer=tf.optimizers.Adam(learning_rate=1e-4),metrics=[MeanAbsolutePercentageError()])
model_GRU.fit(dataset3,epochs=300, validation_data=dataset3Test)

keras_model_path = "C:/temp/model_GRU"
model_GRU.save(keras_model_path)
