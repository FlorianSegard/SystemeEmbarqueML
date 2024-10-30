**A machine learning model in a web service mini project**


To run the docker:

docker-compose up --build

Once the docker is up, you can either do a curl request or use your best request sender like postman to got either on http://localhost:8114/predict if you are running it on your own machine or you can use the VM if it isn't down,
You need to put on the body in raw datas stuff for your prediction as an example:
[12000, 3, 1]
