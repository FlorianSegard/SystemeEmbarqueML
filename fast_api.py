from typing import Union
from fastapi import FastAPI
from model_utils import predict, load_model
import uvicorn

app = FastAPI()

model = load_model()


@app.get("/predict")
def predict_endpoint(data: list[float]):
    if len(data) != 3:
        return {"error": "Input must be a list of three values: [size, bedrooms, garden]"}

    prediction = predict(model, data)
    return {"predicted_price": round(prediction[0], 2)}


if __name__ == "__main__":
    uvicorn.run("fast_api:app", host="0.0.0.0", port=8114)
