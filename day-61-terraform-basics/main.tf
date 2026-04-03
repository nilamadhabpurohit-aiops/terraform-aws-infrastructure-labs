resource "aws_s3_bucket" "terra_bucket" {

  bucket = "nil-terraweek-2026"

  tags = {

    Name = "TerraformPractice"

  }

}

resource "aws_instance" "terra_ec2" {

  ami = "ami-0f5ee92e2d63afc18"

  instance_type = "t2.micro"

  tags = {

    Name = "TerraWeek-Day61"

  }

}