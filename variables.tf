variable "s3_bucket" {
  type = string
  default = "state-terraform-s3"
}

variable "s3_endpoint" {
  type = string
  default = "http://minio.minio:9000"
}
variable "folder_path" {
  type        = string
  description = "Path to the folder with the files to commit"
  default     = "./initrepo"  # Adjust this to your folder
}

variable "s3_access_key" {
  type = string
  default = "jZZdiItDzCQgnhDWfbv6"
}

variable "s3_secret_key" {
  type = string
  default = "GQX0irqh4lExTlEGHH9KnAG8qTYbAyVVn3jI9XeL"
}

variable "gitlab_base_url" {
  type = string
  default = "https://gitlab.dev.com:32525/"
}

variable "gitlab_token" {
  type = string
  default = "glpat-Ky7AL3kxFE2s-ahdsyRF"
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
