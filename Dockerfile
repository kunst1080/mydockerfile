FROM kunst1080/dev-base
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

ENV USER kunst
ENV HOME /home/$USER

# ADDITIONAL PACKAGES
#RUN apt-get -y install openjdk-8-jdk scala

# USER
RUN useradd $USER -m
VOLUME $HOME/work
RUN echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USER
RUN chsh -s /usr/bin/zsh $USER

# SSH KEY
RUN mkdir $HOME/.ssh
ADD authorized_keys $HOME/.ssh/authorized_keys
RUN chown -R $USER:$USER $HOME/.ssh \
    && chmod 600 $HOME/.ssh/authorized_keys \
    && chmod 700 $HOME/.ssh

# SSH SERVER
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
