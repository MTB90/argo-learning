#!/bin/bash

minikube start --driver=docker
kubectl create namespace argo
kubectl apply -n argo -f install.yaml

sleep 30
kubectl port-forward -n argo svc/argo-server 8080:2746 &
kubectl port-forward -n argo svc/minio 9000:9000 &