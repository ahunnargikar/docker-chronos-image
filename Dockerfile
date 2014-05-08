FROM stackbrew/ubuntu:13.10

MAINTAINER ahunnargikar@ebay.com

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe > /etc/apt/sources.list.d/universe.list
RUN apt-get update

#Install packages
RUN apt-get -y -f install --no-install-recommends openjdk-7-jdk
RUN apt-get -y install wget curl git-core nano maven

#Install & configure Supervisor
#RUN apt-get -y install supervisor
#RUN mkdir -p /var/log/supervisor
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Run Supervisor
#CMD ["/usr/bin/supervisord"]