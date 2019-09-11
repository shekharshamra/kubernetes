FROM tomcat:jdk8-openjdk-slim
COPY sample.war /usr/local/tomcat/webapps
