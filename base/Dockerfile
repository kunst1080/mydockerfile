FROM ubuntu:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt-get update -y
RUN chmod go+w,u+s /tmp

RUN apt-get install -y build-essential autoconf automake autotools-dev ca-certificates
RUN apt-get install -y sudo man unzip wget curl git zsh rsync tree vim gawk
RUN apt-get install -y iproute2 iputils-ping dnsutils netcat telnet mailutils
RUN apt-get install -y language-pack-ja-base manpages-ja manpages-ja-dev

# SSH
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN apt-get clean
