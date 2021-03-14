FROM ubuntu:latest
EXPOSE 8888
RUN apt-get update && apt-get -y install apache2
VOLUME /home/output
ENTRYPOINT ["/bin/nc", "-k", "-l", "-p", "8888", "-vv"]