#!/usr/bin/env bash
apt update
apt install -y openjdk-8-jdk
apt install -y maven

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

apt update
apt install -y jenkins

chmod 777 /var/lib/jenkins/secrets/initialAdminPassword
cat /var/lib/jenkins/secrets/initialAdminPassword



