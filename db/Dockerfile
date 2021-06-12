FROM postgres:latest

# TODO: replace with something like FROM postgres:13.3
# this will improve stability

COPY import.sql /docker-entrypoint-initdb.d/import.sql
COPY ml-latest-small /ml-latest-small
