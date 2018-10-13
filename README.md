#Docker

> How to install Docker?

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

##Dokcer proxy configuration

*Create http-proxy.conf and put the entry of http_proxy and no_proxy.
/etc/systemd/system/docker.service.d/http-proxy.conf

[Service]
Environment="HTTP_PROXY=http://proxy-ip:port/" "NO_PROXY=<HOST_IP>"

/etc/systemd/system/docker.service.d/https-proxy.conf
[Service]
Environment="HTTPS_PROXY=http://proxy-ip:port/"


## Docker build image
Create docker files with centos base image
Install java, git, azure-cli, python and terraform on that image

*If you are working behind proxy run docker image with argument. Use below command to run docker with arguments 
Run below command from where you kept dokcer file.

`docker build --build-arg no_proxy_ip=<NO_PROXY> --build-arg proxy_ip=<HTTP_PROXY_IP> -t localhost:5000/azure-java:1.5 .`

Here, <NO_PROXY> is ip address of your machine and <HTTP_PROXY_IP> is ip address of your proxy server.


## Docker image with java git azurecli terrafrom and python installed 

`docker pull sagar6210/base-java-git-azurecli-terraform-python`
