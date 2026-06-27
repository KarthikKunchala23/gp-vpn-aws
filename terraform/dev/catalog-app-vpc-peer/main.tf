terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }

  backend "s3" {
    bucket         = "network-terraform-state2398"
    key            = "catalog-vpc-peering/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
  default_tags {
      tags = {
        Team = var.team
        Environment = var.environment
        Region = var.peer_region
        Created_By = "gp-vpn-aws"
      }
   }
}