#!/usr/bin/env bash

docker model pull ai/mxbai-embed-large
docker model pull ai/smollm2

mkdir -p data

curl -o data/createGarageToml.sh https://raw.githubusercontent.com/uol-esis/civicsage/33-add-independent-install-script/deployment/data/createGarageToml.sh
chmod +x data/createGarageToml.sh
data/createGarageToml.sh

curl -o data/configure.sh https://raw.githubusercontent.com/uol-esis/civicsage/33-add-independent-install-script/deployment/data/configure.sh
chmod +x data/configure.sh

curl -o docker-compose.yaml https://raw.githubusercontent.com/uol-esis/civicsage/33-add-independent-install-script/deployment/docker-compose.yaml


touch .env
echo $'CIVICSAGE_S3_SECRETKEY=<replace me>\nCIVICSAGE_S3_ACCESSKEY=<replace me>' >> .env
 
docker compose up -d garage garage_config db frontend && docker compose logs -f garage_config

echo "Please add the generated keys to the .env file"
read -p "Press enter to continue after configuration"

docker compose up -d backend
