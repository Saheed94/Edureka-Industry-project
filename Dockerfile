# Use official Tomcat image
FROM tomcat:9.0-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's ROOT app
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose internal Tomcat port (this is container-side)
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
