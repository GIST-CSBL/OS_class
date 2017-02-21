FROM ubuntu:14.04
MAINTAINER dlsrnsi <dlsrnsladlek@gist.ac.kr>
RUN apt-get update
RUN apt-get install -y qemu
ENV pintos_dir /project
RUN apt-get install -y openssh-server aptitude net-tools curl
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y tar patch
RUN apt-get install -y libc6-dev

RUN apt-get install -y perl
RUN apt-get install -y gdb
RUN apt-get install -y vim
RUN apt-get install -y build-essential
RUN apt-get install -y git
EXPOSE 22

RUN mkdir /var/run/sshd
RUN sed  -i "/^[^#]*UsePAM/ s/.*/#&/"  /etc/ssh/sshd_config
RUN echo "UsePAM no" >> /etc/ssh/sshd_config
CMD /usr/sbin/sshd -D
