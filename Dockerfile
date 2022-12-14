# Build project
FROM maven:3.5-jdk-8-alpine as maven 
WORKDIR /java-web-app
COPY . /java-web-app/
RUN mvn clean install

#Tomcat image
FROM tomcat:8.0-alpine
WORKDIR /usr/local/tomcat
COPY --from=maven /java-web-app/target/java-web-app.war /webapps/
EXPOSE 8080