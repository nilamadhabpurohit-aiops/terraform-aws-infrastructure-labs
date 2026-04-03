# Day 61 – Terraform Basics (First Infrastructure)

This lab focuses on understanding Terraform fundamentals and creating AWS infrastructure using Infrastructure as Code.

## Objective

Learn Terraform workflow and create basic AWS resources using Terraform instead of manual AWS console operations.

## Infrastructure Created

Resources created in this lab:

- S3 Bucket
- EC2 Instance

## Concepts Covered

Terraform lifecycle:

- terraform init → Initialize project
- terraform plan → Preview changes
- terraform apply → Create resources
- terraform destroy → Delete resources

Terraform concepts:

- Providers
- Resources
- State file
- Terraform workflow
- Infrastructure as Code basics

## Files Explanation

provider.tf  
Defines AWS provider and Terraform version.

main.tf  
Creates:
- S3 bucket
- EC2 instance

outputs.tf  
Displays resource information like instance ID and bucket name.

## Commands Used

Initialize project:

```
terraform init
```

Check execution plan:

```
terraform plan
```

Create infrastructure:

```
terraform apply
```

Destroy infrastructure:

```
terraform destroy
```

## What I Learned

From this lab I learned:

- How Terraform works
- How to provision AWS resources using code
- Terraform workflow
- Importance of Terraform state
- Difference between manual and automated infrastructure

## Key Takeaways

Infrastructure as Code helps:

- Reduce manual work
- Improve consistency
- Enable automation
- Support DevOps practices

## Future Improvements

Next steps:

- Networking infrastructure
- Variables
- Remote state
- Modules

## Author

Nilamadhab Purohit  
DevOps / SRE Learning Journey