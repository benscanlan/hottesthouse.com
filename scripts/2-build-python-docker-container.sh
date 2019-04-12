cd .. #cd out of scripts folder
mkdir dockerfiles
mkdir dockerfiles/pythonbox
touch dockerfiles/pythonbox/Dockerfile

echo '#Dockerfile
FROM python
#RUN apt-get -y update && apt-get install -y flask
CMD ls
' > dockerfiles/pythonbox/python-dockerfile
