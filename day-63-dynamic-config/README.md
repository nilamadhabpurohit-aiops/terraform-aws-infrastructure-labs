# Day 63 – Terraform Dynamic Configuration

This lab focuses on converting static Terraform infrastructure into reusable dynamic infrastructure.

## Concepts Covered

Variables
Outputs
Data sources
Locals
Conditional expressions
Terraform functions

## Improvements from Day 62

Removed hardcoded:

Region
AMI
Instance type
CIDR
Tags

Added:

Variables
Data sources
Locals
tfvars

## How to Run

terraform init

terraform plan

terraform apply

Prod example:

terraform plan -var-file="prod.tfvars"

## Key Learning

Terraform should be dynamic and reusable instead of hardcoded.