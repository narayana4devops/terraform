terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket = "daws78s1-remote-state"
    key = "remote_state_demo"
    region = "us-east-1"
    dynamodb_table = "daws78s1_locking_t"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}