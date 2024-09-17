terraform {
  required_version = "~> 1.4.6"

  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "17.3.1"
    }
  }

  backend "s3" {
    bucket         = "state-terraform-s3"
    key            = "goapp"
    endpoint       = "http://minio.minio:9000"
    access_key     = "jZZdiItDzCQgnhDWfbv6"
    secret_key     = "GQX0irqh4lExTlEGHH9KnAG8qTYbAyVVn3jI9XeL"
    region         = "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
provider "gitlab" {
  base_url = "https://gitlab.dev.com:32525/"
  token    = "glpat-Ky7AL3kxFE2s-ahdsyRF"
  insecure = "true"
}
