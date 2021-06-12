set -e

cd db

echo "Downloading data set..."
# TODO: fix security and remove --insecure flag.
curl --insecure https://files.grouplens.org/datasets/movielens/ml-latest-small.zip --output ml-latest-small.zip

unzip ml-latest-small.zip
