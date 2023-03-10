output "s3_bucket" {
  value = aws_s3_bucket.lambda_bucket.id
}

output "s3_object" {
  value = aws_s3_object.lambda_code.key
}
