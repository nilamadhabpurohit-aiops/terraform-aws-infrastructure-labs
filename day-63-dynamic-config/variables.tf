variable "region" {

  type    = string
  default = "ap-south-1"

}

variable "project_name" {

  type = string

}

variable "environment" {

  default = "dev"

}

variable "vpc_cidr" {

  default = "10.0.0.0/16"

}

variable "subnet_cidr" {

  default = "10.0.1.0/24"

}

variable "instance_type" {

  default = "t2.micro"

}

variable "allowed_ports" {

  type = list(number)

  default = [22, 80]

}

variable "extra_tags" {

  type = map(string)

  default = {}

}