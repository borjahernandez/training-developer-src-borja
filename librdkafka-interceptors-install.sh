#!/bin/bash

sudo apt-key del 41468433
wget -qO - https://packages.confluent.io/deb/7.0/archive.key | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/7.0 stable main"
sudo add-apt-repository "deb https://packages.confluent.io/clients/deb $(lsb_release -cs) main"
sudo apt install -y librdkafka-dev 
sudo apt-get install -y software-properties-common gnupg apt-transport-https
sudo apt-get install -y confluent-librdkafka-plugins=0.11.3-1

