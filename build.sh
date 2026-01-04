#!/bin/bash

eval $(minikube -p minikube docker-env)

docker build -t yandex-sprint-10-account:1.0.0 ./account
docker build -t yandex-sprint-10-blocker:1.0.0 ./blocker
docker build -t yandex-sprint-10-cash:1.0.0 ./cash
docker build -t yandex-sprint-10-exchange:1.0.0 ./exchange
docker build -t yandex-sprint-10-exchange-generator:1.0.0 ./exchange-generator
docker build -t yandex-sprint-10-front-ui:1.0.0 ./front-ui
docker build -t yandex-sprint-10-gateway:1.0.0 ./gateway
docker build -t yandex-sprint-10-notification:1.0.0 ./notification
docker build -t yandex-sprint-10-transfer:1.0.0 ./transfer

eval $(minikube -p minikube docker-env -u)