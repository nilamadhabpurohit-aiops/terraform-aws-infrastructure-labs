# Day 68 – Terraform Loops Practice

This lab focuses on Terraform looping constructs used in real infrastructure design.

## Concepts Practiced

count  
for_each  
dynamic blocks  
for expressions  
conditional logic  

## What was implemented

Created EC2 instances using count.

Created multiple instances using for_each.

Created security group rules using dynamic blocks.

Generated names using for expressions.

## Key Learning

count works well for identical resources.

for_each is better when resource identity matters.

dynamic blocks help generate nested configs.

Loops help move from resource creation to infrastructure patterns.

## Commands

terraform init

terraform plan

terraform apply

terraform destroy

## Notes

Prefer for_each over count in production.

Always avoid hardcoding repeated blocks.

Loops help standardize infrastructure.



#### Commands

```bash 
terraform init

terraform fmt

terraform validate

terraform plan

terraform apply
```