variable "rest_api_name" {
  type        = string
  description = "Nome de API Gateway para o Hands-on"
}

variable "api_gateway_region" {
  type        = string
  description = "Região em que a API Gateway será criada"
}

variable "api_gateway_account_id" {
  type        = string
  description = "ID da conta da AWS"
}

variable "lambda_function_name" {
  type        = string
  description = "Nome da função lambda"
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN da função lambda"
}

variable "rest_api_stage_name" {
  type        = string
  description = "Nome do stage da API Gateway"
}

variable "path_part" {
  type        = string
  description = "Path da API Gateway"
}
