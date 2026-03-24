#!/bin/sh
set -e

if ! command -v curl >/dev/null 2>&1
then
    echo "curl could not be found" >&2
    exit 1
fi

if ! command -v docker >/dev/null 2>&1
then
    echo "docker could not be found" >&2
    exit 1
fi
if ! command -v docker >/dev/null 2>&1 || ! docker compose version >/dev/null 2>&1
then
    echo "Error: 'docker compose' is not available" >&2
    echo "Please install Docker with compose plugin" >&2
    exit 1
fi

if ! command -v docker >/dev/null 2>&1 || ! docker model version >/dev/null 2>&1
then
    echo "Error: 'docker model' is not available" >&2
    echo "Please install Docker with model plugin" >&2
    exit 1
fi


docker model pull ai/mxbai-embed-large
docker model pull ai/smollm2

echo "Warning the default models are very small and therefore produce low quality results. Please consider replacing the models with suitable alternatives. You can find more information about the models in the documentation."

mkdir -p data

curl -o data/createGarageToml.sh https://raw.githubusercontent.com/uol-esis/civicsage/main/deployment/data/createGarageToml.sh
chmod +x data/createGarageToml.sh
./data/createGarageToml.sh

curl -o data/configure.sh https://raw.githubusercontent.com/uol-esis/civicsage/main/deployment/data/configure.sh
chmod +x data/configure.sh

curl -o docker-compose.yaml https://raw.githubusercontent.com/uol-esis/civicsage/main/deployment/docker-compose.yaml

touch .env
printf 'CIVICSAGE_S3_SECRETKEY=<replace me>\nCIVICSAGE_S3_ACCESSKEY=<replace me>\n' >> .env

docker compose up -d garage garage_config db frontend && docker compose logs -f garage_config

echo "Please add the generated keys to the .env file"
printf "Press enter to continue after configuration"
read dummy

docker compose up -d backend

echo "Deployment complete. You can access the frontend at http://localhost"
echo "Please consult the documentation for further configuration and usage instructions."
echo "To stop the deployment, run 'docker compose down'"
