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
resource "gitlab_project" "first_project" {
  name       = "first_project"
  visibility_level = "public"
  
}
resource "gitlab_branch" "main_branch" {   
  project = gitlab_project.first_project.id
  name    = "mainwork"          # Use 'name' instead of 'branch'
  ref     = "main"       # Specify the branch to create 'main' from, usually 'master'
  depends_on = [gitlab_project.first_project]  # Ensure this depends on the project creation
}                                                                                           
resource "null_resource" "git_commit_files" {
  depends_on = [gitlab_project.first_project, gitlab_branch.main_branch]

  provisioner "local-exec" {
    command = <<EOT
    # Prepare the repository URL
    repo_url="https://gitlab.dev.com:32525/api/v4/projects/${gitlab_project.first_project.id}/repository/commits"

    echo "Repository URL: $repo_url"

    # Iterate over files and commit them
    for file in $(find ${var.folder_path} -type f); do
      file_path=$(echo $file | sed "s|${var.folder_path}/||")
      echo "Processing $file_path"

      # Read file content
      content=$(cat $file | tr -d '\n')

      # Send the commit request
      response=$(curl --insecure --request POST \
        --header "PRIVATE-TOKEN: ${var.gitlab_token}" \
        --header "Content-Type: application/json" \
        --data '{
          "branch": "'${gitlab_branch.main_branch.name}'",
          "commit_message": "Committing '"$file_path"'",
          "actions": [
            {
              "action": "create",
              "file_path": "'$file_path'",
              "content": "'$content'"
            }
          ]
        }' \
        $repo_url)

      echo "GitLab API Response for $file_path:"
      echo "$response"

      # Check for errors in the response
      if [[ "$response" == *"422"* ]]; then
        echo "Error: The change you requested was rejected. Please check the data and try again."
        exit 1
      fi
    done
    EOT
  }
}
