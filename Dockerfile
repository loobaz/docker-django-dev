FROM ubuntu:trusty

MAINTAINER Pierre Breitschmitt <pierre@loobaz.com>

# Packages dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install \
	python-pip \
	python-dev \
	python-mysqldb
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# PIP dependencies
RUN pip install Django==1.8.4	# Latest

# Application
RUN mkdir /app

VOLUME /app
WORKDIR /app

EXPOSE 8000

CMD ["/bin/bash"]
