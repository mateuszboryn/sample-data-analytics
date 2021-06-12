# sample-data-analytics

This repo shows a few sample queries on movies DB.
Docker-compose starts up 2 services:
 - PostgreSQL DB container
 - Jupyter Notebook container

## Download data

Before building images, data must be downloaded.
Please run `download-data.sh` script.

## Start docker-compose stack

Use command

    docker-compose up
    
Then, in a few seconds DB and Jupyter notebooks will start up.
You can access it via http://localhost:8888

## Results

In Jupyter navigate to `/notebooks/queries.ipynb` and run it cell by cell.


## Debug individual containers

In case of any problem, containers can be built and run separately. 

    # builds only db
    docker-compose build db
    
    
    # builds only analytics
    docker-compose build analytics


    # run only db
    docker-compose run db
    
    # run only analytics
    docker-compose run analytics
    
