terraform {

  backend "s3" {

    bucket = "nil-terraform-state"

    key = "dev/terraform.tfstate"

    region = "us-east-2"

    dynamodb_table = "terraform-lock"

    encrypt = true

  }

}