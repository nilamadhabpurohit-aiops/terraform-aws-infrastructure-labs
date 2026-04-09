# AMI lookup

data "aws_ami" "amazon" {

  most_recent=true

  owners=["amazon"]

  filter {

    name="name"

    values=["amzn2-ami-hvm*"]

  }

}

# count example

resource "aws_instance" "count_example" {

  count=2

  ami=data.aws_ami.amazon.id

  instance_type="t2.micro"

  tags={

    Name="count-server-${count.index}"

  }

}


# for_each example

resource "aws_instance" "foreach_example" {

  for_each=var.instance_types

  ami=data.aws_ami.amazon.id

  instance_type=each.value

  tags={

    Name="foreach-${each.key}"

  }

}


# dynamic block example

resource "aws_security_group" "loop_sg" {

  name="loop-sg"

  dynamic "ingress" {

    for_each=var.allowed_ports

    content {

      from_port=ingress.value

      to_port=ingress.value

      protocol="tcp"

      cidr_blocks=["0.0.0.0/0"]

    }

  }

  egress {

    from_port=0

    to_port=0

    protocol="-1"

    cidr_blocks=["0.0.0.0/0"]

  }

}

# locals example

locals {

  instance_names=[for name in keys(var.instance_types) : "terra-${name}"]

}