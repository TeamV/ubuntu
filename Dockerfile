FROM ubuntu
MAINTAINER huangjacky<huangjacky@163.com>
ENV DEBIAN_FRONTEND=noninteractive
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y vim net-tools socat wget tzdata && \
    apt-get clean && apt-get autoremove -y && \
    cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
CMD [ "/bin/bash" ]