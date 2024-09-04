terraform {
  required_version = "~> 1.4.6"

  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.7.1"
    }
  }

  backend "s3" {
    bucket         = var.s3_bucket
    endpoint       = var.s3_endpoint
    access_key     = var.s3_access_key
    secret_key     = var.s3_secret_key
    region         = "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}

provider "gitlab" {
  base_url = var.gitlab_base_url
  token    = var.gitlab_token
  insecure = "true"
}
