set -e

echo "Para essa instalação, é necessário ter o Git e o Docker instalados..."

mkdir -p odontoprev-spring-api
cd odontoprev-spring-api

echo "Clonando repositório do projeto..."

rm -rf odontoprev-spring

git clone https://github.com/IvesJc/odontoprev-spring.git

cp ../Dockerfile ./odontoprev-spring/Dockerfile
cp ../docker-compose.yml ./docker-compose.yml

docker compose up -d
