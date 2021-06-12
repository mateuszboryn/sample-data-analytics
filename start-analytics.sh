
docker kill analytics; docker rm analytics

set -e

docker run --name analytics -p 8888:8888 -v D:/WorkingCopies/sample-data-analytics/notebooks://notebooks -d analytics

