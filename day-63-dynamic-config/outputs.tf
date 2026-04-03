output "instance_public_ip" {

  value = aws_instance.server.public_ip

}

output "instance_id" {

  value = aws_instance.server.id

}

output "vpc_id" {

  value = aws_vpc.main.id

}