resource "aws_vpc" "state_vpc" {

  cidr_block = "10.2.0.0/16"

}

resource "aws_instance" "state_ec2" {

  ami = "ami-0f5ee92e2d63afc18"

  instance_type = var.instance_type

  tags = {

    Name = "state-lab"

  }

}