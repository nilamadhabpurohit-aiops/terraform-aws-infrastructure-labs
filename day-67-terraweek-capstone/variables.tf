variable "project_name" {

  default = "terraweek"

}

variable "vpc_cidr" {

  type = string

}

variable "subnet_cidr" {

  type = string

}

variable "instance_type" {

  type = string

}

variable "ingress_ports" {

  type = list(number)

}