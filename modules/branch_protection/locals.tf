locals {
  repository = var.repository

  branch_protection = {
    branch = var.branch
    pull_requests = {
      codeowners                = var.codeowners
      codeowners_commit_message = var.codeowners_commit_message
      codeowners_commit_author  = var.codeowners_commit_author
      codeowners_overwrite      = var.codeowners_overwrite
      codeowners_file_path      = ".github/CODEOWNER"
      require_review_count      = var.review_count
    }
  }

}