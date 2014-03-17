#!/usr/bin/env bash

apt-get -yq update
apt-get -yq install git openjdk-7-jre-headless service-wrapper

# Install ElasticSearch
#wget -nv https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.tar.gz
#tar -xzf elasticsearch-0.90.10.tar.gz
#mv elasticsearch-0.90.10 /usr/local/elasticsearch
#rm elasticsearch-0.90.10.tar.gz
#
## Install the service; the service script uses a weird, relative routine to find
## its home, and so we MUST copy the service directory in to place.
#mkdir /home/vagrant/repos
#git clone https://github.com/elasticsearch/elasticsearch-servicewrapper.git /home/vagrant/repos/elasticsearch-servicewrapper
#cp -R /home/vagrant/repos/elasticsearch-servicewrapper/service /usr/local/elasticsearch/bin/service
#
## Start ElasticSearch on boot
#/usr/local/elasticsearch/bin/service/elasticsearch install
#
## Start ElasticSearch now
#service elasticsearch start
#
## Install the ElasticSearch browser
#/usr/local/elasticsearch/bin/plugin -install mobz/elasticsearch-head
#/usr/local/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk/2.2.2

wget -nv https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.deb
dpkg -i elasticsearch-1.0.0.deb

update-rc.d elasticsearch defaults 95 10
/etc/init.d/elasticsearch start

/usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
/usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk
