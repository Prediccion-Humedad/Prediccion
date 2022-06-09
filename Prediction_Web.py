import numpy as np
import pandas as pd
import tensorflow as tf
from tensorflow.keras.models import Model
from PIL import Image
import matplotlib.pyplot as plt
import streamlit as st

#Cargar modelo
model_GRU=tf.keras.models.load_model("model_GRU")

def main():
    #titulo
    st.title('Predicción De Humedad Linea De Fabricación')
    #titulo de sidebar
    st.sidebar.header('Variables de Entrada')
    #Función para generar los parámetros de entrada al modelo en el sidebar
    def user_input_parameters():
        TE201 = st.sidebar.number_input('Valor de Temperatura TE-201')
        ME202 = st.sidebar.number_input('Valor de Humedad ME-202')
        TE202 = st.sidebar.number_input('Valor de Temperatura TE-202')
        ME203 = st.sidebar.number_input('Valor de Humedad ME-203')
        TE203 = st.sidebar.number_input('Valor de Temperatura TE-203')
        TE302 = st.sidebar.number_input('Valor de Temperatura TE-302')
        ME302 = st.sidebar.number_input('Valor de Temperatura ME-302')

        data = {'TE-201':TE201,
                'ME-202': ME202,
                'TE-202': TE202,
                'ME-203': ME203,
                'TE-203': TE203,
                'TE-302': TE302,
                'ME-302': ME302,               

                }
        features = pd.DataFrame(data, index=["Value"])
        return features 

    df = user_input_parameters()
    st.subheader('User Input Parameters')
    st.subheader('Gated Recurrent Unit Model')
    st.write(df)
    #Generación de tensor
    def tensor_model():
        test_tf = np.reshape(df.values[0], (1,7,1))
        tensortest= tf.convert_to_tensor(test_tf, dtype=tf.float32)
        return tensortest
    test = tensor_model()
    def pred(model,X):
        return model.predict(X)
    # Generando predicción
    if st.button('RUN'):
        
        st.success(f"La humedad en la zona Me-304 dentro de 74 min sera de {pred(model_GRU,test)[0,0]} %Hr")
        #Graficar proceso de secado-predicción
        df_graf=df.copy()
        df_graf[7] = pred(model_GRU,test)[0,0]
        fig, ax = plt.subplots(figsize= (6, 1.5))
        markers_on = [7]
        label_x = ['TE-201', 'ME-202', 'TE-202', 'ME-203', 'TE-203', 'TE-302','ME-302','ME-304']
        plt.plot(label_x,np.reshape(df_graf.values , (8,1)), '--o',markevery=markers_on)
        plt.title("Variación de Humedad/temperatura Secado", fontsize=13);
        st.pyplot(fig)

     #Grafica de linea de fabriación
    image = Image.open("PLDiagrama.png")
    st.image(image, caption='Linea de fabricación')
    
 #Example for test x= [63.965027,91.662498,74.764984,83.300003,77.328552,79.603699,69.456253	] , y= #Real 77.256248   

    

if __name__ == '__main__':
    main()
    
