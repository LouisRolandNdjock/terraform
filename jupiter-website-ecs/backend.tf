# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "lrn-terraform-state-bucket"
    key       = "build/jupiter-website.tfstate"
    region    = "us-east-1"
    profile   = "developer-user"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
