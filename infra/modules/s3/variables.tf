variable "s3_bucket_name" {
  type        = string
  description = "bucket para projeto hands-on"
}

variable "bucket_acl" {
  type        = string
  description = "ACL do bucket"
}

variable "key_bucket_object" {
  type        = string
  description = "Nome do objeto no bucket"
}

variable "archive_file" {
  type        = string
  description = "Caminho para o arquivo zip"
}

