variable "lambda_function_name" {
  type        = string
  description = "Nome da função lambda"
}

variable "source_dir" {
  type        = string
  description = "Diretório com o código fonte da lambda"
}

variable "output_path" {
  type        = string
  description = "Caminho para o arquivo zip"
}

variable "type_archive_file" {
  type        = string
  description = "Tipo de arquivo a ser gerado"
}

variable "runtime_app" {
  type        = string
  description = "Runtime da lambda"
}

variable "handler_app" {
  type        = string
  description = "Handler da lambda"
}

variable "s3_bucket" {
  type        = string
  description = "Nome do bucket S3"
}

variable "s3_object" {
  type        = string
  description = "Nome do objeto no bucket S3"
}

variable "lambda_execution_role" {
  type        = string
  description = "Nome da role de execução da lambda"
}

