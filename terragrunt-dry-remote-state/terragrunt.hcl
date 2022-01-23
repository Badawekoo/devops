# Remote backend configurations for all envirnments dirs
remote_state {
  backend = "s3"
  config = {
    bucket         = "mb-tf-state--${get_aws_account_id()}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}