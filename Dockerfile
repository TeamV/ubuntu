FROM ubuntu
MAINTAINER huangjacky<huangjacky@163.com>
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y vim net-tools socat wget && \
    apt-get clean && apt-get autoremove -y
CMD [ "/bin/bash" ]