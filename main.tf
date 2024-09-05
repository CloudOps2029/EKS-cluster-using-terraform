provider "aws" {
  region = var.region
}
terraform {
  # backend "s3" {
  #   bucket = "bucket-demo-202455"
  #   dynamodb_table = "terraform-state-lock-dynamo"
  #   key = "global/mystatefile/terraform.tfstate"
  #   region = "us-east-1"
  #   encrypt ="true"

  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.53.0"
    }
    helm = {
      source  = "hashicorp/helm"
      # version = "2.6.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      # version = "2.13.0"
    }
  }
}



#aws eks update-kubeconfig --region us-east-1 --name eks


module "eks_vpc" {
  source  = "./eks/"
}