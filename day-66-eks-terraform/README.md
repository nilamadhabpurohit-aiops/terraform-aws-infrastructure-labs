# Day 66 – Provision AWS EKS using Terraform

This lab focuses on provisioning a complete Kubernetes cluster using Terraform modules and deploying a workload on it.

## Objective

Learn how to:

Provision AWS EKS using Terraform  
Use registry modules  
Connect kubectl  
Deploy Kubernetes workload  
Destroy infrastructure safely  

## Infrastructure Created

Terraform created:

VPC  
Public Subnets  
Private Subnets  
NAT Gateway  
Internet Gateway  
IAM roles  
Security groups  
EKS Cluster  
Node Group  

Terraform created around **30+ resources**.

## File Structure

day-66-eks-terraform/

providers.tf  
variables.tf  
terraform.tfvars  
vpc.tf  
eks.tf  
outputs.tf  

k8s/

nginx-deployment.yaml  

## Terraform Concepts Used

Terraform modules  
Terraform registry  
Infrastructure as Code  
Managed node groups  
Cloud networking  

## Commands Used

Initialize:

terraform init

Plan:

terraform plan

Apply:

terraform apply

## Connecting Kubernetes

Update kubeconfig:

aws eks update-kubeconfig --name terraweek-eks --region us-east-2

Verify:

kubectl get nodes

kubectl get pods -A

kubectl cluster-info

## Deploying Workload

Deploy nginx:

kubectl apply -f k8s/nginx-deployment.yaml

Verify:

kubectl get pods

kubectl get svc

Access LoadBalancer URL to see nginx welcome page.

## Destroy Process

Delete Kubernetes workload first:

kubectl delete -f k8s/nginx-deployment.yaml

Destroy Terraform:

terraform destroy

## What I Learned

From this lab I learned:

How EKS is provisioned using Terraform  
How registry modules simplify infrastructure  
How Kubernetes connects with AWS  
Why Terraform destroy is important  

This task showed how real DevOps teams provision Kubernetes infrastructure.

## Reflection

Compared to manual Kubernetes setup (kind/minikube), Terraform makes infrastructure:

Repeatable  
Automated  
Destroyable  
Production ready  

## Author

Nilamadhab Purohit  
DevOps / SRE Learning Journey