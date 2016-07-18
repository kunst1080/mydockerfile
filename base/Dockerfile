FROM ubuntu:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt-get update -y
RUN chmod go+w,u+s /tmp

RUN apt-get install -y build-essential autoconf automake autotools-dev ca-certificates
RUN apt-get install -y sudo man unzip wget curl git zsh rsync tree
RUN apt-get install -y tmux nkf athena-jot rs mecab sl jq moreutils num-utils
RUN apt-get install -y nodejs ruby rubygems openjdk-8-jdk scala
RUN apt-get install -y language-pack-ja-base

# SSH
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN apt-get clean
