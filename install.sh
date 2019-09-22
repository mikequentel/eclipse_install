#!/bin/bash
ECLIPSE_TARBALL_URL='http://mirror.csclub.uwaterloo.ca/eclipse/technology/epp/downloads/release/2019-09/R/eclipse-cpp-2019-09-R-linux-gtk-x86_64.tar.gz'
curl -kvLO ${ECLIPSE_TARBALL_URL}
sudo tar -C /opt -zxvf eclipse-cpp*.tar.gz
sudo addgroup eclipse || true
sudo usermod ${USER} -aG eclipse || true
sudo chown -R :eclipse /opt/eclipse
echo 'export PATH=$PATH:/opt/eclipse'>>~/.bashrc
sudo su - ${USER}

