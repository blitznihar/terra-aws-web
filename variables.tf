variable "env" {
  description = "env: dev or prod"
}

#Create S3 Bucket in AWS
variable "aws_access_key" {
    description = "For aws_access_key"
    type="map"
}

variable "aws_secret_key" {
    description = "For aws_secret_key"
    type="map"
}

variable "project_name" {
    description = "For project Name"
    type="map"
}

variable "region" {
    description = "For AWS Region"
    type="map"
}