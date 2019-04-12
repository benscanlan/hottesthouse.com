#pulls Docker image (no need to delete it)
docker pull nginx
#Allows script to be run from project folder
ls scripts> /dev/null #silences ls
if [ $? -eq 0 ]; then
  cd scripts
fi

cd .. #cd out of Scripts folder
mkdir dockerfiles
mkdir dockerfiles/nginxbox
touch dockerfiles/nginxbox/dockerfile
echo '#Dockerfile
FROM nginx
#RUN apt-get -y update && apt-get install -y flask
CMD ls
' > dockerfiles/nginxbox/dockerfile
cd dockerfiles/nginxbox
docker build -t docker-nginx .
cd ../..   #pwd to test where you at bro
#docker run -ti docker-nginx bash

#docker container ls
