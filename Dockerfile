FROM maven:3-jdk-8-alpine as maven
WORKDIR java-web-app
COPY . .
RUN mvn clean install

FROM tomcat:9-alpine
COPY --from=maven java-web-app/target/java-web-app.war /usr/local/tomcat/webapps/java-web-app.war
EXPOSE 8080
CMD ["catalina.sh","run"]