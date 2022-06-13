from argparse import ArgumentParser
from training.database import HumidityDataLoader
from training.models import ModelProxy 
from training.types.models import LayerKind
from training.types.conversor import Obtener_DataBase
import mlflow
import tensorflow as tf
import warnings
warnings.filterwarnings('ignore')


def make_parser() -> ArgumentParser: 
    parser = ArgumentParser() 
    parser.add_argument("--Type_RNN", type=str,required=True,help="Options: LSTM,RNN,GRU") 
    parser.add_argument("--units", type=int,required=True,help="Number of Neurons in layer") 
    parser.add_argument("--activation", type=str,required=True,help="Activation function to use") 
    parser.add_argument ("--kernel_initializer", type=str,required=False,help="Regularizer function applied to the kernel weights matrix") 
    parser.add_argument("--dropout",type=float,default=0.0,help="Fraction of the units to drop for the linear transformation of the inputs")
    parser.add_argument("--learning_rate",type=float,default=1e-4,help="Modulate how the learning rate of your optimizer changes over time")
    parser.add_argument("--optimizer",type=str,default='Adam',help="arguments required for compiling a Keras model")
    return parser
 

def main():
    parser = make_parser() 
    args = parser.parse_args()
    dataset = (HumidityDataLoader().add_path("/mnt/hgfs/Linux/BDHumidity-processed.csv").load().get_data())
    print(type(dataset))
    test,train=Obtener_DataBase(dataset).split_()
    print(test,train)

if __name__ == "__main__" :
    exit(main())