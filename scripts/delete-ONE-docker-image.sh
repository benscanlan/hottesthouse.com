docker image rm $(docker images docker-nginx | awk '{ print $3 }' | grep -E [0-9])
