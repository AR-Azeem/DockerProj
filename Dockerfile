FROM tomcat:8.0

ADD target/mycoolwebapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]