resource "github_branch_protection" "branch_protection" {
  for_each               = data.github_repository.repositories
  repository_id          = each.value.node_id
  pattern                = "master"
  require_signed_commits = true

  required_pull_request_reviews {
    require_code_owner_reviews      = true
    required_approving_review_count = 0
  }
}