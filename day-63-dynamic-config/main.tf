# Data source AMI

data "aws_ami" "amazon" {

  most_recent = true

  owners = ["amazon"]

  filter {

    name = "name"

    values = ["amzn2-ami-hvm*"]

  }

}

# VPC

resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  tags = merge(local.common_tags, {

    Name = "${local.name_prefix}-vpc"

  })

}

# Subnet:

resource "aws_subnet" "public" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.subnet_cidr

  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {

    Name = "${local.name_prefix}-subnet"

  })

}

# Internet gateway:
resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.main.id

}


# Security group

resource "aws_security_group" "sg" {

  vpc_id = aws_vpc.main.id

  dynamic "ingress" {

    for_each = var.allowed_ports

    content {

      from_port = ingress.value

      to_port = ingress.value

      protocol = "tcp"

      cidr_blocks = ["0.0.0.0/0"]

    }

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

}


# EC2 instance

resource "aws_instance" "server" {

  ami = data.aws_ami.amazon.id

  instance_type = var.environment == "prod" ? "t3.small" : var.instance_type

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [

    aws_security_group.sg.id

  ]

  associate_public_ip_address = true

  tags = merge(local.common_tags, {

    Name = "${local.name_prefix}-server"

  })

}

