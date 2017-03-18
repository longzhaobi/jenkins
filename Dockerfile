FROM ubuntu:14.04
MAINTAINER Long Zhao Bi "714037058@qq.com"

#添加tomcat和jdk
ADD /root/apache-tomcat-7.0.76.tar.gz /usr/local/tomcat
ADD /root/jdk-8u121-linux-x64.tar.gz /usr/local/jdk

#设置环境变量
ENV JAVA_HOME /usr/local/jdk
ENV PATH $JAVA_HOME/bin:$PATH

#删除tomcat容器中的ROOT.war
RUN rm -r /usr/local/tomcat/webapps/ROOT

#将打包好的war包添加tomcat中
ADD ./target/jenkins.war /usr/local/tomcat/webapps/ROOT.war

#暴漏端口
EXPOSE 8080
