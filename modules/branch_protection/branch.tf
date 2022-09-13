resource "github_repository_file" "codeowners_file_upload" {
  repository          = data.github_repository.repository.name
  branch              = local.branch_protection.branch
  file                = local.branch_protection.pull_requests.codeowners.file_path
  commit_message      = local.branch_protection.pull_requests.codeowners_commit_message
  commit_author       = local.branch_protection.pull_requests.codeowners_commit_author
  overwrite_on_create = local.branch_protection.pull_requests.codeowners_overwrite

  content = templatefile("${path.module}/CODEOWNERS", {
    codeowners = local.branch_protection.pull_requests.codeowners
  })
}

resource "github_branch_protection" "branch_protection" {
  repository_id = data.github_repository.repository.node_id
  pattern       = local.branch_protection.branch

  required_pull_request_reviews {
    require_code_owner_reviews      = length(local.branch_protection.pull_requests.codeowners) > 0
    required_approving_review_count = local.branch_protection.pull_requests.require_review_count
  }
}