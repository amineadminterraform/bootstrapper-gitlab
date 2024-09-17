curl --insecure --request POST \
     --header "PRIVATE-TOKEN: glpat-Ky7AL3kxFE2s-ahdsyRF" \
     --header "Content-Type: application/json" \
     --data '{
       "branch": "main",
       "commit_message": "Test commit",
       "actions": [
         {
           "action": "create",
           "file_path": "test.txt",
           "content": "Hello World"
         }
       ]
     }' \
     https://gitlab.dev.com:32525/api/v4/projects/10/repository/commits
