output "aws_s3_bucket_versioning"  {
  value       = aws_s3_bucket.tf-name-s3-bucket.versioning[0].enabled
  sensitive   = true
  
}
output "aws_s3_bucket_complete_details" {
  value = aws_s3_bucket.tf-name-s3-bucket
  # sensitive=true
}

# this is similar as of output in programming
output "iam_user_name_complete_details" {
  value = data.aws_iam_user.existing_iam_user
}

output "iam_user_name_complete_details-1" {
  value = aws_iam_user.my_aws_iam_user
}
