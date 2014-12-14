FROM mono:3.10

MAINTAINER Kazuki Yasufuku <wilfrem@gmail.com>

#add kerman user
#create home folder
RUN useradd kerman && mkdir -p /home/kerman

#ADD DMPServer file
ADD DMPServerApp /home/kerman/DMPServerApp

#change file owner
RUN chown -R kerman:kerman /home/kerman

WORKDIR /home/kerman/DMPServerApp

#run as kerman user
USER kerman

#expose DMP port
EXPOSE 6702

CMD mono /home/kerman/DMPServerApp/DMPServer.exe

