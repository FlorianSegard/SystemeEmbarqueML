FROM python:3.12

WORKDIR /app

RUN mkdir -p /app/model

COPY ./model/regression.joblib /app/model/
COPY ./fast_api.py /app
COPY ./model_utils.py /app

RUN pip install --no-cache-dir fastapi[standard] uvicorn joblib scikit-learn

EXPOSE 8114

CMD ["python3", "fast_api.py"]