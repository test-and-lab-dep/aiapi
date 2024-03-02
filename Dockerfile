# Last updated: 28.02.2024
# https://docs.docker.com/engine/reference/builder/
#
FROM redhat/ubi9
#FROM tensorflow/tensorflow:latest-gpu-jupyter
#MAINTAINER Nils-Inge Bolle <niboll@sykehuspartner.no>
LABEL maintainer="niboll@sykehuspartner.no"
#
ENV TZ="Europe/Oslo"
#
RUN yum update -y && yum install -yq tzdata && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime
RUN yum install -yq python3 python3-pip
#
RUN pip install -U keras
#RUN pip install -U magika
#RUN pip install -U grpcio
#RUN pip install -U tensorboard
RUN pip install -U tensorflow
RUN pip install -U tornado
