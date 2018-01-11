FROM centos
#buildtime variables
ARG proxy_ip
ARG no_proxy_ip

#set proxy
ENV no_proxy ${no_proxy_ip}
ENV http_proxy ${proxy_ip}:3128
ENV https_proxy ${proxy_ip}:3128
ENV JAVA_TOOL_OPTION -Dhttp.proxyHost=${proxy_ip} -Dhttp.proxyPort=3128 --Dhttps.proxyHost=${proxy_ip} -Dhttps.proxyPort=3128

#install java
RUN yum update -y
RUN yum install -y \
	git \
	java-1.8.0-openjdk-devel \
	&& yum clean all
	
#set environment variables
ENV JAVA_HOME /etc/alternatives/jre/

#adding AZ-CLI
RUN yum check-update; yum install -y gcc libffi-devel python-devel openssl-devel
RUN curl "https://bootstrap.pypa.io/get-pip.py" | python
RUN pip install --pre azure-cli

# Terraform
COPY terraform /usr/local/bin/
