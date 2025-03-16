FROM ubuntu:latest

MAINTAINER Rafael Waldo Delgado Doblas

# Initial Setup
ARG UID=1000
ARG GID=1000
ARG USER="ondocker"
ENV APP_HOME="/App_Home"

ENV DEBIAN_FRONTEND="noninteractive"

# Installing Dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev python3-setuptools rsync swig unzip zlib1g-dev file wget

# Setting up the user
VOLUME "$APP_HOME"
VOLUME "$APP_HOME/BpiR4Toolchain"
RUN ln -s "$APP_HOME" "/home/$USER"
WORKDIR "/home/$USER"

ADD bashrc "/home/$USER"

RUN groupadd -g "$GID" -r "$USER"
RUN useradd -u "$UID" -g "$GID" -r "$USER"
RUN adduser "$USER" -G __GROUPS__

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

