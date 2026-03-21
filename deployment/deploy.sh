#!/usr/bin/env bash

mkdir -p data

curl -o data/createGarageToml.sh https://raw.githubusercontent.com/uol-esis/civicsage/33-add-independent-install-script/deployment/data/createGarageToml.sh
chmod +x data/createGarageToml.sh
data/createGarageToml.sh



curl -o docker-compose.yaml https://raw.githubusercontent.com/uol-esis/civicsage/33-add-independent-install-script/deployment/docker-compose.yaml


touch .env
echo $'CIVICSAGE_S3_SECRETKEY=<replace me>\nCIVICSAGE_S3_ACCESSKEY=<replace me>' >> .env
 
