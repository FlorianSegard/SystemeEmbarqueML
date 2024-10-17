import streamlit as st
import joblib

model = joblib.load("../regression.joblib")

st.title("Price pred APP")

size = st.number_input("Enter the size of the house (in sq ft)", min_value=100, max_value=10000, step=10)
bedrooms = st.number_input("Enter the number of bedrooms", min_value=1, max_value=10, step=1)
garden = st.number_input("Enter 1 if the house has a garden, otherwise 0", min_value=0, max_value=1, step=1)

if st.button("Predict Price"):
    input_data = [[size, bedrooms, garden]]
    prediction = model.predict(input_data)
    
    st.write(f"The predicted price of the house is: ${prediction[0]:,.2f}")