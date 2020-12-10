FROM ubuntu:18.04

RUN apt-get -y install ansible glibc curl telnet net-tools && \
    apt-get -y update

RUN mkdir /opt
COPY * /opt/
WORKDIR /opt

USER root
EXPOSE 443
ENTRYPOINT ["entrypoint.sh"]
CMD ["dc", "-exec"]
