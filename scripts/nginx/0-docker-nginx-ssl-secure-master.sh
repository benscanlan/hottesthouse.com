ls scripts> /dev/null #Asks is there a scripts folder? Pipe to dev null silences ls.
if [ $? -eq 0 ]; then
  cd scripts
  cd nginx #change made when adding extra scripts/nginx folder
fi
cd ../..
cd docker-nginx-ssl-secure-master

docker build -t docker-nginx .

docker run --name docker-nginx \
-p 8080:80 \
-e 'DH_SIZE=512' \
-v $EXT_DIR:/etc/nginx/external/ \
marvambass/nginx-ssl-secure
