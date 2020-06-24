## Prerequisite:
* minikube
* docker
* kubectl


## Argo architecture:

![alt text](https://argoproj.github.io/static/overview-afb23c68c9e6ba23a42bb8059c2dab30-f1931.jpeg)
### Setup Argo on k8s using minikube commands:

* Start minikube cluster:
    ```bash
    minikube start --driver=docker
    ```
* Cluster info:
    ```bash
    kubectl cluster-info
    ```
* Then create a namespace for our Argo deployment:
    ```bash
    kubectl create namespace argo
    ```
* Install Argo and minio:
    ```bash
    kubectl apply -n argo -f install.yaml
    ```
*  Port forward for Argo and Minio:
    ```bash
    kubectl port-forward -n argo svc/argo-server 8080:2746 &
    kubectl port-forward -n argo svc/minio 9000:9000 &
    ```
* Start minikube dashboard:
    ```bash
    minikube dashboard
    ```
### Setup Argo on k8s using minikube script:
* Start using script:
    ```bash
    script/start.sh
    ```