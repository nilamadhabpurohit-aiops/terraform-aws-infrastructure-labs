variable "instance_types" {

  default = {

    web="t2.micro"

    api="t2.micro"

    worker="t2.micro"

  }

}

variable "allowed_ports" {

  default=[22,80,443]

}