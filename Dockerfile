FROM tomcat:9-jdk17

MAINTAINER vaishnavi@gurav

COPY target/maven-webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
