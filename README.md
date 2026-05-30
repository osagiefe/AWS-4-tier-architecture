# AWS-4-tier-architecture
In this project I will be provisioning 4 public subnet in separate AV zones. Each with EC2 instances using tools as Terrform to provision AWS EC2 instances, Deploy install Ansible shell script to install controller, Deploy apache2 shell script, Ansible playbook to deploy Jensins, Github repo, Jenkins CICD to build Docker image and push to dockerhub. Finally, deploy a web application to subnet 4 using Ansible playbook

# Tools 

- Terraform
- AWS 
- Docker
- Ansible
- Github
- Jenkins
- Shell Scripts (ansible.sh, apache2.sh, jenkins.sh)
- Jenkins pipeline

# Steps:
## Provision Infrastructure
<img width="1521" height="714" alt="Image" src="https://github.com/user-attachments/assets/308b42f2-dbb3-482b-b6db-6f2df5a90cb7" />

<img width="1866" height="696" alt="Image" src="https://github.com/user-attachments/assets/56f9c9b2-40e2-4bc9-802e-e14769a57b5d" />

# Connect to Ansible Controller and setup
 - Generate public key and pair with dev-jenkins and dev-webapp servers
 <img width="803" height="557" alt="Image" src="https://github.com/user-attachments/assets/8d29667f-a58c-4f63-bc18-52d3d9d7f329" />

 <img width="1141" height="125" alt="Image" src="https://github.com/user-attachments/assets/af5b6f3d-f9f1-43b5-a16d-bf76cdea350d" />

 ## Pair public key with inventory
 <img width="1309" height="295" alt="Image" src="https://github.com/user-attachments/assets/ef86063f-6c98-4240-acb1-f0f1e2b8ebe7" />

 - Setup inventory
 <img width="589" height="229" alt="Image" src="https://github.com/user-attachments/assets/afd2476b-a480-48b3-bd1a-3ce06e4ca5c7" />


 - Test connectivity via ssh from Ansible controller to inventory
 <img width="1323" height="557" alt="Image" src="https://github.com/user-attachments/assets/74ae74fd-cd43-4259-b989-a29a5156973b" />

 ## Use Ansible Playbook to deploy Jenkins on dev-jenkins
 - From the Ansible controller in ssh session
 - vi installjenkins.yml on ansible controller and run file
 - <img width="1318" height="783" alt="Image" src="https://github.com/user-attachments/assets/c88f18b3-f81b-4c5d-a742-0d3e62b3d39e" />

 # Install Docker on the new Jenkins Server
 <img width="1250" height="247" alt="Image" src="https://github.com/user-attachments/assets/d3a2f56b-f79b-4fde-af8a-1861004e281b" />

 - Grant Docker permission to run on system
 <img width="852" height="35" alt="Image" src="https://github.com/user-attachments/assets/1e13c7c6-3cb3-4633-a33c-e3db1eb34ca7" />

 # Configure Jenkins Server and setup Pipeline to build docker image and push to dockerhub
 - Synchronize vscode with Github
 - Execute Jenkins pipeline
 <img width="1617" height="890" alt="Image" src="https://github.com/user-attachments/assets/03c76579-471c-45ef-a681-f5408ed99e19" />
 
 
