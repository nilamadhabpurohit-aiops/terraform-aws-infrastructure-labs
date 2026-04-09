# Day 65 – Terraform Modules (Reusable Infrastructure)

This lab focuses on learning Terraform modules and how to build reusable infrastructure components. Instead of writing everything inside one main.tf, modules help us organize infrastructure like reusable functions.

## Objective

Learn how to:

- Create custom Terraform modules
- Reuse infrastructure code
- Call modules multiple times
- Use Terraform registry modules
- Structure Terraform projects properly

## Module Structure

This lab uses this structure:

day-65-terraform-modules/

providers.tf  
main.tf  
variables.tf  
outputs.tf  

modules/

ec2-instance/  
security-group/  

## Custom Modules Created

### EC2 Module

Reusable EC2 module that accepts:

AMI  
Instance type  
Subnet  
Security groups  
Tags  

Outputs:

Instance ID  
Public IP  
Private IP  

---

### Security Group Module

Reusable security group module that supports:

Dynamic ingress ports  
VPC attachment  
Tagging  

Outputs:

Security group ID

---

## Infrastructure Created

Root module creates:

VPC  
Subnet  
Security Group (via module)  
2 EC2 instances (via module)

EC2 instances:

terraweek-web  
terraweek-api  

Both use same module but different names.

## Terraform Concepts Covered

Terraform modules  
Root vs child module  
Module outputs  
Dynamic blocks  
Module reuse  
Registry modules  

## Commands Used

Initialize:

terraform init

Plan:

terraform plan

Apply:

terraform apply

Destroy:

terraform destroy

## Key Learning

Modules allow:

Reusable infrastructure  
Cleaner code  
Environment reuse  
Scalable architecture  

Modules work like functions in programming.

## Module Best Practices Learned

Always pin module versions  
Keep modules focused  
Use variables instead of hardcoding  
Always define outputs  
Document modules  

## What I Learned Today

From this lab I learned:

How Terraform modules work  
How to reuse infrastructure  
How real Terraform projects are structured  
Why modules are important for large projects  

This helped me understand how production Terraform projects are organized.

## Author

Nil Purohit  
DevOps / SRE Learning Journey