#remove current.
#docker container ls -a
#CONTAINER_ID=$(docker ps | awk '{ print $1 }' | grep -E [0-9])
#DELETES most
#docker image ls | awk '{ print $3 }'| grep -e [0-9] | xargs -L1 -- docker image rm
# THEN
#docker ps -a | awk '{ print $2 }'| grep -e [0-9] | xargs -L1 -- docker stop


#You need to first stop running container then remove them

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
#For images try to remove dangling images

docker rmi $(docker images -f dangling=true -q)
#To remove all images use

docker rmi $(docker images -q)
