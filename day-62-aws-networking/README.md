# Day 62 – AWS Networking using Terraform

This lab focuses on building a complete AWS networking stack using Terraform and understanding resource dependencies.

## Objective

Build AWS infrastructure components and understand how Terraform manages dependencies between resources.

## Infrastructure Created

This lab provisions:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

## Architecture

Terraform creates this flow:

VPC  
→ Subnet  
→ Internet Gateway  
→ Route Table  
→ Security Group  
→ EC2 Instance

## Concepts Covered

Terraform concepts:

- Resource dependencies
- Implicit dependencies
- Terraform resource graph
- AWS networking basics
- Security groups
- Public subnet architecture

AWS concepts:

- VPC networking
- Subnet routing
- Internet gateway usage
- Security group rules

## Files Explanation

providers.tf  
Defines AWS provider.

variables.tf  
Stores reusable values like region and CIDR.

main.tf  
Creates networking infrastructure and EC2.

outputs.tf  
Displays IDs and public IP.

terraform.tfvars  
Stores environment values.

## Commands Used

Initialize:

```
terraform init
```

Format code:

```
terraform fmt
```

Validate configuration:

```
terraform validate
```

Plan:

```
terraform plan
```

Apply:

```
terraform apply
```

Destroy:

```
terraform destroy
```

## What I Learned

From this lab I learned:

- How AWS networking works
- Terraform dependency management
- Security group configuration
- Infrastructure relationships
- Public subnet architecture

## Key Takeaways

Terraform automatically handles dependencies when resources reference each other.

Example:

Subnet depends on VPC  
EC2 depends on subnet  
Route depends on gateway  

Terraform builds infrastructure in correct order.

## Future Improvements

Next steps:

- Variables and dynamic configs
- Data sources
- Outputs
- Remote state management

## Author

Nil Purohit  
DevOps / SRE Learning Journey