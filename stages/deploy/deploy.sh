#!/bin/bash

echo "******************************"
echo "***** Deploying Project ******"
echo "******************************"

echo $PROJECT > /tmp/.project_name
echo $CLIENT_PORT >> /tmp/.project_name
echo $SERVER_PORT >> /tmp/.project_name
echo $WORKER_PORT >> /tmp/.project_name
echo $PARSER_PORT >> /tmp/.project_name
echo $REDIS_PORT >> /tmp/.project_name
echo $SERVER_HOST >> /tmp/.project_name
echo $WORKER_HOST >> /tmp/.project_name
echo $PARSER_HOST >> /tmp/.project_name
echo $REDIS_HOST >> /tmp/.project_name
echo $AWS_ACCESS_KEY_ID >> /tmp/.project_name
echo $AWS_SECRET_ACCESS_KEY >> /tmp/.project_name
echo $MONGODB >> /tmp/.project_name


scp -T /tmp/.project_name $HOST_USERNAME@$HOST_IP:/tmp/.project_name
scp -T ./stages/deploy/implement-env.sh $HOST_USERNAME@$HOST_IP:/tmp/implement-env
scp -T ./stages/deploy/publish.sh $HOST_USERNAME@$HOST_IP:/tmp/publish
ssh -T $HOST_USERNAME@$HOST_IP "/tmp/publish"
