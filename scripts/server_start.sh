#!/usr/bin/env bash
cp /home/ec2-user/server/java-web-app.war /opt/tomcat/webapps/java-web-app.war
sudo systemctl restart tomcat