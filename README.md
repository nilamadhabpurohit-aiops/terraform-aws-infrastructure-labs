# **Terraform | AWS | DevOps | Infrastructure as Code**


# Terraform AWS Infrastructure Labs

This repository contains my hands-on Terraform practice as part of my DevOps and Site Reliability Engineering (SRE) learning journey. The goal is to build real AWS infrastructure using Infrastructure as Code and understand production-level Terraform concepts.

## Purpose of this Repository

This repository serves three purposes:

Practice Terraform concepts  
Showcase DevOps skills  
Personal infrastructure reference  

All labs are written as independent Terraform projects.

## Repository Structure

```
terraform-aws-infrastructure-labs/

day-61-terraform-basics/
day-62-aws-networking/
day-63-dynamic-config/
day-64-state-management/
```

Each folder contains:

Terraform configuration  
Documentation  
Reusable infrastructure examples  

## Labs Covered

### Day 61 – Terraform Fundamentals

Created:

S3 bucket  
EC2 instance  

Concepts:

Terraform workflow  
Providers  
Resources  
State basics  

---

### Day 62 – AWS Networking

Created:

VPC  
Subnet  
Internet Gateway  
Route table  
Security group  
EC2  

Concepts:

AWS networking  
Terraform dependencies  
Security groups  

---

### Day 63 – Dynamic Terraform

Implemented:

Variables  
Outputs  
Data sources  
Locals  
Conditional logic  

Concepts:

Reusable infrastructure  
Environment configs  
Removing hardcoding  

---

### Day 64 – State Management

Implemented:

Remote backend
S3 state storage
DynamoDB locking
Import existing resources
Drift detection

Concepts:

State management
Team safe Terraform workflow

---

## Skills Demonstrated

Terraform  
AWS Infrastructure  
Infrastructure as Code  
Cloud Networking  
Terraform State Management  
Cloud Automation  
DevOps Practices  

## How to Run Any Lab

Example:

```
cd day-62-aws-networking

terraform init

terraform plan

terraform apply
```

Destroy after testing:

```
terraform destroy
```

## Best Practices Followed

State files ignored  
Modular folder structure  
Reusable variables  
Clear documentation  
Environment separation  

## Future Improvements

Terraform Modules  
Workspaces  
CI/CD integration  
Security best practices  
Multi environment deployments  

## Author

Nilamadhab Purohit  
DevOps / SRE Learning Journey

## Note

This repository is part of my continuous DevOps learning journey where I focus on building real infrastructure instead of only theoretical learning.