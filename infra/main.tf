module "s3" {
  source            = "./modules/s3"
  s3_bucket_name    = "bucket-handson-lambda"
  bucket_acl        = "private"
  key_bucket_object = "lambda.zip"
  archive_file      = "../app/build/lambda.zip"
}

module "lambda" {
  source                = "./modules/lambda"
  lambda_function_name  = "lambda-handson"
  source_dir            = "../app/src"
  output_path           = "../app/build/lambda.zip"
  type_archive_file     = "zip"
  runtime_app           = "nodejs14.x"
  handler_app           = "index.handler"
  s3_bucket             = module.s3.s3_bucket
  s3_object             = module.s3.s3_object
  lambda_execution_role = module.iam.lambda_execution_role

  depends_on = [
    module.s3,
    module.iam
  ]
}

module "apigateway" {
  source                 = "./modules/apigateway"
  rest_api_name          = "handson-api"
  rest_api_stage_name    = "dev"
  path_part              = "api"
  api_gateway_region     = var.region
  api_gateway_account_id = var.account_id
  lambda_function_name   = module.lambda.lambda_function_name
  lambda_function_arn    = module.lambda.lambda_function_arn
  depends_on = [
    module.lambda
  ]
}

module "cloudwatch" {
  source               = "./modules/cloudwatch"
  lambda_function_name = module.lambda.lambda_function_name
  depends_on = [
    module.lambda
  ]
}

module "iam" {
  source               = "./modules/iam"
  lambda_function_name = "lambda-handson"
}

