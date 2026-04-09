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
day-65-terraform-modules/
day-66-eks-terraform/
day-67-terraweek-capstone/
```

Each folder contains:

Terraform configuration  
Documentation  
Reusable infrastructure examples  

## Labs Covered

---

## Quick Concept Notes

## Day-61 → Terraform Basics

Tasks:
- S3 bucket
- EC2 instance

Concepts:
- terraform init
- terraform plan
- terraform apply
- terraform destroy
- providers
- resources

---

## Day-62 → AWS Networking

Tasks:
- VPC
- Subnet
- IGW
- Route table
- Security group
- EC2

Concepts:
- Networking flow
- Resource dependencies
- terraform graph
- Security groups

---

## Day-63 → Variables & Outputs

Tasks:
- variables.tf
- terraform.tfvars
- outputs.tf
- locals
- data sources

Concepts:
- variable precedence
- removing hardcoding
- dynamic config

Important:
Default < tfvars < CLI < ENV

---

## Day-64 → State Management

Tasks:
- Remote backend
- S3 state
- DynamoDB lock
- terraform import
- drift detection

Concepts:
- terraform state list
- terraform state show
- terraform import
- backend config

Important:
Never commit tfstate.

---

## Day-65 → Modules

Tasks:
- EC2 module
- Security group module
- Module reuse

Concepts:
- Root module
- Child module
- Module outputs
- Module variables

Important:
variables.tf → inputs  
main.tf → resources  
outputs.tf → outputs  

---

## Day-66 → EKS Terraform

Tasks:
- VPC module
- EKS cluster
- Node group
- Kubernetes deployment

Concepts:
- Registry modules
- kubectl config
- Kubernetes deployment
- LoadBalancer service

Commands:

aws eks update-kubeconfig --name cluster

kubectl get nodes

kubectl get svc

Important:
Always destroy EKS (cost).

---

## Day-67 → TerraWeek Capstone

Tasks:
- Workspaces
- Multi-environment infra
- Custom modules
- Environment tfvars

Concepts:
- terraform workspace
- environment isolation
- module reuse
- naming strategy

Commands:

terraform workspace new dev

terraform workspace select dev

terraform apply -var-file="dev.tfvars"

Important:
Workspace = separate state.

---

## Terraform Workflow (Standard)

Init:

terraform init

Format:

terraform fmt

Validate:

terraform validate

Plan:

terraform plan

Apply:

terraform apply

Destroy:

terraform destroy

---

## Personal Rules Followed

- No hardcoding
- Use variables
- Separate modules
- Ignore state files
- Always destroy test infra

---

## Author

Nilamadhab Purohit  
DevOps / SRE Learning Notes

## Note

This repository is part of my continuous DevOps learning journey where I focus on building real infrastructure instead of only theoretical learning.