#!/bin/bash
# shell script para criar as imagens docker do backend e do database e envia para o repositorio do dockerhub

# build da imagem do backend
echo "Criando imagem do backend"
docker build -t aislan/projeto-backend:1.0 backend/.
# build da imagem do database
echo "Criando imagem do database"
docker build -t aislan/projeto-database:1.0 database/.

# envia as imagens para o repositorio do dockerhub
echo "Enviando imagens para o repositorio do dockerhub"
docker push aislan/projeto-backend:1.0
docker push aislan/projeto-database:1.0

# cria os servicos no kubernetes
echo "Criando servicos no kubernetes"
kubectl apply -f services.yml

# cria os deployments no kubernetes
echo "Criando deployments no kubernetes"
kubectl apply -f deployment.yml
