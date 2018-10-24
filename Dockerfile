
FROM tomcat:9.0.12-jre8

LABEL com.knetapp.name="GeneXus Java Tomcat for Linux" \
      com.knetapp.description="Dockerfile for Java Tomcat environments" \
      com.knetapp.url="http://www.knetapp.com.br/" \
      com.knetapp.vcs-url="https://github.com/jrkaibro/Dockerfile" \
      com.knetapp.vendor="KnetApp" \
      com.knetapp.schema-version="1.0" \
      com.knetapp.maintainer="Junior Kaibro <jrkaibro@gmail.com>"

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml

VOLUME C:\Docker\ServerApp\Tomcat9\webapps /usr/local/tomcat/webapps
VOLUME C:\Docker\ServerApp\Tomcat9\lib /usr/local/tomcat/lib
VOLUME C:\Docker\ServerApp\Tomcat9\conf\Catalina\localhost /usr/local/tomcat/conf/Catalina/localhost
