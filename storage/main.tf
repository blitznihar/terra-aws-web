resource "aws_s3_bucket" "aws_s3_bucket_id"{
    bucket = "${var.bucket}"
    acl    = "private"
    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}