# Last updated: 06.03.2024
# https://docs.docker.com/engine/reference/builder/
#
FROM redhat/ubi9
#MAINTAINER Nils-Inge Bolle <niboll@sykehuspartner.no>
LABEL maintainer="niboll@sykehuspartner.no"
#
USER root
#
ENV TZ="Europe/Oslo"
#
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
#
RUN yum update -y && yum install -yq tzdata && ln -fs /usr/share/zoneinfo/Europe/Oslo /etc/localtime
RUN yum install -yq python3 python3-pip
#
RUN pip install -Ur requirements.txt
#
USER ${NB_UID}
