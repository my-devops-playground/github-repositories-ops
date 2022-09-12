resource "github_branch_protection" "branch_protection" {
  repository_id = data.github_repository.repository.node_id
  pattern       = local.branch_protection.branch

  required_pull_request_reviews {
    require_code_owner_reviews      = local.branch_protection.pull_requests.require_code_owner_reviews
    required_approving_review_count = local.branch_protection.pull_requests.require_review_count
  }
}