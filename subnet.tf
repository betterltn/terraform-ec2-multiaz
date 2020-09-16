provider "aws" {
  region = "us-west-2"
}

data "aws_subnet_ids" "current" {
  vpc_id = "${var.vpc_id}"
}
