This playbook is to automate adding new node to ELK cluster

Prerequisities for the installation:
------------------------------------
- OS version should be Redhat or CentOS 7+
- sudo user should be created and added to elastic-setup.yml file
- Clone this repo on a managed server with access to the target machines and ansible installed

To use the playbook:
-------------------- 
Edit elastic.hosts file to add the target machines, usernames and passwords then
edit main.yaml file under elastic role:
   Go to "Add ELK stack to hosts" 
   add new entry for the new machine

run the below command:
ansible-playbook -i hosts/elastic.hosts playbooks/elastic-setup.yml


PlaybookStructure:
------------------
- Handler to reload daemon configuration and start elasticsearch service
- The main task to install and configure elasticsearch
- Template to add elasticsearch.yaml file
- src which contains elasticsearch rpm and certificate for SSL configuration


