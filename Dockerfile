FROM hieisky/ubuntu-base

# Ubuntu 14.04.2 Docker Base with SSH login
MAINTAINER Hisiky Ma <hieiskyapp@gmail.com>

USER root

# apt-get update & upgrade
RUN apt-get update -y

# Install git package
RUN apt-get install -y git git-core


# Clean up the
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get clean
RUN apt-get autoremove -y

# Expose ports
EXPOSE 22

CMD ["bash"]
