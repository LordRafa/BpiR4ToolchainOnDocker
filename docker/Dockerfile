FROM ubuntu:latest

MAINTAINER Rafael Waldo Delgado Doblas

# Initial Setup
ARG UID=1001
ARG GID=1001
ARG USER="ondocker"
ENV APP_HOME="/App_Home"

ENV DEBIAN_FRONTEND="noninteractive"

# Installing Dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bash-completion build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev python3-setuptools rsync swig unzip zlib1g-dev file wget asciidoc binutils gcc intltool make patch perl python3-dev vim curl

# Setting up the user
VOLUME "$APP_HOME"
RUN ln -s "$APP_HOME" "/home/$USER"
WORKDIR "/home/$USER"

ADD bashrc "/etc/profile.d/"
RUN cat /etc/profile.d/bashrc >> /etc/bash.bashrc

RUN groupadd -g "$GID" -r "$USER"
RUN useradd -u "$UID" -g "$GID" -r "$USER"

RUN chown -R "$USER:$USER" "$APP_HOME"
RUN chown -R "$USER:$USER" "/home/$USER"

# Provisioning required configs and executables
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

# Keeping update the image
RUN apt-get update && apt-get upgrade -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setting up entry point
USER "$USER"
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

