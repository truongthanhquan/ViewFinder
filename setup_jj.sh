#!/bin/bash

me=$(whoami)

sudo groupadd jammers
sudo usermod -a -G jammers root 
sudo usermod -a -G jammers $me
sudo mkdir -p /opt/jamjam/posts

sudo chown root:jammers /opt/jamjam/posts

sudo chmod g+rw /opt/jamjam/posts
