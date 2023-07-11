terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

module "my_vpc_module3" {
  source        = "../rahul-vpc-module"
  vpc_cidr      = "10.0.0.0/16"
  vpc_name      = "rahul-vpc-custom-module"
  subnet_cidr   = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
}

