# WordPressDevops
A DevOps implementation of WordPress, demonstrating the fundamentals of multiple key DevOps technologies including Terraform, Ansible, Github Actions, Kubernetes and Docker. 


## Steps Taken:
### Local Machine
* Installed terraform and ansible on local machine to run against host. 
* Added proper crendentials/verification of host machines to run ansible playbooks against.


### Terraform:  
* Ensureed that the proper AWS credentials are provided to allow Terraform to create instances.
* Createed ec2 t3.medium to ensure proper CPU/RAM requirements for running minikube and kubernetes.


### Ansible
* Created a playbook to install the required packages and minikube.
* Created a playbook to move the required K8s files to the host machine.


### K8s
* Created a yaml file for wordpress deployment containing PVC, service and deployment/pod info.
* Created a yaml file for mysql deployment containing PVC, service and deployment/pod info.
* Created a yaml file for secrets containing the mysql password.


### Github Actions
* Created a workflow to run the ansible-playbook updating the host machines k8s files upon push to main.


### EC2 Instance
* Booted minikube and ran the k8s files.
* From the EC2's security profile, opened the required port for incoming traffic to allow access the container.
* Since minikube is a VM and has its own external IP address, used port-forwarding to route traffic from EC2 machine to Wordpress container. 
<br>`kubectl port-forward --address 0.0.0.0 deployment.apps/wordpress 32263:80`
* Able to access wordpress from external browser by using the external IP of the EC2 instance with the port number. 

    
