terraform {
  required_version = "~> 1.4.6"

  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.7.1"
    }
  }

  backend "s3" {
    bucket         = "state-terraform-s3"
    endpoint       = "http://minio.minio:9000"
    access_key     = "console"
    secret_key     = "console123"
    region         = "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
provider "gitlab" {
  base_url = "https://gitlab.example.com:32525/"
  token    = "glpat-56UAHhytbakhqvzFor9B"
  insecure = "true"
}
