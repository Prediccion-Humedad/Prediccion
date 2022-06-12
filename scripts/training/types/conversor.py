import tensorflow as tf
from pandas import DataFrame
from sklearn.model_selection import train_test_split
import warnings
warnings.filterwarnings('ignore')

warnings.filterwarnings('ignore')

def Dataframe_to_Tensor(Data:DataFrame)->tf.Tensor:
    lista=list(tf.constant(Data, dtype="float32"))
    return tf.data.Dataset.from_tensor_slices(lista).map(lambda seq: (tf.reshape(seq[:-1], (-1, 1)), seq[-1])).batch(64, drop_remainder=True)

class Obtener_DataBase:

    def __init__(self, data:DataFrame)->None:
        self.test=None
        self.train=None
        self.datos=data[['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']]
        
    
        
    def split_(self)->tf.Tensor:
        print(type(self.datos))
        self.test,self.train=train_test_split(self.datos, test_size=0.3,random_state=1984)
        test=Dataframe_to_Tensor(self.test)
        train=Dataframe_to_Tensor(self.train)
        return test,train
