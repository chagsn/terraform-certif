terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "datascientest-bucket-tfstate-chagsn"
    key    = "states/terraform.tfstate"
    region = "us-east-1"
    access_key = "${AWS_ACCESS_KEY_ID}"
    secret_key = "${AWS_SECRET_ACCESS_KEY}"
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
