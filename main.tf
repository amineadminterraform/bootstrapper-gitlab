resource "gitlab_user" "first_user" {
  name             = var.gitlab_name
  username         = var.gitlab_username
  password         = var.gitlab_password
  email            = var.gitlab_email
  is_admin         = true
  projects_limit   = 4
  can_create_group = true
  is_external      = true
  reset_password   = false
}

