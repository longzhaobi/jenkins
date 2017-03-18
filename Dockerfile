FROM tomcat:7-jre8
MAINTAINER Long Zhao Bi "714037058@qq.com"

ADD ./target/jenkins.war /usr/local/tomcat/webapps

EXPOSE 8080
