#!/usr/bin/env bash
sudo systemctl start tomcat
cp /home/ec2-user/server/java-web-app.war /opt/tomcat/webapps/java-web-app.war
sleep 20
sudo systemctl restart tomcat