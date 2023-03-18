FROM python:3.10-slim-buster
LABEL maintainer="samuel edited practice <>"
LABEL version="0.1"
LABEL description="Notebook and data (.csv file) to provide a summary \
                  of the total medals won by participating countries \
                  in the 2008 Summer Olympics."

RUN apt-get update && apt-get install -y build-essential

WORKDIR /data

COPY . /data

RUN pip3 install numpy && \
    pip3 install pandas seaborn jupyter

EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


