#/bin/bash
export CLIENT_PORT=$(sed -n '2p' /tmp/.project_name)
export SERVER_PORT=$(sed -n '3p' /tmp/.project_name)
export WORKER_PORT=$(sed -n '4p' /tmp/.project_name)
export PARSER_PORT=$(sed -n '5p' /tmp/.project_name)
export REDIS_PORT=$(sed -n '6p' /tmp/.project_name)
export SERVER_HOST=$(sed -n '7p' /tmp/.project_name)
export WORKER_HOST=$(sed -n '8p' /tmp/.project_name)
export PARSER_HOST=$(sed -n '9p' /tmp/.project_name)
export REDIS_HOST=$(sed -n '10p' /tmp/.project_name)
export AWS_ACCESS_KEY_ID=$(sed -n '11p' /tmp/.project_name)
export AWS_SECRET_ACCESS_KEY=$(sed -n '12p' /tmp/.project_name)
export MONGODB=$(sed -n '13p' /tmp/.project_name)

sed -i "s/!!CLIENT_PORT!!/$CLIENT_PORT/g" ./$PROJECT/templates/env.yaml 
sed -i "s/!!SERVER_PORT!!/$SERVER_PORT/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!WORKER_PORT!!/$WORKER_PORT/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!PARSER_PORT!!/$PARSER_PORT/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!REDIS_PORT!!/$REDIS_PORT/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!SERVER_HOST!!/$SERVER_HOST/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!WORKER_HOST!!/$WORKER_HOST/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!PARSER_HOST!!/$PARSER_HOST/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!REDIS_HOST!!/$REDIS_HOST/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!AWS_ACCESS_KEY_ID!!/$AWS_ACCESS_KEY_ID/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!AWS_SECRET_ACCESS_KEY!!/$AWS_SECRET_ACCESS_KEY/g" ./$PROJECT/templates/env.yaml
sed -i "s/!!MONGODB!!/$MONGODB/g" ./$PROJECT/templates/env.yaml
