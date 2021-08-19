# WordPressDevops
A DevOps implementation of WordPress, demonstrating the fundamentals of multiple key DevOps technologies including Terraform, Ansible, Github Actions, Kubernetes and Docker. 

## Directions:
1. Provision two EC2 Instance using Terraform
    * Provide aws crendentials in .aws folder on .
    * The EC2 instances (2 vcpus) will serve as the ansible host.
        * First will be used to ensure that the host can run all required software. Once ensured, configure second.
        * Second will be used to test individual ansible-playbook commands.
2. Use Ansible to setup second EC2 machine.
    * Add host IPs to /etc/ansible/hosts
    * Playbooks:
        1. Install all prerequisites to run minikube (kubectl, docker, conntrack, minikube).
        2. Restart pods with updated configuration. (Automated via GH Actions)
     
    
