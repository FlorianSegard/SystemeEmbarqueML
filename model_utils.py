import joblib


def load_model(): # you could add inputs if you want to load different models
    return joblib.load("model/regression.joblib")

def predict(model, data: list[float]):
    return model.predict([data])