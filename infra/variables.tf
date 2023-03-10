variable "region" {
  type        = string
  description = "Região em que a infraestrutura será criada"
}

variable "profile" {
  type        = string
  description = "Profile da AWS"
}

variable "account_id" {
  type        = string
  description = "ID da conta da AWS"
}
