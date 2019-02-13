# Create S3 Bucket
provider "aws" {
  access_key = "${lookup(var.aws_access_key, var.env)}"
  secret_key = "${lookup(var.aws_secret_key, var.env)}"
  region     = "${lookup(var.region, var.env)}"
}

module "random" {
    source="./random"
}

module "aws_s3" {
    source="./storage"
    bucket = "${lookup(var.project_name, var.env)}-${module.random.uniquename}"
}