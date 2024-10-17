FROM python:3.12

WORKDIR /app

COPY ./model/regression.joblib /app
COPY ./fast_api.py /app
COPY ./model_utils.py /app

RUN pip install --no-cache-dir fastapi uvicorn joblib

EXPOSE 8000

CMD ["fastapi", "dev", ".\fast_api.py"]