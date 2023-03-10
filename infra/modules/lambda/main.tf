data "archive_file" "lambda_code" {
  type        = var.type_archive_file
  source_dir  = var.source_dir
  output_path = var.output_path
}

resource "aws_lambda_function" "lambda_function" {
  function_name    = var.lambda_function_name
  s3_bucket        = var.s3_bucket
  s3_key           = var.s3_object
  runtime          = var.runtime_app
  handler          = var.handler_app
  source_code_hash = data.archive_file.lambda_code.output_base64sha256
  role             = var.lambda_execution_role
}
