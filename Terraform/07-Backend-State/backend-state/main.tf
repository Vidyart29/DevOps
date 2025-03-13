provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "enterprise_backend_state_eg" {
  bucket = "dev-app-backend-state-abc"
}
