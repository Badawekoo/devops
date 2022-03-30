terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_dynamodb_table" "my_table" {
  name        = "demo-table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "ID"
  attribute {
    name = "ID"
    type = "S"
  }
   tags = {
    environment       = "dev"
  }
}

resource "aws_dynamodb_table_item" "dynamodb_schema_table_item" {
  for_each = local.tf_data
  table_name = aws_dynamodb_table.my_table.name
  hash_key   = "ID"
  item = jsonencode(each.value)
}