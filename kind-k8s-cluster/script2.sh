#!/bin/bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.10.0/kind-linux-amd64   #download and install kind
chmod +x ./kind                                                        #give all permissions for owner 
sudo mv ./kind /usr/bin/kind                                           #move to any system path if needed
curl -LO https://dl.k8s.io/release/v1.20.0/bin/linux/amd64/kubectl       #Download the latest release with the command
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl    #install kubectl     
sudo apt-get update                                                    
sudo apt-get install docker.io                                         #install docker
sudo kind create cluster --config kind-config.yaml                     #create 3node(1-Master,2-Node) Cluster using kind-config.yaml file
sudo kind get nodes                                                    #to see the list of nodes
sudo docker ps -a                                                      #to see the list of docker container nodes
sudo kubectl get nodes
