FROM tomcat:latest



# Copy the WAR file to the webapps directory

COPY target/SampleJava.war /usr/local/tomcat/webapps



# Optionally, copy additional files

COPY src/main/webapp /usr/local/tomcat/webapps/ROOT

# Optionally, copy additional files

COPY src/test/java/net/sf/jsptest/acceptance/jsp/BasicJspTest.java /usr/local/tomcat/webapps/ROOT

# Optionally, copy additional files

COPY src/main/webapp/WEB-INF/web.xml /usr/local/tomcat/webapps/ROOT

# Expose the Tomcat port

EXPOSE 9696



# Start Tomcat

CMD ["catalina.sh", "run"]
