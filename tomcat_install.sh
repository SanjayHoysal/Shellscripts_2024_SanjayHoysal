#!/bin/bash

echo "Updating package list..."
sudo apt update

echo "Installing required packages..."
sudo apt install -y openjdk-11-jdk wget

echo "Creating /opt directory if not present and navigating to it..."
sudo mkdir -p /opt
cd /opt

echo "Downloading Apache Tomcat..."
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.34/bin/apache-tomcat-10.1.34.tar.gz

echo "Extracting Tomcat archive..."
sudo tar -xzf apache-tomcat-10.1.34.tar.gz

echo "Changing Tomcat port to 8081..."
sudo sed -i 's/<Connector port="8080" protocol="HTTP\/1.1"/<Connector port="8081" protocol="HTTP\/1.1"/' /opt/apache-tomcat-10.1.34/conf/server.xml

echo "Commenting out access restriction lines for manager..."
sudo sed -i 's/<Valve className="org.apache.catalina.valves.RemoteAddrValve"/<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"/' /opt/apache-tomcat-10.1.34/webapps/manager/META-INF/context.xml
sudo sed -i 's/allow="127\\.\\d+\\.\\d+\\.\\d+|::1|0:0:0:0:0:0:0:1" \/>/allow="127\\.\\d+\\.\\d+\\.\\d+|::1|0:0:0:0:0:0:0:1" \/> -->/' /opt/apache-tomcat-10.1.34/webapps/manager/META-INF/context.xml

echo "Commenting out access restriction lines for host-manager..."
sudo sed -i 's/<Valve className="org.apache.catalina.valves.RemoteAddrValve"/<!-- <Valve className="org.apache.catalina.valves.RemoteAddrValve"/' /opt/apache-tomcat-10.1.34/webapps/host-manager/META-INF/context.xml
sudo sed -i 's/allow="127\\.\\d+\\.\\d+\\.\\d+|::1|0:0:0:0:0:0:0:1" \/>/allow="127\\.\\d+\\.\\d+\\.\\d+|::1|0:0:0:0:0:0:0:1" \/> -->/' /opt/apache-tomcat-10.1.34/webapps/host-manager/META-INF/context.xml

echo "Setting execute permissions for Tomcat scripts..."
sudo chmod +x /opt/apache-tomcat-10.1.34/bin/*.sh

echo "Starting Tomcat server..."
/opt/apache-tomcat-10.1.34/bin/startup.sh

echo "Tomcat installation and configuration complete. Running on port 8081."
