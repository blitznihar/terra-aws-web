resource "aws_s3_bucket" "aws_s3_bucket_id"{
    bucket = "${var.bucket}"
    acl = "private"
    force_destroy = true
    tags = {
        Name = "My bucket"
        Environment = "Dev"
        Project = "${var.project}"
    }
}