# EC2 Instance Module

Reusable Terraform module for creating EC2 instances.

## Inputs

ami_id → AMI ID  
instance_type → EC2 type  
subnet_id → Subnet  
security_group_ids → SG list  
instance_name → Name tag  
tags → Extra tags  

## Outputs

instance_id  
public_ip  
private_ip  

## Purpose

This module allows creating multiple EC2 instances using same configuration.