variable "gitlab_name" {
  description = "The name of the GitLab user"
  type        = string
}

variable "gitlab_username" {
  description = "The username for the GitLab user"
  type        = string
}

variable "gitlab_password" {
  description = "The password for the GitLab user"
  type        = string
}

variable "gitlab_email" {
  description = "The email of the GitLab user"
  type        = string
}
variable "s3_bucket" {
  description = "The S3 bucket for the Terraform state"
  type        = string
}

variable "s3_endpoint" {
  description = "The endpoint for the S3 service"
  type        = string
}

variable "s3_access_key" {
  description = "The access key for S3"
  type        = string
}

variable "s3_secret_key" {
  description = "The secret key for S3"
  type        = string
}

variable "gitlab_base_url" {
  description = "The base URL for GitLab"
  type        = string
}

variable "gitlab_token" {
  description = "The personal access token for GitLab"
  type        = string
}


