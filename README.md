# HottestHouse.com

A better way to get started in real estate investing.


## The Stack
HottestHouse.com uses a docker container based architecture.

![Benchmark Img](https://github.com/benscanlan/httpssl/blob/master/documentation%20/Hottest-House-Stack.png?raw=true)

* Container Communication Sockets:
  * Port 80 <-> UWSGI <-> SQL

## Socket Architecture

    docker ps #host port maps to -> docker vm port

## Socket Architecture


## Docker Containers

    Bens-MacBook-Pro:httpssl benscanlan$ tree
    .

    ├── README.md
    ├── application
    │   ├── chat
    │   │   ├── flask_main.py
    │   │   ├── security
    │   │   │   ├── server.crt
    │   │   │   ├── server.csr
    │   │   │   └── server.key
    │   │   └── templates
    │   │       └── session.html
    │   ├── main.py
    │   ├── pandas
    │   │   └── pandas_main.py
    │   ├── public
    │   │   ├── about.html
    │   │   ├── chat_index.html
    │   │   ├── city_of_roseville.csv
    │   │   ├── crow_index.html
    │   │   ├── d3.min.js
    │   │   ├── house_index.html
    │   │   ├── images
    │   │   │   └── test.png
    │   │   ├── index.html
    │   │   ├── scripts
    │   │   │   ├── d3
    │   │   │   │   ├── API.md
    │   │   │   │   ├── CHANGES.md
    │   │   │   │   ├── LICENSE
    │   │   │   │   ├── README.md
    │   │   │   │   ├── d3.js
    │   │   │   │   └── d3.min.js
    │   │   │   └── test.js
    │   │   ├── static
    │   │   │   └── database -> /Users/benscanlan/Desktop/httpssl/database
    │   │   └── styles
    │   │       ├── about.css
    │   │       └── styles.css
    │   └── security
    │       ├── server.crt
    │       ├── server.csr
    │       └── server.key
    ├── database
    │   └── CSV
    │       ├── city_of_roseville
    │       │   ├── README.txt
    │       │   └── us
    │       │       └── ca
    │       │           └── city_of_roseville.vrt
    │       └── placer
    │           ├── README.txt
    │           └── us
    │               └── ca
    │                   ├── placer.csv
    │                   └── placer.vrt
    ├── docker-nginx-ssl-secure-master
    │   ├── Dockerfile
    │   ├── LICENSE
    │   ├── README.md
    │   ├── basic.conf
    │   ├── entrypoint.sh
    │   └── ssl.conf
    ├── dockerfiles
    │   └── nginxbox
    │       └── dockerfile
    ├── documentation\
    │   └── Hottest-House-Stack.png
    └── scripts
        ├── delete-ALL-docker-containers.sh
        ├── nginx
        │   ├── 0-docker-nginx-ssl-secure-master.sh
        │   ├── 1-build-nginx-docker-container.sh
        │   └── 2-run-nginx-docker-container.sh
        ├── python
        │   └── 2-build-python-docker-container.sh
        └── sql
            └── 3-build-django-docker-container.sh

    29 directories, 47 files
