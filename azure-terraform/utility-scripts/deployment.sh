#!/bin/bash

#az aks get-credentials --name dev-aks-cluster --resource-group dev

image_tag=7

cd /Users/techo-admin/Documents/azure-terraform/spring-boot-hello-world

az --version

az acr build --image hello-world:$image_tag --registry appregistryterraform --file Dockerfile .

cd /Users/techo-admin/Documents/azure-terraform/kubernetes-resources/helm-charts

helm upgrade --install --debug hello-world-app --namespace dev ./generic-chart/ --values ../dev/ms/values.yaml --set container_properties.image.tag=$image_tag --kube-context=dev-aks-cluster

