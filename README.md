# Interview Exercise

The goal of this exercise is the measure the candidates ability in the following areas:

1.	Using GitHub for source code management
2.	Creating reusable Ansible Roles
3.	Creating Ansible Playbooks which leverage Ansible Roles as dependencies
4.	Building Docker images with Ansible
5.	Utilizing Kubernetes and supporting technologies for Continuous Deployment


## Part 1 – Ansible Roles

Create an Ansible Role which installs Nginx.

## Criteria:
1.	Create a GitHub repository which will contain the new role.
2.	Create the new role following the standard directory structure for Ansible Roles.
3.	Add tasks to the role which will install Nginx from the Linux distribution’s package manager.  The role should support APT and YUM as package managers.
4.	The role should detect the package manager during execution and select the correct execution path.
5.	Commit and push the role to the GitHub repository created in step 1.

Bonus Points:
-	Provide unit tests for the role using a server spec tool like https://goss.rocks/.


## Part 2 – Ansible Playbooks

 Create an Ansible Palybook which utilizes the Ansible Role from Part 1.

### Criteria
1.	Create a GitHub repository which will contain the new playbook.
2.	Create the new playbook following the standard directory structure for Ansible Playbooks.
3.	Create a dependency file for the playbook containing the role created in Part 1.  The role created in Part 1 should not be committed and pushed to the playbook repository.
4.	Start two Docker containers; 1 using the latest version of Debian and 1 running the latest version of Centos from DockerHub (i.e. the official Docker images).
5.	Create an Ansible inventory file containing the two Docker containers started in step 4.
6.	Create a shell script which executes the playbook against the two running containers.
7.	Commit and push the playbook and supporting files to the GitHub repository created in step 1.

Bonus Points:
-	Update the playbook to stop and commit the running Docker containers into Docker images.


## Part 3 – Kubernetes and Helm

Create a Nginx Helm Chart and deploy to Kubernetes.

### Criteria:
1.	Create a GitHub repository which will contain the Helm Chart.
2.	Create a new Helm Chart using the standard directory structure.
3.	Populate the Helm Chart with templates which will create:
a.	A sharable volume for storing files to be hosted by Nginx.
b.	A scalable Nginx deployment containing 3 instances (use the standard Docker image for Nginx from DockerHub).
c.	A service which will load balance the 3 instances of Nginx.
d.	An ingress which will be the entry point to the Nginx cluster.
4.	Create a shell script which will deploy the Helm Chart to a Kubernetes cluster.
5.	Commit and push the Helm Chart and supporting files for the GitHub repository created in step 1.

Notes:
-	Options for Kubernetes clusters could include minikube, Docker for Mac / Windows with Kubernetes enabled, or a free account in IBM Cloud.



