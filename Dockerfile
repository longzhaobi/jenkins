FROM tomcat:7-jre8
MAINTAINER Long Zhao Bi "714037058@qq.com"

RUN rm -r /usr/local/tomcat/webapps/*

ADD ./target/jenkins.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
