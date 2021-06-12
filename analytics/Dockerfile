FROM ubuntu:latest

# TODO: replace with something like FROM ubuntu:xenial-20210429 
# this will improve stability


RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3 python3-pip python3-dev
RUN pip3 -q install pip --upgrade

COPY requirements.txt .
RUN pip3 install -r requirements.txt

RUN mkdir /etc/jupyter
COPY jupyter_notebook_config.py /etc/jupyter/jupyter_notebook_config.py

RUN mkdir /root/notebooks

EXPOSE 8888/tcp

CMD jupyter notebook

