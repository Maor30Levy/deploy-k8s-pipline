#!/bin/bash
export PROJECT=$(sed -n '1p' /tmp/.project_name)
git clone https://github.com/Maor30Levy/$PROJECT.git
/tmp/implement-env
helm search repo nginx-stable || helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
# helm install my-release nginx-stable/nginx-ingress
helm install $PROJECT $PROJECT/
