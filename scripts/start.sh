#!/bin/bash

echo Create k8s cluster:
minikube start --driver=docker

echo Create new namespace argo:
kubectl create namespace argo

echo Apply all changes argo/mino:
sleep  15
kubectl apply -n argo -f install.yaml


echo Setup port forwarding for mino an argo server:
sleep 60
kubectl port-forward -n argo svc/argo-server 8080:2746 &
kubectl port-forward -n argo svc/minio 9000:9000 &

