#pulls Docker image (no need to delete it)
docker pull nginx
docker pull marvambass/nginx-ssl-secure
#Allows script to be run from httpssl project folder
ls scripts> /dev/null #Asks is there a scripts folder? Pipe to dev null silences ls.
if [ $? -eq 0 ]; then
  cd scripts
  cd nginx #change made when adding extra scripts/nginx folder
fi

cd ../.. #cd out of Scripts/nignx folder
mkdir dockerfiles
mkdir dockerfiles/nginxbox
touch dockerfiles/nginxbox/dockerfile
echo '#Dockerfile
#FROM nginx
FROM marvambass/nginx-ssl-secure
#RUN apt-get -y update && apt-get install -y flask
CMD ls
' > dockerfiles/nginxbox/dockerfile
cd dockerfiles/nginxbox
docker build -t docker-nginx .
cd ../..   #pwd to test where you at bro
sudo docker run --name docker-nginx -p 8080:80 nginx

docker run --name docker-nginx \
-p 8080:80 \
-e 'DH_SIZE=512' \
-v $EXT_DIR:/etc/nginx/external/ \
marvambass/nginx-ssl-secure \
nginx


#docker run -ti docker-nginx bash

#docker container ls
#sudo docker run --name docker-nginx -p 8080:80 nginx
#docker ps #host port maps to -> docker vm port
#check it's not tryping to launch to https
#go to HTTP:127.0.0.1:8080
