# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Set maintainer info
LABEL maintainer="yourname@example.com"

# Remove default ROOT app (optional, to avoid conflicts)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps folder
COPY target/Jenkins-0.0.1-SNAPSHOT.war.original /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat will run on
EXPOSE 8082

# Start Tomcat
CMD ["catalina.sh", "run"]
