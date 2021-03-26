##############################################
## Jenkins installation on AWS EC2 using YUM ##
###############################################

## Add Jenkins repo to your yum repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
 
## Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
 
## YUM upadte
sudo yum update -y

## Install Java
sudo yum install java -y

## Install Jenkins
sudo yum install jenkins -y

## Docker install
sudo yum update -y
sudo amazon-linux-extras install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker jenkins


## Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

## Seep
sleep 10

## Get the initial administrative password 
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
