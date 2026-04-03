output "vpc_id" {

  value = aws_vpc.main.id

}

output "subnet_id" {

  value = aws_subnet.public.id

}

output "instance_id" {

  value = aws_instance.server.id

}

output "public_ip" {

  value = aws_instance.server.public_ip

}

output "security_group" {

  value = aws_security_group.web_sg.id

}