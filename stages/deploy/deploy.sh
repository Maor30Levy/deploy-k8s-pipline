#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"

echo $PROJECT > /tmp/.project_name
echo hi
scp -T /tmp/.project_name $HOST_USERNAME@$HOST_IP:/tmp/.project_name
scp -T ./stages/deploy/publish $HOST_USERNAME@$HOST_IP:/tmp/publish
ssh -T $HOST_USERNAME@$HOST_IP "/tmp/publish"
