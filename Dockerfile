FROM centos:7
RUN yum install -y java wget
RUN cd /opt && wget http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.10/bin/apache-tomcat-9.0.10.tar.gz
RUN cd /opt && tar xvf apache-tomcat-9.0.10.tar.gz
RUN cd /opt/apache-tomcat-9.0.10/webapps && wget https://github.com/gitbucket/gitbucket/releases/download/4.26.0/gitbucket.war
CMD [ "/opt/apache-tomcat-9.0.10/bin/catalina.sh", "run" ]

