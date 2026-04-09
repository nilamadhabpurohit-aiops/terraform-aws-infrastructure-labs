output "count_instances" {

  value=aws_instance.count_example[*].id

}

output "foreach_instances" {

  value=values(aws_instance.foreach_example)[*].id

}

output "generated_names" {

  value=local.instance_names

}