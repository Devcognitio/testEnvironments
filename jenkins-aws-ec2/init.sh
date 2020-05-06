# Java install
sudo yum install -y java-1.8.0
sudo yum update -y

#Jenkins install
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm — import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo service jenkins start
sleep 8
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
