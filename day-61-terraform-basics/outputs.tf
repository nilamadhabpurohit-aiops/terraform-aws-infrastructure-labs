output "instance_id" {

  value = aws_instance.terra_ec2.id

}

output "bucket_name" {

  value = aws_s3_bucket.terra_bucket.bucket

}