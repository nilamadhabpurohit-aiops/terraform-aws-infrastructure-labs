# Day 64 – Terraform State Management

This lab focuses on Terraform state handling and remote backend usage.

## Concepts Covered

Terraform state
Remote backend
DynamoDB locking
State commands
Import
Drift detection

## Backend Setup

Remote backend configured using:

S3 bucket
DynamoDB table

Purpose:

Centralized state
State locking
Team safety

## Commands Practiced

terraform show

terraform state list

terraform import

terraform state mv

terraform state rm

terraform force-unlock

## Key Learning

Terraform state is the most critical component of Infrastructure as Code.

Production best practice:

Always use remote backend.