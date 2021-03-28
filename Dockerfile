FROM ubuntu:18.04
MAINTAINER Jose Selvi <jselvi@pentester.es>

USER root

# Update operating system
ARG DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && apt-get -y install python3 python3-pip python3-tk

# Copy Code & Data
COPY data /data
COPY models /models
COPY notebooks /notebooks
WORKDIR /notebooks

# Install requirements
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r /notebooks/requirements.txt

# Start jupyter
EXPOSE 8888
CMD ["/usr/local/bin/jupyter","notebook", "--ip=0.0.0.0", "--allow-root"]
