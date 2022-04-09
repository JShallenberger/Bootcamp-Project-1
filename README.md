# Bootcamp-Project-1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](/Diagrams/Network-Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

![Ansible file](/Ansible/my-playbook.txt)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network. Using a load balancer also defends against DDoS attacks by navigating attack traffic away from an organization. A jump box provides a conection to a secure computer before launching any administrative tasks.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the system metrics and system logs. 


The configuration details of each machine may be found below.

| Name       | Function     | IP Address | Operating System |
|------------|--------------|------------|------------------|
| Jump Box   | Gateway      | 10.1.0.19  | Linux            |
| Web Server | Web App Host | 10.1.0.16  | Linux            |
| Web Server | Web App Host | 10.1.0.17  | Linux            |
| Web Server | Web App Host | 10.1.0.18  | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 
- 66.41.1.174

Machines within the network can only be accessed by ssh from the jump box.


A summary of the access policies in place can be found in the table below.

| Name        | Publicly Accessible | Allowed IP Addresses |
|-------------|---------------------|----------------------|
| Jump Box    | Yes                 | 66.41.1.174          |
| Web Servers | No                  | 10.1.0.19            |
| Elk Server  | Yes                 | 66.41.1.174          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because configuring new ELK machines can easily repeated.

The playbook implements the following tasks:
- Update/install python
- Install Docker python module
- Downloads and launches container
- Enables service on boot


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.1.0.16
- 10.1.0.17
- 10.1.0.18

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat is used to look at specific logs, like apache logs. This gives organzations a reliable way to harvest and visualize log data.
- Metricbeat performs a similar task, but for harvesting and visualizing system metrics. 


