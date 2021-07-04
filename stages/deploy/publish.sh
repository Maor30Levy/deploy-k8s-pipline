#!/bin/bash
export PROJECT="$UNAME/$COMPONENT"
git clone https://github.com/Maor30Levy/$PROJECT.git

helm search repo nginx-stable || helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install my-release nginx-stable/nginx-ingress
