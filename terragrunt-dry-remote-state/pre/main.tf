terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "pre" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_subnet" "pre" {
  vpc_id     = aws_vpc.pre.id
  cidr_block = "10.1.0.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "PRE"
  }
}