# Security Group Module

Reusable Terraform module for creating AWS security groups.

## Inputs

vpc_id → VPC ID  
sg_name → Security group name  
ingress_ports → Ports list  
tags → Resource tags  

## Features

Dynamic ingress rules  
Allow all outbound traffic  
Reusable security design  

## Outputs

sg_id → Security group ID

## Purpose

Avoid rewriting security group rules across projects.