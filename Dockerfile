FROM tomcat:9.0.0.M15-jre8-alpine

RUN mkdir /opt/tomcat/

WORKDIR /tmp/
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.58/* /opt/tomcat/.

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
