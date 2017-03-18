FROM loozb/tomcat:7-jre8
MAINTAINER Long Zhao Bi "714037058@qq.com"

#删除tomcat容器中的ROOT目录
RUN rm -r /usr/local/tomcat/webapps/ROOT

#将打包好的war包添加tomcat中
ADD ./target/jenkins.war /usr/local/tomcat/webapps/ROOT.war

#暴漏端口
EXPOSE 8080
