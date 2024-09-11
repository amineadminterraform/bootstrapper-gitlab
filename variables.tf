variable "s3_bucket" {
  type = string
  default = "state-terraform-s3"
}

variable "s3_endpoint" {
  type = string
  default = "http://minio.minio:9000"
}

variable "s3_access_key" {
  type = string
  default = "console"
}

variable "s3_secret_key" {
  type = string
  default = "console123"
}

variable "gitlab_base_url" {
  type = string
  default = "https://gitlab.dev.com:32525/"
}

variable "gitlab_token" {
  type = string
  default = "glpat-56UAHhytbakhqvzFor9B"
}

variable "gitlab_name" {
  type = string
  default = "Mohamed amine"
}

variable "gitlab_username" {
  type = string
  default = "amineadmin"
}

variable "gitlab_password" {
  type = string
  default = "amineadmin123"
}

variable "gitlab_email" {
  type = string
  default = "gitlab@aminos.create"
}
