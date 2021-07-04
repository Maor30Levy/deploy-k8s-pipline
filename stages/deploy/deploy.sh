#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"

echo $PROJECT > /tmp/.project_name
scp -T /tmp/.project_name $HOST_USERNAME@$HOST_IP:/tmp/.project_name
scp -T ./stages/deploy/publish.sh $HOST_USERNAME@$HOST_IP:/tmp/publish
ssh -T $HOST_USERNAME@$HOST_IP "/tmp/publish"
