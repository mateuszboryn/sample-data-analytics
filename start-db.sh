

docker kill db; docker rm db

set -e

docker run --name db -e POSTGRES_PASSWORD=pass -p 5432:5432 -d db

