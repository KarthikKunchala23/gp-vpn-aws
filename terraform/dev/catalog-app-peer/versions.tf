terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }
  backend "s3" {
    bucket = "network-terraform-state2398"
    key = "catalog-vpc-peering/terraform.tfstate"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}