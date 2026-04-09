# Day 67 – Terraform TerraWeek Capstone (Practice Implementation)

This folder contains my implementation of the TerraWeek capstone project where I built a multi-environment AWS infrastructure using Terraform modules and workspaces.

This project combines all Terraform concepts learned during TerraWeek including:

Terraform modules  
Terraform workspaces  
Environment isolation  
Reusable infrastructure  
Infrastructure best practices  

## Objective

Build a single Terraform codebase capable of deploying:

Dev environment  
Staging environment  
Production environment  

Each environment has:

Dedicated VPC  
Security group  
EC2 instance  
Environment specific configuration  

## Project Structure
```bash 
day-67-terraweek-capstone/

providers.tf
main.tf
variables.tf
outputs.tf
locals.tf

dev.tfvars
staging.tfvars
prod.tfvars

modules/

vpc/
security-group/
ec2-instance/
```


## Modules Created

### VPC Module

Creates:

VPC  
Public subnet  
Internet gateway  
Route table  
Route association  

Outputs:

vpc_id  
subnet_id  

---

### Security Group Module

Creates:

Security group  
Dynamic ingress rules  
Outbound rules  

Output:

sg_id  

---

### EC2 Module

Creates:

EC2 instance

Outputs:

instance_id  
public_ip  

---

## Environments

### Dev

Instance type → t2.micro  
Ports → 22,80  

Purpose:

Development and testing.

---

### Staging

Instance type → t2.small  
Ports → 22,80,443  

Purpose:

Pre-production validation.

---

### Production

Instance type → t3.small  
Ports → 80,443  

SSH removed for security.

Purpose:

Production workload simulation.

---

## Terraform Concepts Practiced

Terraform workspaces  
Module reuse  
Dynamic variables  
Environment specific configs  
Workspace based naming  
Terraform best practices  

## Commands Used

Initialize:

terraform init

Create workspaces:

terraform workspace new dev

terraform workspace new staging

terraform workspace new prod

Deploy environments:

terraform apply -var-file="dev.tfvars"

terraform apply -var-file="staging.tfvars"

terraform apply -var-file="prod.tfvars"

Destroy infrastructure:

terraform destroy

## Key Learning

From this lab I learned:

How Terraform supports multi-environment deployments  
How modules enable reusable infrastructure  
How workspaces isolate environments  
How real DevOps teams structure Terraform projects  

## Best Practices Followed

Separate modules per concern  
No hardcoded values  
Environment specific tfvars  
Workspace aware naming  
Consistent tagging  
Proper file structure  

## Repository Context

This folder is part of my Terraform learning repository:

https://github.com/nilamadhabpurohit-aiops/terraform-aws-infrastructure-labs

This repository documents my Terraform journey from Day-61 to Day-67.

## Author

Nilamadhab Purohit  
DevOps / SRE Learning Journey